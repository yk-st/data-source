// ユーザー作成は admin データベースで行う

db.createUser({
    user: "action", 
    pwd: "pass123", 
    roles: [
        {role: "readWrite", db: "user_data"}
    ]
});

// user_data データベース
const dbName = 'user_data';
db = db.getSiblingDB(dbName);

db.createCollection('test', { capped: false });

db.createCollection('user_ctx', {
    validator: {
        $jsonSchema: {
            bsonType: 'object',
            required: ['user_id', 'rainy_day_coupon_eligible'],
            properties: {
                'user_id': {
                    bsonType: 'long',
                    description: 'must be a 64-bit integer and is required'
                },
                'rainy_day_coupon_eligible': {
                    bsonType: 'bool',
                    description: 'must be a boolean and is required'
                }
            }
        }
    }
});

// user_sessions_rt コレクションを作成（TTL付き）
db.createCollection('user_sessions_rt', {
    validator: {
        $jsonSchema: {
            bsonType: 'object',
            required: ['user_id', 'session_start', 'session_end'],
            properties: {
                '_id': {
                    bsonType: 'string',
                    description: 'must be a string and is required'
                },
                'user_id': {
                    bsonType: 'int',
                    description: 'must be an integer and is required'
                },
                'session_start': {
                    bsonType: 'date',
                    description: 'must be a date and is required'
                },
                'session_end': {
                    bsonType: 'date',
                    description: 'must be a date and is required'
                },
                'order_count': {
                    bsonType: 'long',
                    description: 'must be a long'
                },
                'total_purchase_amount': {
                    bsonType: 'double',
                    description: 'must be a double'
                },
                'max_order_amount': {
                    bsonType: 'double',
                    description: 'must be a double'
                }
            }
        }
    }
});

// TTLインデックスを作成（1時間で自動削除）
db.user_sessions_rt.createIndex(
    { session_end: 1 },
    { 
        expireAfterSeconds: 3600,  // 60*60 = 1時間
        name: "ttl_session_end"
    }
);

// 検索用のインデックスも作成
db.user_sessions_rt.createIndex(
    { "user_id": 1, "session_start": -1 },
    { name: "idx_user_session" }
);

// 複合ユニークインデックス（重複防止）
db.user_sessions_rt.createIndex(
    { "user_id": 1, "session_start": 1 },
    { 
        unique: true,
        name: "idx_unique_user_session"
    }
);

print("realtime_db.user_sessions_rt collection created with TTL index (1 hour expiration)");

// サンプルデータ挿入（テスト用）
db.user_sessions_rt.insertOne({
    _id: '98-20250626044700',
    'user_id': 98,
    session_start: new Date("2025-06-26T04:47:00.000Z"),
    session_end: new Date("2025-06-26T05:47:00.000Z"),
    'order_count': NumberLong("41"),
    'total_purchase_amount': 78090.63999999999,
    'max_order_amount': 4467.98
});

print("Sample data inserted into user_sessions_rt");
