CREATE TABLE "orders" (
  "id" VARCHAR(255) PRIMARY KEY,
  "user_id" INTEGER,
  "product_id" INTEGER,
  "subtotal_usd" NUMERIC,
  "tax_usd" NUMERIC,
  "total_usd" NUMERIC,
  "quantity" INTEGER,
  "flag" INTEGER,
  "creation_date" TIMESTAMP,
  "parent_id" BIGINT DEFAULT NULL
);


INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('1', 77, 72, 11.29, 1.13, 12.42, 1, 1, '2024-11-19 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('2', 9, 83, 65.96, 6.6, 72.56, 2, 1, '2025-04-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('3', 70, 67, 185.68, 18.57, 204.25, 2, 1, '2025-04-29 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('4', 40, 17, 46.16, 4.62, 50.78, 2, 1, '2024-10-13 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('5', 52, 88, 82.71, 8.27, 90.98, 1, 1, '2024-08-23 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('6', 23, 86, 282.15, 28.22, 310.37, 5, 1, '2025-02-17 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('7', 2, 72, 45.16, 4.52, 49.68, 4, 1, '2024-09-08 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('8', 17, 85, 294.84, 29.48, 324.32, 4, 1, '2024-09-06 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('9', 67, 76, 215.55, 21.56, 237.11, 5, 1, '2025-01-16 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('10', 75, 54, 71.12, 7.11, 78.23, 4, 1, '2025-04-26 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('11', 71, 2, 13.91, 1.39, 15.3, 1, 1, '2025-04-30 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('12', 91, 14, 43.47, 4.35, 47.82, 3, 1, '2024-07-30 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('13', 59, 55, 209.08, 20.91, 229.99, 4, 1, '2025-01-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('14', 84, 2, 69.55, 6.96, 76.51, 5, 1, '2025-04-21 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('15', 23, 9, 194.49, 19.45, 213.94, 3, 1, '2025-01-22 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('16', 93, 7, 43.32, 4.33, 47.65, 3, 1, '2024-10-17 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('17', 10, 3, 24.89, 2.49, 27.38, 1, 1, '2024-11-28 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('18', 7, 99, 390.9, 39.09, 429.99, 5, 1, '2024-11-07 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('19', 86, 26, 213.12, 21.31, 234.43, 3, 1, '2024-12-23 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('20', 5, 55, 52.27, 5.23, 57.5, 1, 1, '2025-05-01 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('21', 76, 97, 135.54, 13.55, 149.09, 2, 1, '2024-05-23 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('22', 44, 97, 271.08, 27.11, 298.19, 4, 1, '2024-05-18 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('23', 84, 55, 156.81, 15.68, 172.49, 3, 1, '2025-03-26 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('24', 46, 60, 95.74, 9.57, 105.31, 2, 1, '2025-04-25 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('25', 23, 24, 205.29, 20.53, 225.82, 3, 1, '2025-03-02 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('26', 24, 51, 441.0, 44.1, 485.1, 5, 1, '2024-06-08 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('27', 97, 70, 31.74, 3.17, 34.91, 2, 1, '2024-09-19 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('28', 90, 64, 368.85, 36.89, 405.74, 5, 1, '2024-10-09 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('29', 89, 1, 53.83, 5.38, 59.21, 1, 1, '2025-01-19 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('30', 24, 15, 88.51, 8.85, 97.36, 1, 1, '2025-04-01 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('31', 54, 24, 342.15, 34.21, 376.36, 5, 1, '2024-05-24 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('32', 1, 78, 316.36, 31.64, 348.0, 4, 1, '2025-03-10 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('33', 96, 74, 53.13, 5.31, 58.44, 1, 1, '2025-03-09 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('34', 56, 2, 13.91, 1.39, 15.3, 1, 1, '2025-04-06 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('35', 38, 84, 97.15, 9.72, 106.87, 5, 1, '2024-07-29 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('36', 6, 71, 86.8, 8.68, 95.48, 5, 1, '2024-11-13 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('37', 62, 82, 299.55, 29.96, 329.51, 5, 1, '2024-08-10 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('38', 37, 81, 76.67, 7.67, 84.34, 1, 1, '2024-06-18 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('39', 47, 42, 67.67, 6.77, 74.44, 1, 1, '2025-01-11 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('40', 23, 40, 61.94, 6.19, 68.13, 1, 1, '2024-10-10 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('41', 44, 99, 390.9, 39.09, 429.99, 5, 1, '2025-04-25 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('42', 36, 94, 492.0, 49.2, 541.2, 5, 1, '2024-06-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('43', 56, 39, 111.28, 11.13, 122.41, 4, 1, '2024-09-11 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('44', 56, 64, 73.77, 7.38, 81.15, 1, 1, '2024-05-27 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('45', 39, 24, 68.43, 6.84, 75.27, 1, 1, '2024-06-06 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('46', 62, 75, 262.8, 26.28, 289.08, 5, 1, '2024-12-13 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('47', 28, 52, 67.8, 6.78, 74.58, 4, 1, '2025-03-06 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('48', 75, 30, 95.2, 9.52, 104.72, 1, 1, '2024-09-27 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('49', 50, 17, 46.16, 4.62, 50.78, 2, 1, '2024-05-25 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('50', 80, 44, 74.67, 7.47, 82.14, 1, 1, '2024-05-31 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('51', 54, 18, 79.02, 7.9, 86.92, 1, 1, '2025-04-11 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('52', 37, 87, 32.76, 3.28, 36.04, 2, 1, '2024-10-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('53', 17, 18, 237.06, 23.71, 260.77, 3, 1, '2025-03-31 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('54', 66, 75, 52.56, 5.26, 57.82, 1, 1, '2024-12-16 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('55', 96, 86, 169.29, 16.93, 186.22, 3, 1, '2024-12-17 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('56', 2, 17, 115.4, 11.54, 126.94, 5, 1, '2024-07-18 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('57', 37, 69, 49.88, 4.99, 54.87, 1, 1, '2025-01-31 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('58', 12, 52, 67.8, 6.78, 74.58, 4, 1, '2024-08-13 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('59', 66, 2, 69.55, 6.96, 76.51, 5, 1, '2024-08-21 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('60', 25, 41, 21.42, 2.14, 23.56, 2, 1, '2024-11-12 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('61', 6, 78, 237.27, 23.73, 261.0, 3, 1, '2024-09-19 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('62', 68, 75, 157.68, 15.77, 173.45, 3, 1, '2025-02-01 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('63', 54, 49, 164.97, 16.5, 181.47, 3, 1, '2024-08-02 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('64', 68, 9, 324.15, 32.42, 356.57, 5, 1, '2024-06-10 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('65', 33, 20, 59.34, 5.93, 65.27, 1, 1, '2025-03-10 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('66', 5, 66, 47.52, 4.75, 52.27, 4, 1, '2024-10-26 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('67', 2, 36, 282.95, 28.3, 311.25, 5, 1, '2024-08-21 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('68', 39, 14, 57.96, 5.8, 63.76, 4, 1, '2025-01-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('69', 38, 58, 135.15, 13.52, 148.67, 3, 1, '2024-08-25 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('70', 52, 53, 138.45, 13.84, 152.29, 3, 1, '2025-04-21 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('71', 36, 54, 88.9, 8.89, 97.79, 5, 1, '2024-11-20 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('72', 8, 84, 38.86, 3.89, 42.75, 2, 1, '2025-04-26 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('73', 24, 80, 248.82, 24.88, 273.7, 3, 1, '2024-07-16 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('74', 90, 68, 225.24, 22.52, 247.76, 4, 1, '2024-12-22 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('75', 97, 85, 368.55, 36.86, 405.41, 5, 1, '2025-02-19 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('76', 54, 70, 15.87, 1.59, 17.46, 1, 1, '2024-06-05 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('77', 32, 72, 22.58, 2.26, 24.84, 2, 1, '2024-12-07 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('78', 42, 57, 141.36, 14.14, 155.5, 3, 1, '2024-07-29 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('79', 13, 33, 409.65, 40.96, 450.61, 5, 1, '2024-12-07 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('80', 53, 44, 298.68, 29.87, 328.55, 4, 1, '2024-06-28 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('81', 29, 47, 228.0, 22.8, 250.8, 4, 1, '2024-07-31 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('82', 25, 64, 147.54, 14.75, 162.29, 2, 1, '2024-12-06 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('83', 15, 55, 52.27, 5.23, 57.5, 1, 1, '2024-12-30 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('84', 66, 14, 72.45, 7.25, 79.7, 5, 1, '2024-06-07 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('85', 95, 44, 298.68, 29.87, 328.55, 4, 1, '2024-10-22 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('86', 67, 19, 51.48, 5.15, 56.63, 1, 1, '2024-05-25 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('87', 53, 86, 56.43, 5.64, 62.07, 1, 1, '2024-12-21 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('88', 17, 62, 77.0, 7.7, 84.7, 4, 1, '2024-05-04 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('89', 60, 67, 371.36, 37.14, 408.5, 4, 1, '2025-01-01 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('90', 87, 83, 131.92, 13.19, 145.11, 4, 1, '2024-10-04 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('91', 72, 69, 99.76, 9.98, 109.74, 2, 1, '2025-01-03 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('92', 22, 74, 159.39, 15.94, 175.33, 3, 1, '2025-04-12 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('93', 70, 64, 147.54, 14.75, 162.29, 2, 1, '2024-06-02 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('94', 92, 59, 96.68, 9.67, 106.35, 4, 1, '2024-12-04 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('95', 6, 72, 56.45, 5.64, 62.09, 5, 1, '2025-04-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('96', 70, 39, 139.1, 13.91, 153.01, 5, 1, '2024-05-29 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('97', 61, 92, 26.7, 2.67, 29.37, 1, 1, '2024-05-17 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('98', 46, 73, 1141.92, 114.19, 1257.11, 24, 2, '2025-03-04 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('99', 95, 68, 1689.3, 168.93, 1857.23, 30, 2, '2024-06-23 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('100', 1099, 81, 306.68, 30.67, 337.35, 4, 1, '2024-12-28 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('106', 77, 72, 11.29, 1.13, 12.42, 1, 2, '2025-05-02 06:00:00Z', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('102', 9, 83, 65.96, 6.6, 7256.0, 2, 2, '2025-04-14 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('103', 70, 67, NULL, 18.57, 204.25, 2, 2, '2025-04-29 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('104', 40, 17, 46.16, NULL, 50.78, 2, 2, '2024-10-13 07:03:21', NULL);
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('107', 77, 72, -11.29, -1.13, -12.42, -1, 1, '2024-11-19 08:03:21', '1');
INSERT INTO "orders" ("id", "user_id", "product_id", "subtotal_usd", "tax_usd", "total_usd", "quantity", "flag", "creation_date", "parent_id") VALUES ('108', 52, 74, 159.39, 15.94, 175.33, 3, 1, '2024-08-23 08:03:21', NULL);
