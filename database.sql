/*
 Navicat Premium Data Transfer

 Source Server         : XAMPP
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : shopclone3

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 07/05/2021 20:53:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for backups
-- ----------------------------
DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backups
-- ----------------------------
INSERT INTO `backups` VALUES (4, 'test', '1614982097', '2021-03-06 05:08:17');

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `chi_nhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ghichu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (5, '106868238271', 'Vietinbank Auto', 'NGUYEN TAN THANH', 'Tây Ninh', 'https://i.imgur.com/5lONuYM.png', 'Vui lòng nhập đúng nội dung khi chuyển khoản.\r\n');
INSERT INTO `bank` VALUES (7, '10002325589898', 'Vietcombank Auto', 'NGUYEN TAN THANH', 'Tay Ninh', 'https://i.imgur.com/9wOUZTv.png', 'Nhập đúng nội dung, cộng tiền ngay');

-- ----------------------------
-- Table structure for bank_auto
-- ----------------------------
DROP TABLE IF EXISTS `bank_auto`;
CREATE TABLE `bank_auto`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
  `amount` int NULL DEFAULT 0,
  `cusum_balance` int NULL DEFAULT 0,
  `time` datetime(0) NULL DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bank_auto
-- ----------------------------
INSERT INTO `bank_auto` VALUES (2, '1659-5989', 'naptien1', 100000, 0, '2021-04-16 03:47:17', '2', 'admin');
INSERT INTO `bank_auto` VALUES (3, '1659-5999', 'naptien1', 100000, 0, '2021-04-16 03:47:17', '9898', 'admin');
INSERT INTO `bank_auto` VALUES (4, '1659-5949', 'naptien1', 100000, 0, '2021-04-16 03:47:17', '9898', 'admin');

-- ----------------------------
-- Table structure for cards
-- ----------------------------
DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `loaithe` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menhgia` int NOT NULL,
  `thucnhan` int NULL DEFAULT 0,
  `seri` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pin` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createdate` datetime(0) NOT NULL,
  `status` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cards
-- ----------------------------
INSERT INTO `cards` VALUES (1, 'w0znjGcPi3JHCqaKb8uNo2tYxWy17Mhm', 'admin', 'Viettel', 50000, 35000, '10002321233122', '522310413671234', '2021-01-30 03:54:22', 'xuly', '');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (4, 'VIA', 'SHOW', 'assets/storage/images/category_R36HMAODF14C.png');
INSERT INTO `category` VALUES (5, 'BM', 'SHOW', 'assets/storage/images/category_1KCXND23ZUY9.png');
INSERT INTO `category` VALUES (6, 'CLONE', 'SHOW', 'assets/storage/images/category_8GKUR69W7HJS.png');
INSERT INTO `category` VALUES (7, 'GMAIL', 'SHOW', 'assets/storage/images/category_1NS5B048Q2FU.png');
INSERT INTO `category` VALUES (8, 'TRAODOISUB', 'SHOW', 'assets/storage/images/category_EDFNRY360ZKP.png');

-- ----------------------------
-- Table structure for chuyentien
-- ----------------------------
DROP TABLE IF EXISTS `chuyentien`;
CREATE TABLE `chuyentien`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nguoinhan` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `nguoichuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `sotien` int NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `lydo` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chuyentien
-- ----------------------------

-- ----------------------------
-- Table structure for config_momo
-- ----------------------------
DROP TABLE IF EXISTS `config_momo`;
CREATE TABLE `config_momo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_momo
-- ----------------------------

-- ----------------------------
-- Table structure for dichvu
-- ----------------------------
DROP TABLE IF EXISTS `dichvu`;
CREATE TABLE `dichvu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `dichvu` blob NULL,
  `gia` int NULL DEFAULT NULL,
  `loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `mota` longblob NULL,
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `capnhat` datetime(0) NULL DEFAULT NULL,
  `mua_toi_da` int NULL DEFAULT NULL,
  `quocgia` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `mua_toi_thieu` int NULL DEFAULT 1,
  `luuy` longblob NULL,
  `stt` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dichvu
-- ----------------------------
INSERT INTO `dichvu` VALUES (8, 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 500, 'GMAIL', '2021-02-18 02:30:08', 0x74657374, 'SHOW', '2021-04-07 17:12:54', 100, 'vn', 1, NULL, 0);
INSERT INTO `dichvu` VALUES (11, 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 80000, 'VIA', '2021-04-06 10:15:36', 0x46756C6C206261636B7570, 'SHOW', NULL, 100, 'ph', NULL, NULL, 0);
INSERT INTO `dichvu` VALUES (12, 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 5000, 'CLONE', '2021-04-06 10:17:28', '', 'SHOW', NULL, 100, 'vn', NULL, NULL, 0);
INSERT INTO `dichvu` VALUES (13, 'admin', 0x436C6F6E65205669E1BB877420584D4454, 10000, 'CLONE', '2021-04-06 10:18:30', '', 'SHOW', NULL, 100, 'vn', NULL, NULL, 0);
INSERT INTO `dichvu` VALUES (14, 'admin', 0x424D20333530204E6577, 40000, 'BM', '2021-04-06 10:19:47', 0x5472E1BAAF6E672C20C490C3A320566572794D61696C2C204C696D69742035302D3335302C2052616E646F6D2043C3B32050616765, 'SHOW', '2021-04-06 10:19:52', 100, '', NULL, NULL, 0);
INSERT INTO `dichvu` VALUES (15, 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 20000, 'TRAODOISUB', '2021-04-06 17:07:27', 0x4B68C3B46E672063E1BAA5752068C3AC6E68, 'SHOW', '2021-05-07 20:42:51', 1000, 'vn', 1, '', 1);

-- ----------------------------
-- Table structure for dongtien
-- ----------------------------
DROP TABLE IF EXISTS `dongtien`;
CREATE TABLE `dongtien`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sotientruoc` int NULL DEFAULT NULL,
  `sotienthaydoi` int NULL DEFAULT NULL,
  `sotiensau` int NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dongtien
-- ----------------------------

-- ----------------------------
-- Table structure for giftcode
-- ----------------------------
DROP TABLE IF EXISTS `giftcode`;
CREATE TABLE `giftcode`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `sotien` int NOT NULL DEFAULT 0,
  `ghichu` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `capnhat` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of giftcode
-- ----------------------------

-- ----------------------------
-- Table structure for lang
-- ----------------------------
DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `vn` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `en` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lang
-- ----------------------------
INSERT INTO `lang` VALUES (1, 'Đăng Nhập', 'Login');
INSERT INTO `lang` VALUES (2, 'Đăng Ký', 'Register');
INSERT INTO `lang` VALUES (3, 'Thông Tin', 'Profile');
INSERT INTO `lang` VALUES (4, 'Đăng Nhập hoặc Đăng Ký', 'Login or Register');
INSERT INTO `lang` VALUES (5, 'Tên đăng nhập', 'Username');
INSERT INTO `lang` VALUES (6, 'Mật khẩu', 'Password');
INSERT INTO `lang` VALUES (7, 'Nhập tên đăng nhập', 'Enter your username');
INSERT INTO `lang` VALUES (8, 'Nhập mật khẩu', 'Enter password');
INSERT INTO `lang` VALUES (9, 'Đang xử lý', 'Processing');
INSERT INTO `lang` VALUES (10, 'Vui lòng nhập tên đăng nhập', 'Please enter your username');
INSERT INTO `lang` VALUES (11, 'Vui lòng nhập mật khẩu', 'Please enter a password');
INSERT INTO `lang` VALUES (12, 'Tên đăng nhập không tồn tại', 'Username does not exist');
INSERT INTO `lang` VALUES (13, 'Mật khẩu đăng nhập không chính xác', 'Login password is incorrect');
INSERT INTO `lang` VALUES (14, 'Tài khoản đã bị khóa', 'The account is locked');
INSERT INTO `lang` VALUES (15, 'Vui lòng nhập định dạng tài khoản hợp lệ', 'Please enter a valid account format');
INSERT INTO `lang` VALUES (16, 'Tài khoản phải từ 5 đến 64 ký tự', 'Account must be between 5 and 64 characters');
INSERT INTO `lang` VALUES (17, 'Tên đăng nhập đã tồn tại!', 'Username available!');
INSERT INTO `lang` VALUES (18, 'Vui lòng đặt mật khẩu trên 3 ký tự', 'Please set a password above 3 characters');
INSERT INTO `lang` VALUES (19, 'Bạn đã đạt giới hạn tạo tài khoản', 'You have reached your account creation limit');
INSERT INTO `lang` VALUES (20, 'Tạo tài khoản thành công', 'Account successfully created');
INSERT INTO `lang` VALUES (21, 'Vui lòng kiểm tra cấu hình cơ sở dữ liệu', 'Please check the database configuration');
INSERT INTO `lang` VALUES (22, 'Vui lòng nhập địa chỉ email', 'Please enter your email address');
INSERT INTO `lang` VALUES (23, 'Vui lòng nhập địa chỉ email hợp lệ', 'Please enter a valid email address');
INSERT INTO `lang` VALUES (24, 'Địa chỉ email không tồn tại trong hệ thống', 'Email address does not exist in the system');
INSERT INTO `lang` VALUES (25, 'XÁC NHẬN KHÔI PHỤC MẬT KHẨU', 'CONFIRMED PASSWORD RECOVERY');
INSERT INTO `lang` VALUES (26, 'Có ai đó vừa yêu cầu khôi phục lại mật khẩu bằng Email này, nếu là bạn vui lòng nhập mã xác minh phía dưới để xác minh tài khoản', 'Someone has just requested to recover password by this email, if you are, please enter the verification code below to verify the account.');
INSERT INTO `lang` VALUES (27, 'Chúng tôi đã gửi mã xác minh vào địa chỉ Email của bạn', 'We have sent a verification code to your Email address');
INSERT INTO `lang` VALUES (28, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password');
INSERT INTO `lang` VALUES (29, 'Vui lòng xác minh lại mật khẩu', 'Please verify your password');
INSERT INTO `lang` VALUES (30, 'Tổng nạp', 'Total Balance');
INSERT INTO `lang` VALUES (31, 'Số dư hiện tại', 'Credit Available');
INSERT INTO `lang` VALUES (32, 'Số tiền đã sử dụng', 'Amount used');
INSERT INTO `lang` VALUES (33, 'Nạp tiền ngay', 'Pay Now');
INSERT INTO `lang` VALUES (34, 'Lịch sử dòng tiền', 'Cash flow history');
INSERT INTO `lang` VALUES (35, 'THỐNG KÊ CHI TIẾT', 'DETAILED STATISTICS');
INSERT INTO `lang` VALUES (36, 'Lịch Sử Giao Dịch', 'Transaction history');
INSERT INTO `lang` VALUES (37, 'Nạp Tiền', 'Recharge');
INSERT INTO `lang` VALUES (38, 'THÔNG TIN', 'INFORMATION');
INSERT INTO `lang` VALUES (39, 'Đang hoạt động', 'Online');
INSERT INTO `lang` VALUES (40, 'Trạng Thái', 'Status');
INSERT INTO `lang` VALUES (41, 'Giảm', 'Discount');
INSERT INTO `lang` VALUES (42, 'GIAO DỊCH GẦN ĐÂY', 'RECENT TRANSACTIONS');
INSERT INTO `lang` VALUES (43, 'Trang Chủ', 'Home');
INSERT INTO `lang` VALUES (45, 'Số lượng', 'Amount');
INSERT INTO `lang` VALUES (46, 'Thanh toán', 'Pay');
INSERT INTO `lang` VALUES (47, 'XEM NGAY', 'VIEW NOW');
INSERT INTO `lang` VALUES (48, 'TẢI VỀ', 'DOWNLOAD');
INSERT INTO `lang` VALUES (49, 'CHỌN ĐỊNH DẠNG TẢI VỀ', 'CHOOSE DOWNLOAD FORMAT');
INSERT INTO `lang` VALUES (50, 'CHI TIẾT ĐƠN HÀNG', 'ORDER DETAILS');
INSERT INTO `lang` VALUES (51, 'Thời Gian', 'Time');
INSERT INTO `lang` VALUES (52, 'Loại', 'Type');
INSERT INTO `lang` VALUES (53, 'Mã Giao Dich', 'Transaction id');
INSERT INTO `lang` VALUES (54, 'LƯU Ý', 'Note');
INSERT INTO `lang` VALUES (55, 'Sao chép', 'Copy');
INSERT INTO `lang` VALUES (56, 'Tải Backup', 'Download Backup');
INSERT INTO `lang` VALUES (57, 'Dòng tiền', 'Cash flow');
INSERT INTO `lang` VALUES (58, 'Lịch sử nạp tiền', 'Deposit history');
INSERT INTO `lang` VALUES (59, 'Chủ tài khoản', 'Recipient\'s name');
INSERT INTO `lang` VALUES (60, 'Nội dung chuyển tiền', 'Money transfer content');
INSERT INTO `lang` VALUES (61, 'Số tài khoản', 'Payout account number');
INSERT INTO `lang` VALUES (62, 'Ngân hàng', 'Bank');
INSERT INTO `lang` VALUES (63, 'Đăng Xuất', 'Logout');
INSERT INTO `lang` VALUES (64, 'Thành viên', 'Member');
INSERT INTO `lang` VALUES (65, 'Đại lý', 'Agency');
INSERT INTO `lang` VALUES (66, 'Địa chỉ Email', 'Email address');
INSERT INTO `lang` VALUES (67, 'Số điện thoại', 'Number phone');
INSERT INTO `lang` VALUES (68, 'Họ và Tên', 'Full name');
INSERT INTO `lang` VALUES (69, 'Thời gian đăng ký', 'Registration period');
INSERT INTO `lang` VALUES (70, 'Mật khẩu mới', 'New password');
INSERT INTO `lang` VALUES (71, 'Nhập lại mật khẩu mới', 'Confirm  new password');
INSERT INTO `lang` VALUES (72, 'Thông tin được mã hóa khi đưa lên máy chủ của chúng tôi', 'Information is encrypted when posted on our servers');
INSERT INTO `lang` VALUES (73, 'LƯU THÔNG TIN', 'SAVE INFORMATION');
INSERT INTO `lang` VALUES (74, 'Đơn giá', 'Unit price');
INSERT INTO `lang` VALUES (75, 'Số tiền cần thanh toán', 'Amount to be paid');
INSERT INTO `lang` VALUES (76, 'Đóng', 'Close');
INSERT INTO `lang` VALUES (77, 'Tên sản phẩm', 'Product\'s name');
INSERT INTO `lang` VALUES (78, 'Hiện có', 'Available');
INSERT INTO `lang` VALUES (79, 'Thao tác', 'Control');
INSERT INTO `lang` VALUES (80, 'Lưu thành công', 'Save successfully');
INSERT INTO `lang` VALUES (81, 'Đang xử lý giao dịch', 'Processing the transaction');
INSERT INTO `lang` VALUES (82, 'Loại này đã hết hàng', 'This type is out of stock');
INSERT INTO `lang` VALUES (83, 'Mua Ngay', 'Buy Now');
INSERT INTO `lang` VALUES (84, 'Hết hàng', 'Out of stock');
INSERT INTO `lang` VALUES (85, 'Quốc gia', 'Countries');
INSERT INTO `lang` VALUES (86, 'Vui lòng đăng nhập để thực hiện giao dịch', 'Please log in to make a transaction');
INSERT INTO `lang` VALUES (87, 'Dịch vụ không hợp lệ', 'Invalid service');
INSERT INTO `lang` VALUES (88, 'Dịch vụ này không khả dụng', 'This service is not available');
INSERT INTO `lang` VALUES (89, 'Số lượng mua không phù hợp', 'Purchase quantity does not match');
INSERT INTO `lang` VALUES (90, 'Số lượng tối đa 1 lần là', 'The maximum number of times is');
INSERT INTO `lang` VALUES (91, 'Số lượng trong hệ thống không đủ', 'The quantity in the system is not enough');
INSERT INTO `lang` VALUES (92, 'Số dư không đủ vui lòng nạp thêm', 'Insufficient balance, please recharge');
INSERT INTO `lang` VALUES (93, 'Tài khoản của bạn đã bị chấm dứt vì sử dụng BUG', 'Your account has been terminated for using BUG');
INSERT INTO `lang` VALUES (94, 'Giao dịch thành công!', 'Successful transaction!');
INSERT INTO `lang` VALUES (95, 'Thất Bại', 'Error');
INSERT INTO `lang` VALUES (96, 'Thành Công', 'Success');
INSERT INTO `lang` VALUES (97, 'Cảnh Báo', 'Warning');
INSERT INTO `lang` VALUES (98, 'DANH SÁCH TÀI KHOẢN', 'LIST OF ACCOUNTS');
INSERT INTO `lang` VALUES (99, 'Chính sách', 'Policy');
INSERT INTO `lang` VALUES (100, 'LỊCH SỬ NẠP TIỀN', 'MONEY DEPOSIT HISTORY');
INSERT INTO `lang` VALUES (101, 'Công Cụ', 'Tool');
INSERT INTO `lang` VALUES (102, 'NẠP TIỀN', 'RECHARGE');
INSERT INTO `lang` VALUES (103, 'Số lượng tối thiểu', 'Minimum quantity');
INSERT INTO `lang` VALUES (104, 'Top Nạp Tiền', 'Deposit Rankings');
INSERT INTO `lang` VALUES (105, 'BẢNG XẾP HẠNG NẠP TIỀN', 'RANKING OF MONEY');
INSERT INTO `lang` VALUES (106, 'THÀNH VIÊN', 'MEMBER');
INSERT INTO `lang` VALUES (107, 'TỔNG TIỀN NẠP', 'TOTAL DEPOSIT');
INSERT INTO `lang` VALUES (108, 'XẾP HẠNG', 'RANK');
INSERT INTO `lang` VALUES (109, 'CÔNG CỤ LẤY MÃ 2FA', 'TOOL GET CODE 2FA');
INSERT INTO `lang` VALUES (110, 'Vui lòng nhập Secret Key', 'Please enter Secret Key');
INSERT INTO `lang` VALUES (111, 'ĐANG XỬ LÝ', 'PROCESSING');
INSERT INTO `lang` VALUES (112, 'CHÚNG TÔI CUNG CẤP', 'WE OFFER');
INSERT INTO `lang` VALUES (113, 'Có những tài khoản Facebook còn khá trẻ nếu bạn cần trong thời gian ngắn, trên trang web của chúng tôi', 'There are Facebook accounts, that are quite young if you need them for a short time, on our website');
INSERT INTO `lang` VALUES (114, 'TÀI KHOẢN ĐANG BÁN', 'ACCOUNT IS SELLING');
INSERT INTO `lang` VALUES (115, 'Công ty chúng tôi đã có một thời gian dài trên thị trường tài khoản xã hội số lượng lớn và tài khoản internet công cộng. Chúng tôi đang cung cấp cho khách hàng các tài khoản số lượng lớn an toàn trên tất cả các loại mạng và cổng thông tin công cộng', 'Our company has been for a while on the market of bulk social accounts and public internet recourses. We are offering our customers secure bulk accounts on all kinds of public networks and portals');
INSERT INTO `lang` VALUES (116, 'Xem thêm', 'Learn more');
INSERT INTO `lang` VALUES (117, 'Nhà cung cấp tài khoản marketing hàng đầu', 'Top marketing account provider');
INSERT INTO `lang` VALUES (118, 'Chúng tôi cung cấp những tài khoản mạng xã hội chất lượng nhất', 'We provide top quality social media accounts');
INSERT INTO `lang` VALUES (119, 'Sản phẩm', 'Product');
INSERT INTO `lang` VALUES (120, 'Trang chủ', 'Home');
INSERT INTO `lang` VALUES (121, 'Dịch vụ', 'Services');
INSERT INTO `lang` VALUES (122, 'Quên mật khẩu', 'Forgot password');
INSERT INTO `lang` VALUES (123, 'Nhập OTP', 'Enter OTP');
INSERT INTO `lang` VALUES (124, 'Nhập lại mật khẩu', 'Verify password');
INSERT INTO `lang` VALUES (125, 'Đổi mật khẩu', 'Change Password');
INSERT INTO `lang` VALUES (126, 'sản phẩm trong nhóm này', 'products in this group');
INSERT INTO `lang` VALUES (127, 'Đối tác của chúng tôi', 'Partner');
INSERT INTO `lang` VALUES (128, 'Điều khoản', 'Rules');
INSERT INTO `lang` VALUES (129, 'Dịch Vụ', 'Services');
INSERT INTO `lang` VALUES (130, 'Liên Hệ', 'Contact');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `createdate` datetime(0) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for momo
-- ----------------------------
DROP TABLE IF EXISTS `momo`;
CREATE TABLE `momo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` varchar(64) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NULL DEFAULT NULL,
  `tranId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NULL,
  `partnerId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NULL,
  `partnerName` text CHARACTER SET utf16 COLLATE utf16_vietnamese_ci NULL,
  `amount` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NULL DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT 'xuly',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of momo
-- ----------------------------
INSERT INTO `momo` VALUES (4, NULL, '11246744229', '0947838128', 'NGUYỄN TẤN THÀNH', '2222', 'cmsnt1', '2021-04-08 20:25:54', 'admin', 'xuly');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES (1, 'tenweb', 'CMSNT.CO');
INSERT INTO `options` VALUES (2, 'mota', 'Shop tài khoản tự động chất lượng nhất thị trường');
INSERT INTO `options` VALUES (3, 'tukhoa', 'shop clone, clone shop, mua clone, web bán clone giá rẻ, sellclone, clone gia re, clone viet, mua tai khoan, taikhoan fb, shop nick fb, via fb, shop via, via gia re');
INSERT INTO `options` VALUES (4, 'logo', 'https://i.imgur.com/ZeJ8zsO.png');
INSERT INTO `options` VALUES (5, 'email', '');
INSERT INTO `options` VALUES (6, 'pass_email', '');
INSERT INTO `options` VALUES (7, 'luuy_naptien', '<ul>\r\n	<li>Hệ thống xử lý 5s 1 thẻ.</li>\r\n	<li>Vui lòng gửi đúng mệnh giá, sai mệnh giá thực nhận mệnh giá bé nhất.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k, quý khách nạp 100k thực nhận 100k.</li>\r\n	<li>Ví dụ mệnh giá thực là 100k quý khách nạp 50k thực nhận 50k.</li>\r\n	<li>Mệnh giá 10k, 20k, 30k tính thêm 3% phí.</li>\r\n</ul>\r\n');
INSERT INTO `options` VALUES (10, 'luuy_napbank', 'test');
INSERT INTO `options` VALUES (11, 'noidung_naptien', 'CMSNT');
INSERT INTO `options` VALUES (12, 'thongbao', '<b> Thông báo cho khách hàng thay đổi trong Admin</b>');
INSERT INTO `options` VALUES (13, 'anhbia', 'https://i.imgur.com/EFq5tTX.png');
INSERT INTO `options` VALUES (14, 'favicon', 'https://i.imgur.com/61P2d1U.jpg');
INSERT INTO `options` VALUES (15, 'ck_daily', '10');
INSERT INTO `options` VALUES (16, 'doanhthu_daily', '11');
INSERT INTO `options` VALUES (17, 'baotri', 'ON');
INSERT INTO `options` VALUES (18, 'chinhsach', '<p>BẰNG VIỆC SỬ DỤNG CÁC DỊCH VỤ HOẶC MỞ MỘT TÀI KHOẢN, BẠN CHO BIẾT RẰNG BẠN CHẤP NHẬN, KHÔNG RÚT LẠI, CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY. NẾU BẠN KHÔNG ĐỒNG Ý VỚI CÁC ĐIỀU KHOẢN NÀY, VUI LÒNG KHÔNG SỬ DỤNG CÁC DỊCH VỤ CỦA CHÚNG TÔI HAY TRUY CẬP TRANG WEB. NẾU BẠN DƯỚI 18 TUỔI HOẶC \"ĐỘ TUỔI TRƯỞNG THÀNH\"PHÙ HỢP Ở NƠI BẠN SỐNG, BẠN PHẢI XIN PHÉP CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP ĐỂ MỞ MỘT TÀI KHOẢN VÀ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP PHẢI ĐỒNG Ý VỚI CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY. NẾU BẠN KHÔNG BIẾT BẠN CÓ THUỘC \"ĐỘ TUỔI TRƯỞNG THÀNH\" Ở NƠI BẠN SỐNG HAY KHÔNG, HOẶC KHÔNG HIỂU PHẦN NÀY, VUI LÒNG KHÔNG TẠO TÀI KHOẢN CHO ĐẾN KHI BẠN ĐÃ NHỜ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP CỦA BẠN GIÚP ĐỠ. NẾU BẠN LÀ CHA MẸ HOẶC NGƯỜI GIÁM HỘ HỢP PHÁP CỦA MỘT TRẺ VỊ THÀNH NIÊN MUỐN TẠO MỘT TÀI KHOẢN, BẠN PHẢI CHẤP NHẬN CÁC ĐIỀU KHOẢN DỊCH VỤ NÀY THAY MẶT CHO TRẺ VỊ THÀNH NIÊN ĐÓ VÀ BẠN SẼ CHỊU TRÁCH NHIỆM ĐỐI VỚI TẤT CẢ HOẠT ĐỘNG SỬ DỤNG TÀI KHOẢN HAY CÁC DỊCH VỤ, BAO GỒM CÁC GIAO DỊCH MUA HÀNG DO TRẺ VỊ THÀNH NIÊN THỰC HIỆN, CHO DÙ TÀI KHOẢN CỦA TRẺ VỊ THÀNH NIÊN ĐÓ ĐƯỢC MỞ VÀO LÚC NÀY HAY ĐƯỢC TẠO SAU NÀY VÀ CHO DÙ TRẺ VỊ THÀNH NIÊN CÓ ĐƯỢC BẠN GIÁM SÁT TRONG GIAO DỊCH MUA HÀNG ĐÓ HAY KHÔNG.</p>\r\n');
INSERT INTO `options` VALUES (19, 'api_bank', 'vuilongthayapi');
INSERT INTO `options` VALUES (20, 'api_momo', 'vuilongthayapi');
INSERT INTO `options` VALUES (21, 'theme', 'JoBest');
INSERT INTO `options` VALUES (22, 'api_card', 'vuilongthayapi');
INSERT INTO `options` VALUES (23, 'ck_card', '30');
INSERT INTO `options` VALUES (24, 'theme_color', '#0f0684');
INSERT INTO `options` VALUES (25, 'theme_home', '0');
INSERT INTO `options` VALUES (26, 'stt_giao_dich_gan_day', 'ON');
INSERT INTO `options` VALUES (27, 'status_demo', 'OFF');
INSERT INTO `options` VALUES (28, 'chinhsach_baohanh', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Chính sách dịch vụ CMSNT.CO</h2><div class=\"post-body\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(103, 103, 106); font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\"><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"> </h3><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách bảo hành</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"></p><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi hỗ trợ fix lỗi nếu lỗi do mã nguồn gây ra ví dụ như: code bug, code không xài được v.v</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi từ chối bảo hành trường hợp quý khách tự gây ra lỗi ví dụ như: code thêm 1 số chức năng xảy ra lỗi, edit giao diện xảy ra lỗi v.v.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Không hỗ trợ và bảo hành đối với trường hợp mua mã nguồn từ bên thứ 3 hoặc sử dụng mã nguồn được share v.v</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách hỗ trợ</h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi sẽ setup cho bạn lần đầu miễn phí khi bạn mua mã nguồn của chúng tôi, chúng tôi sẽ đưa code bạn lên Hosting và cài đặt mọi thứ, bạn chỉ cần đưa vào sử dụng nó.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Nếu bạn cần chúng tôi setup lại lần 2 để đưa lên Hosting khác chúng tôi sẽ lấy phí 300k 1 lần để tránh SPAM.</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"> Chính sách mua hàng</h3></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi chỉ chấp nhận thanh toán qua: ngân hàng nội địa, ví điện tử momo, thẻ siêu rẻ, card24h...</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Chúng tôi sẽ lấy phí khi thanh toán qua thẻ cào, tiền ảo...</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Mua mã nguồn vui lòng thanh toán trước 100%, thuê code theo yêu cầu vui lòng thanh toán trước 50%.</li></ul><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\">Chính sách cộng tác viên</h3></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><ul style=\"margin: 10px 0px; padding: 0px 0px 0px 20px; border: 0px; outline: 0px; vertical-align: baseline;\"><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Các CTV khi giới thiệu thành công khách hàng sử dụng dịch vụ của CMSNT sẽ được nhận 20% giá trị của giao dịch đó.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Nếu Sale A giới thiệu được 1 khách B mua mã nguồn AB với giá 1.000.000đ, bạn Sale A đó sẽ nhận được 20% của 1.000.000đ tức 200.000đ khi khách B hoàn thành quá trình thanh toán cho CMSNT.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Sau khi tìm kiếm thành công khách hàng, CTV đó vui lòng tạo nhóm liên hệ bao gồm Khách Hàng - CTV - CMSNT để cùng thực hiện trao đổi giao dịch sao cho minh bạch nhất.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">Thanh toán sẽ được về tay CTV sau khi khách hàng đó thanh toán đủ giá trị đơn hàng.</li><li style=\"margin: 5px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; list-style: inside disc;\">CTV chỉ áp dụng cho khách hàng từng sử dụng dịch vụ của CMSNT.</li></ul><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><br></div></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">Cảm ơn quý khách hàng tin dùng sản phẩm của CMSNT.CO, mãi là đối tác với nhau bạn nhé !</div></div>');
INSERT INTO `options` VALUES (29, 'sdt_momo', '0947838128');
INSERT INTO `options` VALUES (30, 'name_momo', 'NGUYEN TAN THANH');
INSERT INTO `options` VALUES (31, 'tk_tsr', 'xoatkmkneukhongxai');
INSERT INTO `options` VALUES (32, 'mk_tsr', 'xoatkmkneukhongxai');
INSERT INTO `options` VALUES (33, 'mk2_tsr', '');
INSERT INTO `options` VALUES (34, 'luuy_tsr', '<p>Nạp tiền qua thesieure.com cộng tiền ngay.</p><p>Chuyển tiền nhập đúng nội dung chuyển tiền sau đó COPY mã giao dịch tại THESIEURE.COM và nhập vào ô trên.</p>');
INSERT INTO `options` VALUES (36, 'fanpage', 'https://www.facebook.com/cmsntthanh/');
INSERT INTO `options` VALUES (43, 'stt_giaodichao', 'OFF');
INSERT INTO `options` VALUES (44, 'files', '');
INSERT INTO `options` VALUES (45, 'btnSaveOption', '');
INSERT INTO `options` VALUES (46, 'right_panel', 'ON');
INSERT INTO `options` VALUES (47, '', NULL);
INSERT INTO `options` VALUES (48, 'TypePassword', 'md5');
INSERT INTO `options` VALUES (49, 'contact', '<h2 class=\"page-title\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; font-size: 23px; font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Thông tin liên hệ thanh toán & hỗ trợ</h2><div class=\"post-body\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(103, 103, 106); font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"> <span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: x-large;\"> </span></p><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 1:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi qua <a href=\"https://zalo.me/0947838128\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: var(--link-color);\">Zalo</a> <b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">0947838128</b></span></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\"><br></span></span></div><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 2:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi qua Facebook cá nhân <a href=\"https://www.facebook.com/ntgtanetwork/\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: var(--link-color);\">https://www.facebook.com/ntgtanetwork/</a></span></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\"><br></span></span></div><h3 style=\"margin: 10px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; font-size: 20px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Cách 3:</span></span></h3><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-size: medium;\">Liên hệ chúng tôi trực tiếp qua <b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">LIVE CHAT</b> trên Website</span></span></div></div>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `seller` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `dichvu` blob NULL,
  `soluong` int NULL DEFAULT NULL,
  `sotien` int NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `id_dichvu` int NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 265 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (103, '670981', 'hocgioigioihoc', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 23, 1840000, '2021-04-12 00:10:49', 'VIA', NULL, '1618161049', '');
INSERT INTO `orders` VALUES (104, '930712', 'lominh123', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 22, 11000, '2021-04-12 00:13:49', 'GMAIL', NULL, '1618161229', '');
INSERT INTO `orders` VALUES (105, '439260', 'phat1412', 'admin', 0x56696120564E205369C3AA752043E1BB9520323030382D32303137, 9, 585000, '2021-04-12 00:14:39', 'VIA', NULL, '1618161279', '');
INSERT INTO `orders` VALUES (106, '72D691', 'hocgioigioihoc', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 28, 14000, '2021-04-12 00:15:09', 'GMAIL', NULL, '1618161309', '');
INSERT INTO `orders` VALUES (107, '631785', 'hocgioigioihoc', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 3, 1500, '2021-04-12 00:18:14', 'GMAIL', NULL, '1618161494', '');
INSERT INTO `orders` VALUES (108, 'D81032', '065498989', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 18, 9000, '2021-04-12 00:25:14', 'GMAIL', NULL, '1618161914', '');
INSERT INTO `orders` VALUES (109, '394058', '065498989', 'admin', 0x56696120564E205369C3AA752043E1BB9520323030382D32303137, 19, 1235000, '2021-04-12 00:29:14', 'VIA', NULL, '1618162154', '');
INSERT INTO `orders` VALUES (110, '32D458', '0989897986', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 3, 1500, '2021-04-12 03:31:03', 'GMAIL', NULL, '1618173063', '');
INSERT INTO `orders` VALUES (111, '9D3754', 'phat1412', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 21, 1680000, '2021-04-12 03:34:13', 'VIA', NULL, '1618173253', '');
INSERT INTO `orders` VALUES (112, '23D047', '984659864', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 28, 280000, '2021-04-12 03:39:53', 'CLONE', NULL, '1618173593', '');
INSERT INTO `orders` VALUES (113, '6508D2', 'hotnek2', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 10, 200000, '2021-04-12 03:55:58', 'TRAODOISUB', NULL, '1618174558', '');
INSERT INTO `orders` VALUES (114, '204987', 'nguyentrinh', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 22, 110000, '2021-04-12 03:58:28', 'CLONE', NULL, '1618174708', '');
INSERT INTO `orders` VALUES (115, '2185D6', '97986599', 'admin', 0x424D20333530204E6577, 22, 880000, '2021-04-12 03:58:58', 'BM', NULL, '1618174738', '');
INSERT INTO `orders` VALUES (116, 'D86029', 'buihien', 'admin', 0x424D20333530204E6577, 24, 960000, '2021-04-12 03:59:28', 'BM', NULL, '1618174768', '');
INSERT INTO `orders` VALUES (117, 'D89302', '065498989', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 20, 400000, '2021-04-12 04:00:38', 'TRAODOISUB', NULL, '1618174838', '');
INSERT INTO `orders` VALUES (118, '340625', 'conlaollll', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 25, 2000000, '2021-04-12 04:02:38', 'VIA', NULL, '1618174958', '');
INSERT INTO `orders` VALUES (119, '69D547', '984659864', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 13, 6500, '2021-04-12 04:03:08', 'GMAIL', NULL, '1618174988', '');
INSERT INTO `orders` VALUES (120, '613052', '065498989', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 3, 60000, '2021-04-12 04:07:53', 'TRAODOISUB', NULL, '1618175273', '');
INSERT INTO `orders` VALUES (121, '647982', 'toite132', 'admin', 0x424D20333530204E6577, 16, 640000, '2021-04-12 04:08:24', 'BM', NULL, '1618175304', '');
INSERT INTO `orders` VALUES (122, '932D14', '019898985', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 7, 140000, '2021-04-12 04:08:34', 'TRAODOISUB', NULL, '1618175314', '');
INSERT INTO `orders` VALUES (123, '097853', 'toite132', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 21, 10500, '2021-04-12 04:19:26', 'GMAIL', NULL, '1618175966', '');
INSERT INTO `orders` VALUES (124, '28740D', 'toite132', 'admin', 0x424D20333530204E6577, 5, 200000, '2021-04-12 04:23:58', 'BM', NULL, '1618176238', '');
INSERT INTO `orders` VALUES (125, '981364', '065498989', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 25, 250000, '2021-04-12 04:24:48', 'CLONE', NULL, '1618176288', '');
INSERT INTO `orders` VALUES (126, '50947D', 'shopaka', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 1, 80000, '2021-04-12 04:26:19', 'VIA', NULL, '1618176379', '');
INSERT INTO `orders` VALUES (127, 'D67293', 'phong9899', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 2, 160000, '2021-04-12 13:28:49', 'VIA', NULL, '1618208929', '');
INSERT INTO `orders` VALUES (128, '79D824', 'phanxichlo', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 12, 960000, '2021-04-12 13:37:53', 'VIA', NULL, '1618209473', '');
INSERT INTO `orders` VALUES (129, '8407D3', 'nguyentrinh', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 21, 210000, '2021-04-12 13:53:09', 'CLONE', NULL, '1618210389', '');
INSERT INTO `orders` VALUES (130, '6175D0', 'giaosuhaykhoc', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 25, 500000, '2021-04-12 13:54:39', 'TRAODOISUB', NULL, '1618210479', '');
INSERT INTO `orders` VALUES (131, '39872D', '065498989', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 8, 40000, '2021-04-12 14:08:53', 'CLONE', NULL, '1618211333', '');
INSERT INTO `orders` VALUES (132, 'D50679', 'nguyentrinh', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 11, 880000, '2021-04-12 14:59:52', 'VIA', NULL, '1618214392', '');
INSERT INTO `orders` VALUES (133, '965072', '984659864', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 24, 120000, '2021-04-12 15:05:52', 'CLONE', NULL, '1618214752', '');
INSERT INTO `orders` VALUES (134, '751980', '984659864', 'admin', 0x424D20333530204E6577, 21, 840000, '2021-04-12 15:08:52', 'BM', NULL, '1618214932', '');
INSERT INTO `orders` VALUES (135, '254901', 'nguyentrinh', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 28, 280000, '2021-04-12 15:16:48', 'CLONE', NULL, '1618215408', '');
INSERT INTO `orders` VALUES (136, '738924', 'huyenngoc', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 12, 120000, '2021-04-12 15:20:52', 'CLONE', NULL, '1618215652', '');
INSERT INTO `orders` VALUES (137, '78D539', 'toitenla', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 5, 2500, '2021-04-12 15:36:58', 'GMAIL', NULL, '1618216618', '');
INSERT INTO `orders` VALUES (138, '287561', '984659864', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 24, 120000, '2021-04-12 15:38:18', 'CLONE', NULL, '1618216698', '');
INSERT INTO `orders` VALUES (139, '1D6354', 'giaosuhaykhoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 25, 125000, '2021-04-12 15:40:28', 'CLONE', NULL, '1618216828', '');
INSERT INTO `orders` VALUES (140, '579246', '984659864', 'admin', 0x424D20333530204E6577, 17, 680000, '2021-04-12 18:35:16', 'BM', NULL, '1618227316', '');
INSERT INTO `orders` VALUES (141, '614285', 'conlaollll', 'admin', 0x424D20333530204E6577, 7, 280000, '2021-04-12 18:36:16', 'BM', NULL, '1618227376', '');
INSERT INTO `orders` VALUES (142, '637019', 'hocgioigioihoc', 'admin', 0x424D20333530204E6577, 12, 480000, '2021-04-12 18:37:06', 'BM', NULL, '1618227426', '');
INSERT INTO `orders` VALUES (143, '31D857', '', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 21, 420000, '2021-04-12 18:46:52', 'TRAODOISUB', NULL, '1618228012', '');
INSERT INTO `orders` VALUES (144, '5169D3', '97986599', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 6, 30000, '2021-04-12 18:55:06', 'CLONE', NULL, '1618228506', '');
INSERT INTO `orders` VALUES (145, '608D21', 'toite132', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 6, 3000, '2021-04-12 18:57:16', 'GMAIL', NULL, '1618228636', '');
INSERT INTO `orders` VALUES (146, 'D46950', '0989897986', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 15, 150000, '2021-04-12 18:57:56', 'CLONE', NULL, '1618228676', '');
INSERT INTO `orders` VALUES (147, '825740', '065498989', 'admin', 0x424D20333530204E6577, 11, 440000, '2021-04-12 19:00:56', 'BM', NULL, '1618228856', '');
INSERT INTO `orders` VALUES (148, '948D63', '', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 25, 500000, '2021-04-12 19:08:26', 'TRAODOISUB', NULL, '1618229306', '');
INSERT INTO `orders` VALUES (149, '18967D', 'phanxichlo', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 28, 560000, '2021-04-12 19:09:46', 'TRAODOISUB', NULL, '1618229386', '');
INSERT INTO `orders` VALUES (150, '740823', 'phong9899', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 18, 9000, '2021-04-12 19:15:52', 'GMAIL', NULL, '1618229752', '');
INSERT INTO `orders` VALUES (151, '82D705', 'lamka231', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 8, 40000, '2021-04-12 19:23:52', 'CLONE', NULL, '1618230232', '');
INSERT INTO `orders` VALUES (152, '487D35', '0989897986', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 23, 230000, '2021-04-12 20:10:52', 'CLONE', NULL, '1618233052', '');
INSERT INTO `orders` VALUES (153, '38D590', '065498989', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 21, 210000, '2021-04-12 20:42:52', 'CLONE', NULL, '1618234972', '');
INSERT INTO `orders` VALUES (154, '513479', 'hocgioigioihoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 4, 20000, '2021-04-12 20:43:52', 'CLONE', NULL, '1618235032', '');
INSERT INTO `orders` VALUES (155, '65D093', 'toitenla', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 12, 6000, '2021-04-12 21:07:52', 'GMAIL', NULL, '1618236472', '');
INSERT INTO `orders` VALUES (156, 'D79450', '0989897986', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 11, 220000, '2021-04-12 21:26:52', 'TRAODOISUB', NULL, '1618237612', '');
INSERT INTO `orders` VALUES (157, '87D205', 'hotnek2', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 15, 7500, '2021-04-12 21:36:52', 'GMAIL', NULL, '1618238212', '');
INSERT INTO `orders` VALUES (158, '917528', 'shopaka', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 13, 260000, '2021-04-12 22:07:52', 'TRAODOISUB', NULL, '1618240072', '');
INSERT INTO `orders` VALUES (159, '096418', '', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 4, 20000, '2021-04-12 22:34:52', 'CLONE', NULL, '1618241692', '');
INSERT INTO `orders` VALUES (160, '982306', 'phat1412', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 2, 160000, '2021-04-12 22:39:52', 'VIA', NULL, '1618241992', '');
INSERT INTO `orders` VALUES (161, '631758', 'buihien', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 12, 240000, '2021-04-12 22:58:52', 'TRAODOISUB', NULL, '1618243132', '');
INSERT INTO `orders` VALUES (162, '623451', 'buihien', 'admin', 0x424D20333530204E6577, 29, 1160000, '2021-04-12 23:03:52', 'BM', NULL, '1618243432', '');
INSERT INTO `orders` VALUES (163, 'D58432', 'hocgioigioihoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 12, 60000, '2021-04-12 23:48:52', 'CLONE', NULL, '1618246132', '');
INSERT INTO `orders` VALUES (164, '2837D6', 'buihien', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 23, 1840000, '2021-04-13 00:10:52', 'VIA', NULL, '1618247452', '');
INSERT INTO `orders` VALUES (165, 'D73548', '97986599', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 22, 440000, '2021-04-13 00:13:52', 'TRAODOISUB', NULL, '1618247632', '');
INSERT INTO `orders` VALUES (166, '36710D', 'toite132', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 10, 800000, '2021-04-13 00:17:52', 'VIA', NULL, '1618247872', '');
INSERT INTO `orders` VALUES (167, '678945', 'nguyentrinh', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 29, 580000, '2021-04-13 00:50:52', 'TRAODOISUB', NULL, '1618249852', '');
INSERT INTO `orders` VALUES (168, '985D13', 'thanhpro', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 24, 120000, '2021-04-13 01:02:52', 'CLONE', NULL, '1618250572', '');
INSERT INTO `orders` VALUES (169, '59D483', '', 'admin', 0x424D20333530204E6577, 5, 200000, '2021-04-13 01:06:52', 'BM', NULL, '1618250812', '');
INSERT INTO `orders` VALUES (170, 'D46123', 'nguyentrinh', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 22, 11000, '2021-04-13 01:30:52', 'GMAIL', NULL, '1618252252', '');
INSERT INTO `orders` VALUES (171, '29D408', '019898985', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 26, 130000, '2021-04-13 01:37:36', 'CLONE', NULL, '1618252656', '');
INSERT INTO `orders` VALUES (172, 'D14892', 'conlaollll', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 3, 30000, '2021-04-13 01:47:36', 'CLONE', NULL, '1618253256', '');
INSERT INTO `orders` VALUES (173, '146D73', '97986599', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 28, 560000, '2021-04-13 01:59:52', 'TRAODOISUB', NULL, '1618253992', '');
INSERT INTO `orders` VALUES (174, 'D84392', '0989897986', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 18, 360000, '2021-04-13 04:11:00', 'TRAODOISUB', NULL, '1618261860', '');
INSERT INTO `orders` VALUES (175, '1824D9', 'hotnek2', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 13, 260000, '2021-04-13 04:17:46', 'TRAODOISUB', NULL, '1618262266', '');
INSERT INTO `orders` VALUES (176, '543870', 'thanhpro', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 23, 11500, '2021-04-13 04:19:56', 'GMAIL', NULL, '1618262396', '');
INSERT INTO `orders` VALUES (177, '439167', 'buihien', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 8, 4000, '2021-04-13 04:47:52', 'GMAIL', NULL, '1618264072', '');
INSERT INTO `orders` VALUES (178, '270831', 'giaosuhaykhoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 8, 40000, '2021-04-13 05:16:52', 'CLONE', NULL, '1618265812', '');
INSERT INTO `orders` VALUES (179, 'D97305', '065498989', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 29, 580000, '2021-04-13 05:25:52', 'TRAODOISUB', NULL, '1618266352', '');
INSERT INTO `orders` VALUES (180, '715963', 'huyenngoc', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 1, 500, '2021-04-13 11:24:52', 'GMAIL', NULL, '1618287892', '');
INSERT INTO `orders` VALUES (181, '12605D', 'thanhpro', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 1, 20000, '2021-04-13 12:21:52', 'TRAODOISUB', NULL, '1618291312', '');
INSERT INTO `orders` VALUES (182, '09436D', '97986599', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 10, 200000, '2021-04-13 12:32:52', 'TRAODOISUB', NULL, '1618291972', '');
INSERT INTO `orders` VALUES (183, '7D6182', 'huyenngoc', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 10, 100000, '2021-04-13 12:43:52', 'CLONE', NULL, '1618292632', '');
INSERT INTO `orders` VALUES (184, '537428', 'nguyentrinh', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 22, 110000, '2021-04-13 13:16:36', 'CLONE', NULL, '1618294596', '');
INSERT INTO `orders` VALUES (185, 'D84209', '', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 8, 640000, '2021-04-13 13:29:52', 'VIA', NULL, '1618295392', '');
INSERT INTO `orders` VALUES (186, '45137D', '', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 7, 35000, '2021-04-13 13:33:52', 'CLONE', NULL, '1618295632', '');
INSERT INTO `orders` VALUES (187, '209614', 'hocgioigioihoc', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 28, 2240000, '2021-04-13 13:40:52', 'VIA', NULL, '1618296052', '');
INSERT INTO `orders` VALUES (188, '654210', '97986599', 'admin', 0x424D20333530204E6577, 17, 680000, '2021-04-13 14:20:52', 'BM', NULL, '1618298452', '');
INSERT INTO `orders` VALUES (189, '598206', 'phat1412', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 28, 280000, '2021-04-13 14:23:52', 'CLONE', NULL, '1618298632', '');
INSERT INTO `orders` VALUES (190, '1902D8', 'phong9899', 'admin', 0x424D20333530204E6577, 24, 960000, '2021-04-13 14:59:52', 'BM', NULL, '1618300792', '');
INSERT INTO `orders` VALUES (191, 'D20951', 'phong9899', 'admin', 0x424D20333530204E6577, 6, 240000, '2021-04-13 15:02:52', 'BM', NULL, '1618300972', '');
INSERT INTO `orders` VALUES (192, '940368', 'huyenngoc', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 19, 190000, '2021-04-13 17:53:52', 'CLONE', NULL, '1618311232', '');
INSERT INTO `orders` VALUES (193, 'D79420', 'thanhpro', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 13, 6500, '2021-04-13 18:12:52', 'GMAIL', NULL, '1618312372', '');
INSERT INTO `orders` VALUES (194, '9D7148', 'shopaka', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 23, 115000, '2021-04-13 18:15:52', 'CLONE', NULL, '1618312552', '');
INSERT INTO `orders` VALUES (195, '430912', 'phat1412', 'admin', 0x424D20333530204E6577, 11, 440000, '2021-04-13 18:24:50', 'BM', NULL, '1618313090', '');
INSERT INTO `orders` VALUES (196, '053196', '0989897986', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 15, 150000, '2021-04-13 18:25:30', 'CLONE', NULL, '1618313130', '');
INSERT INTO `orders` VALUES (197, '501847', 'shopaka', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 7, 140000, '2021-04-13 18:49:52', 'TRAODOISUB', NULL, '1618314592', '');
INSERT INTO `orders` VALUES (198, '849706', 'giaosuhaykhoc', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 23, 460000, '2021-04-13 19:20:52', 'TRAODOISUB', NULL, '1618316452', '');
INSERT INTO `orders` VALUES (199, '453091', 'thanhpro', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 17, 8500, '2021-04-13 19:35:52', 'GMAIL', NULL, '1618317352', '');
INSERT INTO `orders` VALUES (200, '972640', '065498989', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 19, 9500, '2021-04-13 19:47:52', 'GMAIL', NULL, '1618318072', '');
INSERT INTO `orders` VALUES (201, '27D963', '97986599', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 13, 260000, '2021-04-13 20:12:53', 'TRAODOISUB', NULL, '1618319573', '');
INSERT INTO `orders` VALUES (202, '196534', 'phong9899', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 20, 10000, '2021-04-13 20:13:08', 'GMAIL', NULL, '1618319588', '');
INSERT INTO `orders` VALUES (203, '581026', '', 'admin', 0x424D20333530204E6577, 10, 400000, '2021-04-13 20:18:47', 'BM', NULL, '1618319927', '');
INSERT INTO `orders` VALUES (204, '6D8970', '97986599', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 8, 160000, '2021-04-13 20:24:20', 'TRAODOISUB', NULL, '1618320260', '');
INSERT INTO `orders` VALUES (205, '980D14', 'conlaollll', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 15, 150000, '2021-04-13 20:24:37', 'CLONE', NULL, '1618320277', '');
INSERT INTO `orders` VALUES (206, '532D97', 'huyenngoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 6, 30000, '2021-04-13 20:24:39', 'CLONE', NULL, '1618320279', '');
INSERT INTO `orders` VALUES (207, '819765', 'nguyentrinh', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 13, 6500, '2021-04-13 20:24:41', 'GMAIL', NULL, '1618320281', '');
INSERT INTO `orders` VALUES (208, '681403', '984659864', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 10, 100000, '2021-04-13 20:36:07', 'CLONE', NULL, '1618320967', '');
INSERT INTO `orders` VALUES (209, '45829D', 'phat1412', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 6, 120000, '2021-04-13 20:41:55', 'TRAODOISUB', NULL, '1618321315', '');
INSERT INTO `orders` VALUES (210, '70498D', 'shopaka', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 17, 85000, '2021-04-13 20:42:10', 'CLONE', NULL, '1618321330', '');
INSERT INTO `orders` VALUES (211, '632904', 'phong9899', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 18, 90000, '2021-04-13 20:50:36', 'CLONE', NULL, '1618321836', '');
INSERT INTO `orders` VALUES (212, 'D43265', '0989897986', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 19, 190000, '2021-04-13 20:52:00', 'CLONE', NULL, '1618321920', '');
INSERT INTO `orders` VALUES (213, '47ZY3I0NFMHR', 'admin', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 5, 50000, '2021-04-14 13:18:22', 'CLONE', NULL, '1618381102', '::1');
INSERT INTO `orders` VALUES (214, '2D6590', 'huyenngoc', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 7, 560000, '2021-04-14 13:20:32', 'VIA', NULL, '1618381232', '');
INSERT INTO `orders` VALUES (215, '617089', 'phong9899', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 17, 85000, '2021-04-14 13:21:02', 'CLONE', NULL, '1618381262', '');
INSERT INTO `orders` VALUES (216, '48D629', '', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 3, 240000, '2021-04-14 13:24:02', 'VIA', NULL, '1618381442', '');
INSERT INTO `orders` VALUES (217, '643150', 'buihien', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 21, 10500, '2021-04-14 13:25:22', 'GMAIL', NULL, '1618381522', '');
INSERT INTO `orders` VALUES (218, '48712D', 'phanxichlo', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 14, 1120000, '2021-04-14 13:36:19', 'VIA', NULL, '1618382179', '');
INSERT INTO `orders` VALUES (219, '348975', '97986599', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 30, 2400000, '2021-04-14 13:42:52', 'VIA', NULL, '1618382572', '');
INSERT INTO `orders` VALUES (220, '982347', 'phanxichlo', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 21, 10500, '2021-04-14 13:52:04', 'GMAIL', NULL, '1618383124', '');
INSERT INTO `orders` VALUES (221, '5D9167', 'hocgioigioihoc', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 4, 80000, '2021-04-14 13:57:33', 'TRAODOISUB', NULL, '1618383453', '');
INSERT INTO `orders` VALUES (222, '074968', 'buihien', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 10, 5000, '2021-04-14 13:57:43', 'GMAIL', NULL, '1618383463', '');
INSERT INTO `orders` VALUES (223, '728D45', 'conlaollll', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 12, 240000, '2021-04-14 14:13:51', 'TRAODOISUB', NULL, '1618384431', '');
INSERT INTO `orders` VALUES (224, '9068D4', '019898985', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 9, 720000, '2021-04-14 14:14:51', 'VIA', NULL, '1618384491', '');
INSERT INTO `orders` VALUES (225, '751328', '97986599', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 10, 50000, '2021-04-14 14:25:33', 'CLONE', NULL, '1618385133', '');
INSERT INTO `orders` VALUES (226, '034216', 'nguyentrinh', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 1, 20000, '2021-04-14 14:28:23', 'TRAODOISUB', NULL, '1618385303', '');
INSERT INTO `orders` VALUES (227, '2563D7', '984659864', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 22, 11000, '2021-04-14 14:30:51', 'GMAIL', NULL, '1618385451', '');
INSERT INTO `orders` VALUES (228, '632810', '984659864', 'admin', 0x424D20333530204E6577, 30, 1200000, '2021-04-14 14:51:43', 'BM', NULL, '1618386703', '');
INSERT INTO `orders` VALUES (229, '7D9143', 'hotnek2', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 17, 8500, '2021-04-14 14:52:01', 'GMAIL', NULL, '1618386721', '');
INSERT INTO `orders` VALUES (230, '9750D6', 'hotnek2', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 16, 1280000, '2021-04-14 14:55:55', 'VIA', NULL, '1618386955', '');
INSERT INTO `orders` VALUES (231, '658473', 'lamka231', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 25, 125000, '2021-04-14 15:21:51', 'CLONE', NULL, '1618388511', '');
INSERT INTO `orders` VALUES (232, '938204', 'huyenngoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 15, 75000, '2021-04-14 15:25:49', 'CLONE', NULL, '1618388749', '');
INSERT INTO `orders` VALUES (233, '973106', 'hotnek2', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 2, 10000, '2021-04-14 15:26:49', 'CLONE', NULL, '1618388809', '');
INSERT INTO `orders` VALUES (234, 'D73912', 'thanhpro', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 12, 60000, '2021-04-14 15:28:39', 'CLONE', NULL, '1618388919', '');
INSERT INTO `orders` VALUES (235, '397420', '0989897986', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 6, 120000, '2021-04-14 15:31:59', 'TRAODOISUB', NULL, '1618389119', '');
INSERT INTO `orders` VALUES (236, '76D432', 'shopaka', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 21, 10500, '2021-04-14 15:42:23', 'GMAIL', NULL, '1618389743', '');
INSERT INTO `orders` VALUES (237, '1765D8', '', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 18, 180000, '2021-04-14 15:45:22', 'CLONE', NULL, '1618389922', '');
INSERT INTO `orders` VALUES (238, '76902D', '065498989', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 26, 13000, '2021-04-14 15:45:43', 'GMAIL', NULL, '1618389943', '');
INSERT INTO `orders` VALUES (239, '289604', 'phat1412', 'admin', 0x424D20333530204E6577, 5, 200000, '2021-04-14 15:47:42', 'BM', NULL, '1618390062', '');
INSERT INTO `orders` VALUES (240, '19670D', 'hocgioigioihoc', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 28, 140000, '2021-04-14 15:48:32', 'CLONE', NULL, '1618390112', '');
INSERT INTO `orders` VALUES (241, '714230', 'shopaka', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 25, 500000, '2021-04-14 15:50:11', 'TRAODOISUB', NULL, '1618390211', '');
INSERT INTO `orders` VALUES (242, 'D34789', '984659864', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 29, 2320000, '2021-04-14 15:52:10', 'VIA', NULL, '1618390330', '');
INSERT INTO `orders` VALUES (243, '5836D2', 'phat1412', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 1, 500, '2021-04-14 15:57:30', 'GMAIL', NULL, '1618390650', '');
INSERT INTO `orders` VALUES (244, '902183', 'phong9899', 'admin', 0x424D20333530204E6577, 3, 120000, '2021-04-14 16:03:36', 'BM', NULL, '1618391016', '');
INSERT INTO `orders` VALUES (245, '324580', 'thanhpro', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 9, 180000, '2021-04-14 16:06:46', 'TRAODOISUB', NULL, '1618391206', '');
INSERT INTO `orders` VALUES (246, 'BKMWJFTHE0X4', 'admin', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 1, 10000, '2021-04-14 16:08:10', 'CLONE', NULL, '1618391290', '::1');
INSERT INTO `orders` VALUES (247, '897654', 'lamka231', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 16, 1280000, '2021-04-14 16:22:12', 'VIA', NULL, '1618392132', '');
INSERT INTO `orders` VALUES (248, '34029D', 'phanxichlo', 'admin', 0x474D41494C2052414E444F4D2054C38A4E205449E1BABE4E4720414E48202B4156415441522B504F50332B494D41502B4C495645373748, 4, 2000, '2021-04-14 16:28:51', 'GMAIL', NULL, '1618392531', '');
INSERT INTO `orders` VALUES (249, '7291D5', 'nguyentrinh', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 25, 125000, '2021-04-14 16:35:42', 'CLONE', NULL, '1618392942', '');
INSERT INTO `orders` VALUES (250, '869102', 'huyenngoc', 'admin', 0x424D20333530204E6577, 20, 800000, '2021-04-14 17:28:57', 'BM', NULL, '1618396137', '');
INSERT INTO `orders` VALUES (251, '78D564', '984659864', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 12, 120000, '2021-04-14 17:30:57', 'CLONE', NULL, '1618396257', '');
INSERT INTO `orders` VALUES (252, '80752D', 'phat1412', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 29, 580000, '2021-04-14 17:31:27', 'TRAODOISUB', NULL, '1618396287', '');
INSERT INTO `orders` VALUES (253, '48713D', 'phong9899', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 15, 1200000, '2021-04-14 17:31:47', 'VIA', NULL, '1618396307', '');
INSERT INTO `orders` VALUES (254, '0D7894', 'toitenla', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 26, 260000, '2021-04-14 17:36:11', 'CLONE', NULL, '1618396571', '');
INSERT INTO `orders` VALUES (255, '9D5180', 'phat1412', 'admin', 0x436C6F6E65205669E1BB8774203246412043616F2043E1BAA570, 3, 15000, '2021-04-14 17:42:21', 'CLONE', NULL, '1618396941', '');
INSERT INTO `orders` VALUES (256, '345076', 'phong9899', 'admin', 0x54C3A069206B686FE1BAA36E2054445320316D207875, 22, 440000, '2021-04-14 17:46:01', 'TRAODOISUB', NULL, '1618397161', '');
INSERT INTO `orders` VALUES (257, '105329', '97986599', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 1, 80000, '2021-04-14 20:03:17', 'VIA', NULL, '1618405397', '');
INSERT INTO `orders` VALUES (258, '4D3076', 'thanhpro', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 20, 1600000, '2021-04-14 20:06:07', 'VIA', NULL, '1618405567', '');
INSERT INTO `orders` VALUES (259, '429016', 'toitenla', 'admin', 0x424D20333530204E6577, 12, 480000, '2021-04-14 20:07:27', 'BM', NULL, '1618405647', '');
INSERT INTO `orders` VALUES (260, '096724', 'hotnek2', 'admin', 0x424D20333530204E6577, 15, 600000, '2021-04-14 20:07:37', 'BM', NULL, '1618405657', '');
INSERT INTO `orders` VALUES (261, '590418', '984659864', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 12, 960000, '2021-04-14 20:08:27', 'VIA', NULL, '1618405707', '');
INSERT INTO `orders` VALUES (262, '014253', '065498989', 'admin', 0x205669612043E1BB95205068696C6970696E204368616E67652046756C6C20584D4454, 3, 240000, '2021-04-14 20:12:51', 'VIA', NULL, '1618405971', '');
INSERT INTO `orders` VALUES (263, '58D317', '065498989', 'admin', 0x436C6F6E65205669E1BB877420584D4454, 16, 160000, '2021-04-14 20:14:51', 'CLONE', NULL, '1618406091', '');
INSERT INTO `orders` VALUES (264, '591840', 'buihien', 'admin', 0x424D20333530204E6577, 3, 120000, '2021-04-14 20:44:51', 'BM', NULL, '1618407891', '');

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `dichvu` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `taikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `lydo` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `thoigian` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `trangthai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ghichu` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for ruttien
-- ----------------------------
DROP TABLE IF EXISTS `ruttien`;
CREATE TABLE `ruttien`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ngan_hang` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `stk` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `chu_tai_khoan` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `sotien` int NULL DEFAULT NULL,
  `thoigian` datetime(0) NULL DEFAULT NULL,
  `trangthai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ghichu` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ruttien
-- ----------------------------
INSERT INTO `ruttien` VALUES (2, 'admin', 'VIETINBANK', '12124342323', 'sgasdsad', 10000, '2021-01-24 09:21:25', 'thatbai', '');

-- ----------------------------
-- Table structure for taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE `taikhoan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `dichvu` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `chitiet` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `trangthai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `lydo` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `khieunai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `thoigianmua` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2343521 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of taikhoan
-- ----------------------------
INSERT INTO `taikhoan` VALUES (2343407, '13', NULL, '100050528753376|ducclone174|c_user=100050528753376; xs=12%3ALrnLlIBl2ueiDQ%3A2%3A1588974860%3A-1%3A-1;useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343408, '13', NULL, '100050541142816|ducclone369|c_user=100050541142816; xs=34%3AikoprpEqIYDrYQ%3A2%3A1590003584%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343409, '13', NULL, '100050575971643|ducclone691|c_user=100050575971643; xs=8%3AjejhJlittPSA5Q%3A2%3A1589538627%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343410, '13', NULL, '100050603539425|ducclone386|c_user=100050603539425; xs=34%3AqZBOviO-E7zULQ%3A2%3A1589761860%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343411, '13', NULL, '100050630086542|ducclone46|c_user=100050630086542; xs=46%3AEorq01Pr1gMiAw%3A2%3A1588539651%3A-1%3A-1; useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS83My4wLjM2ODMuMCBTYWZhcmkvNTM3LjM2', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343412, '13', '47ZY3I0NFMHR', '100050774350887|ducclone162|useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS84MS4wLjQwNDQuMTM4IFNhZmFyaS81MzcuMzY%3D2E4K QH23 FC42 4SN3 RJJW XFQJ QEG2 XPDX', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343413, '13', NULL, '100050787789798|ducclone201|useragent=TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV09XNjQpIEFwcGxlV2ViS2l0LzUzNy4zNiAoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS84MS4wLjQwNDQuMTM4IFNhZmFyaS81MzcuMzY%3DBLVD I7SY ZIGH MF6O OI4P EQJY 5NGB JZSG', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343414, '13', '47ZY3I0NFMHR', '100051520396899|HotanBoy0819|datr=xzGxXmMBuQL1upGk3qBcrMkj; sb=xzGxXp8cUzUIs1Jhp99oasTP; locale=en_GB; c_user=100051520396899; xs=41%3AgLxHIVddQSbRBg%3A2%3A1590231746%3A-1%3A-1; spin=r.1002161019_b.trunk_t.1590231748_s.1_v.2_; m_pixel_ratio=1; fr=7yl8GXYb45y7gZtRU.AWUHWGgpItc3Nw1QAENKaYPI6cE.BesTHH.Dx.AAA.0.0.BeyQLN.AWX7Kz1Q; wd=1004x680; x-referer=eyJyIjoiL2NvbmZpcm1lbWFpbC5waHA%2FZW1haWxfY2hhbmdlZCZzb2Z0PWhqayIsImgiOiIvY29uZmlybWVtYWlsLnBocD9lbWFpbF9jaGFuZ2VkJnNvZnQ9aGprIiwicyI6Im0ifQ%3D%3D; presence=EDvF3EtimeF1590231808EuserFA21B51520396899A2EstateFDutF1590231808605CEchF_7bCC', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343415, '13', NULL, '100051540585424|RDPhucNguyen0708952952|c_user=100051540585424=.facebook.com;datr=r3KqXk7JK2TUhp0NRIawL86C=.facebook.com;xs=22%3APEV7R11pRp8XuQ%3A2%3A1590211882%3A-1%3A-1=.facebook.com;fr=3NslYDUIgHz6GTv2u.AWWwMgXjfxMSGA020Lq4oK0TpOk.BeqnKv.QD.AAA.0.0.BeyLUo.AWWBQM62=.facebook.com;sb=yHKqXrTO7ED7jFlrFss258ga=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343416, '13', NULL, '100051540645615|HotanBoy0849|datr=zbWwXmrE7c-_3saRBWJtTlW-; sb=zbWwXj4ko35PKWEHHii0Gp5a; c_user=100051540645615; xs=6%3A0cxzOiEgS9QROA%3A2%3A1590222952%3A-1%3A-1; fr=17yCJxyI3NoGYQdwo.AWWme_CPyCKt3f-xvvYCcHOrC0w.BesLXN.pN.AAA.0.0.BeyOBm.AWXzdgSP', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343417, '13', NULL, '100051540705644|RDPhucNguyen0708952952|c_user=100051540705644=.facebook.com;datr=dRibXkFEY9Y0qQJ0xNd_18u9=.facebook.com;xs=11%3AJsS47E2k9ZIwFg%3A2%3A1590218767%3A-1%3A-1=.facebook.com;fr=5lxYCs0bozPCGHnY7.AWXOtQGAClByxOj2ZiNBLub9Wn0.Bemxh1.l9.AAA.0.0.BeyNAJ.AWWXA_ww=.facebook.com;sb=iBibXr1etu1qVnt02fK9hVI3=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343418, '13', NULL, '100051540736070|RDPhucNguyen0708952952|c_user=100051540736070=.facebook.com;datr=GTqqXgzVZXjMAapppXuEl3r2=.facebook.com;xs=38%3AgShJlWov8UuXBQ%3A2%3A1590223154%3A-1%3A-1=.facebook.com;fr=3bsXT8BLtzNqg4JAu.AWX7fEQ-vhL3A2PZCvq65Dd3TqE.BeqjoZ.d0.AAA.0.0.BeyOEx.AWXcM-sp=.facebook.com;sb=LTqqXqm-9bGctl-nh8REsm6r=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343419, '13', '47ZY3I0NFMHR', '100051540766377|HotanBoy0706|datr=_TKxXjGlpule2cArUI6wzcCH; sb=_TKxXq5tnqcwmMylbC3gFg1G; locale=en_GB; c_user=100051540766377; xs=39%3AVyJFBANjjipnqA%3A2%3A1590239844%3A-1%3A-1; spin=r.1002161043_b.trunk_t.1590239846_s.1_v.2_; m_pixel_ratio=1; fr=7PrTQzTqxIZKnN3Sm.AWUohbcl2atHiyIsQnzR-z8k08g.BesTL9.Js.AAA.0.0.BeySJr.AWXrJeP5; wd=1004x680; x-referer=eyJyIjoiL2NvbmZpcm1lbWFpbC5waHA%2FZW1haWxfY2hhbmdlZCZzb2Z0PWhqayIsImgiOiIvY29uZmlybWVtYWlsLnBocD9lbWFpbF9jaGFuZ2VkJnNvZnQ9aGprIiwicyI6Im0ifQ%3D%3D; presence=EDvF3EtimeF1590239877EuserFA21B51540766377A2EstateFDutF1590239877210CEchF_7bCC', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343420, '13', NULL, '100051540795140|RDPhucNguyen0708952952|c_user=100051540795140=.facebook.com;datr=qfedXhnWUxFQdqDq7iPwN_8M=.facebook.com;xs=25%3ARNKm4D9QWJn52g%3A2%3A1590193187%3A-1%3A-1=.facebook.com;fr=5YwxeMnIjGORHvdaJ.AWXJXpTDXueRJYRNtIZNv7Z-iKM.Benfeg.Ru.AAA.0.0.BeyGwd.AWU1elFA=.facebook.com;sb=yvedXtvtSeTuMN50mrxWf98D=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343421, '13', NULL, '100051540825338|RDPhucNguyen0708952952|c_user=100051540825338=.facebook.com;datr=UZybXqiKWj1x0eI7wUXR2hG8=.facebook.com;xs=13%3AYQpEsOEKqSR0Sw%3A2%3A1590207025%3A-1%3A-1=.facebook.com;fr=1i7FBABef9B3HaZcE.AWUYyihkMWhvvPYnWFYbXB7TdPM.Bem5xR.SB.AAA.0.0.BeyKIs.AWXGcYQ_=.facebook.com;sb=XpybXrXhsyUObbNAEq0G5hv8=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343422, '13', NULL, '100051540914633|RDPhucNguyen0708952952|c_user=100051540914633=.facebook.com;datr=lOuZXoh10YGQ4ZVh4r8vF0UA=.facebook.com;xs=7%3AH_mFiMExB5Cs-g%3A2%3A1590164259%3A-1%3A-1=.facebook.com;fr=5zqhGCccqAbUx4oNW.AWX1DSzWr5pjaBrtT8wqc3K2rSM.BemeuU.D5.AAA.0.0.Bex_uB.AWVL3wGt=.facebook.com;sb=pOuZXm7TY5hkL6U9not1wxrP=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343423, '13', NULL, '100051570464407|RDPhucNguyen0708952952|c_user=100051570464407=.facebook.com;datr=SqCgXm9tKlvKwXaE4BuyaBvB=.facebook.com;xs=2%3ALLGhRaww1ShTSA%3A2%3A1590207919%3A-1%3A-1=.facebook.com;fr=5uYzr3qaz2c6S7Fjp.AWUTKVBV4xbIH8kj_6wMJO2sYSU.BeoKBK.Gs.AAA.0.0.BeyKWq.AWX20Eff=.facebook.com;sb=W6CgXmaTy6Mfpy8DeRukc8lC=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343424, '13', '47ZY3I0NFMHR', '100051570554115|RDPhucNguyen0708952952|c_user=100051570554115=.facebook.com;datr=atGbXhiyxGavqmBAWlCOtvrK=.facebook.com;xs=16%3A_GbPfsobwY2Q8Q%3A2%3A1590196743%3A-1%3A-1=.facebook.com;fr=5pnbvRExab9cN4l37.AWUMix7A9RGbULcbgjgOLZe79_U.Bem9Fq.nZ.AAA.0.0.BeyHoC.AWXlg5GN=.facebook.com;sb=etGbXnHvEvmfuuKCNLr5zLga=.facebook.com;', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343425, '13', NULL, '100051570554345|HotanBoy0601|datr=OCWmXoxJszWlPP1dJe1e6IzK; sb=ZKHIXnhdUWgPlA5MI-owBXKL; c_user=100051570554345; xs=10%3AkQ7jKgS1dbZ-AA%3A2%3A1590206846%3A-1%3A-1; fr=1x0bo3pun9dt1B6FI.AWX7eZwsejuivvqUuBsgkQUnJ2o.BepiUy._q.AAA.0.0.BeyKF9.AWWldg8N', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343426, '13', NULL, '100051570554375|HotanBoy0599|datr=aCWmXnoH1GokdLn8VjyyWqcX; sb=C6XIXtS0-GyDuZJhRps_26Pn; c_user=100051570554375; xs=5%3Ae9ZjS7Im-OmpWQ%3A2%3A1590207802%3A-1%3A-1; fr=1wlBM5kqFyDE1sSfG.AWUwBxb-mFq_OoeI-AgtIUIg2pQ.BepiVi.1_.AAA.0.0.BeyKU4.AWUWzTwF', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343427, '13', NULL, '100051570643895|RDPhucNguyen0708952952|c_user=100051570643895=.facebook.com;datr=LeajXh6NQcXWWnYwdqkIdjCx=.facebook.com;xs=4%3ALfLDUj8WjnNKug%3A2%3A1590190018%3A-1%3A-1=.facebook.com;fr=5MyLzlsU3l06XFYXk.AWWYAY0Y_GdqFjO8563VPG8il0w.Beo-Yt.Oy.AAA.0.0.BeyF-_.AWVyuwbE=.facebook.com;sb=P-ajXpaqHCcDnC0FVjhADJT1=.facebook.com;', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343428, '13', NULL, '100050927136663|ducclone481|WUSY LA3N RDMS EU7B 62F7 TGWI S3MH KU43', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343429, '13', NULL, '100050927191267|ducclone264|VTW4 QYO5 EZQ2 ABA5 G65F 4HKO PCFN 4B7U', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343430, '13', '47ZY3I0NFMHR', '100050927375466|ducclone496|JSWZ KENG LBLJ IV6U JUMA MQKZ 4I5X ZX7B', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343431, '13', NULL, '100050927403945|ducclone686|5KP2 YHOC THS4 3LCF QH6Q XDVA 33RP V6RU', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343432, '13', NULL, '100050927404438|ducclone988|BE2C C3C5 CFDR SZJR 6S3A V76H 42EQ TPLE', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343433, '13', NULL, '100050927586130|ducclone181|Y2TQ TR7Q S6VQ 4VBE C4UZ BZNN Y2OO FVLT', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343434, '13', NULL, '100050927671385|ducclone122|LCKH COOQ P765 VEWD TIM6 CAVL UCYQ 375R', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343435, '13', NULL, '100050927673003|ducclone539|JHXU QNEE BJD4 AVBR VA3H NKIT 4OVT VDSN', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343436, '13', NULL, '100050927791559|ducclone368|2EZD OIFA NNUW NL2C ERK2 3L2W HUEX SOKU', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343437, '13', 'BKMWJFTHE0X4', '100050927886037|ducclone314|QD57 JD5P 3YDZ HBZU KD35 NK3V I57Z VCNT', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343438, '13', NULL, '100050928066888|ducclone952|ONFT GPQJ RVRF 7FQM U2OB EPJH NDI4 FMXR', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343439, '13', NULL, '100050928124618|ducclone269|424A V356 YOAR B6K7 4ZKR BAVE QEPN A3JT', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343440, '13', NULL, '100050928274289|ducclone342|ENE5 24AS 3MX4 XWKJ B7FE IKQE KCQT V6ZO', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343441, '13', NULL, '100050928601283|ducclone597|ISFV XJOX ZEXB X2LT VA43 5QQR UUD4 6SWT', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343442, '13', NULL, '100050928605516|ducclone518|IM5X LZWL 3LXR KVI4 JOUT ALNQ YHYG PFRB', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343443, '13', NULL, '100050928691422|ducclone947|GBTL LEF3 VAXY RGEL QPVI JBI2 N4A4 EKUM', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343444, '13', NULL, '100050928877842|ducclone459|A6U2 JSIZ NZW6 JCQX GTOY QY2L PRBY ZIMO', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343445, '13', NULL, '100050928901605|ducclone985|NMYE 25H7 S4S4 HVKQ DEVD DJ7S ONZQ TDYX', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343446, '13', NULL, '100050928964779|ducclone492|D5PW TNHZ IT75 OCDH CN4B I5JY L6RW EQME', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343447, '13', NULL, '100050928991001|ducclone92|6CMS UBUY CCJK OKL6 SNDQ BXQJ 4NMT O4KJ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343448, '13', NULL, '100050929024576|ducclone216|SSG2 KIKK EGKF 53MV CKZN QSOU FZ7B BPUY', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343449, '13', NULL, '100050929144754|ducclone933|VNLM 43PC C4ID YINC BVJ3 VTRH U3EA 74VF', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343450, '13', NULL, '100050929204482|ducclone631|EP2L TIEO UKAA Y6NF B22C BGRU HY5D UPHJ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343451, '13', NULL, '100050929321615|ducclone951|SIGO QE5U VZNJ NCBX BLYP UMLS ZG3M XXJD', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343452, '13', NULL, '100050929444613|ducclone856|F7T3 W2RO PJ53 VL4M U7YJ AOA7 E5WG N7XL', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343453, '13', NULL, '100050931450710|ducclone991|A2SI AXYT ZYRA E25Y T7HM WB6Q EV33 2BK3', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343454, '13', NULL, '100050931486259|ducclone681|FAXR FHKX PECO SCJP GVGM OLEJ C2JA TQS7', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343455, '13', NULL, '100050931513554|ducclone763|NZEJ H2K5 DYVR 5A7X MJEF 32QD FTGK 6TWA', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343456, '13', NULL, '100049249292866|janafletcher3559|JQAS AESX AC7E 6WTT EN7D LQSX SWOH TSLY', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343457, '13', NULL, '100050363622625|khanhngo2804|CP6D NJZR JF23 LLEE 3ILT DTY6 LW37 G7U6', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343458, '13', NULL, '100050528884613|quyenngo7248|DC6N UUZC CCUM SGEY N5QL 7PWT WQGC 3QPY', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343459, '13', NULL, '100050126692848|thuanho6160|CWOW JUDE YRLU ZUCL CJRQ SGID IUOP OBWF', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343460, '13', NULL, '100050097623534|trucvo2511|N4LO 4LPP NEL7 BLXX 4FUZ MZXA PU56 OV3U', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343461, '13', NULL, '100050175770298|tandang0455|NGRW 5TN6 4RY5 VYMA RDNE LD5B CCYC 6MUD', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343462, '13', NULL, '100050609431237|khanhvu2015|YYZF 32T3 N4L6 YHV2 3VV4 MQP7 4LOR LNL2', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343463, '13', NULL, '100050261026376|cucbui5991|B7NO BUAI QN5O PUCE KDDP 5KQY VRLA DCE7', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343464, '13', NULL, '100050577092857|thanhnguyen0366|7QUI PDWK Y5Z4 WIH2 AVZL IKFC ZHJN QFSW', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343465, '13', NULL, '100050356662639|ngocphan6046|CVNW BYRT 4ML7 QSDX AK6W JWD6 K3P6 EMPQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343466, '13', NULL, '100050331133597|phuongphan9615|VVIC GXIC CGNQ FMO2 KBZE 7R6K HM3K GMHJ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343467, '13', NULL, '100050625180590|tuongbui9296|ARUV RCZ7 SDCX CXDA 5CMM O3AQ HD5B B2MQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343468, '13', NULL, '100050332663619|tuando6142|YXVB FGVK AFB2 HHVY 663T 5GNQ IUDZ ZTCZ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343469, '13', NULL, '100050395991145|khanhle8625|Z3TG QV4Q KPBB JJSZ D3HK VJTK 7E3C 4BDR', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343470, '13', NULL, '100050493936847|khanhle3208|I4V3 3HVT GUW2 KJTF 4LSK TSLE 5F36 ISEV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343471, '13', NULL, '100050573732955|phuongvo4425|L5YU YYX4 BTT5 YAGP L572 LHOE 33HF VSLV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343472, '13', NULL, '100050502156134|sendo4812|KIT5 N522 JJRO QGCZ EZ6H UIX6 F37J 2UDC', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343473, '13', NULL, '100050420529974|minhvu8688|ULE5 V2BC F47M 6RHW JUFT AJ6A NCQQ HRGR', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343474, '13', NULL, '100050252746677|thuannguyen0423|U33R VUF5 R6CJ ZS6H Z3ZA IWYY FZEB NM3F', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343475, '13', NULL, '100050260936117|cucnguyen0419|SN4L PIY6 YZXD FJCT HKWM T5YE EZSF W7VV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343476, '13', NULL, '100050118262227|datpham1786|QDLE 2QUZ 3DGN VKUT TOL7 23BU ECWM JWY5', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343477, '13', NULL, '100050580182634|thuvo9576|F6AE POPK J42W RXFG I42J TMI6 5456 4GDF', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343478, '13', NULL, '100050525285006|datpham5072|U5TI HLPS FO65 ABMV 5CSR HVSG 6DW2 6XJG', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343479, '13', NULL, '100050164760455|bichngo6764|SWRC OI7E JT3U ILJX UXRA GOXI POWW M732', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343480, '13', NULL, '100050250046787|nhatvo2427|4RHH FYM3 JXOR RUCO OCVR 5TM6 2JLG JNTK', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343481, '13', NULL, '100050575742831|thuanho7911|B76G RIZR A5AT NCYH 2VL4 VPOV 7SQX NNZT', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343482, '13', NULL, '100050124952498|khoido1240|I7MJ CHLO GLEW EEFL HDLD NJ3F GZQI PBUK', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343483, '13', NULL, '100050557803595|senvo2678|WQ3W MYVM 5SXY LEGO ZWF5 AWYK 7AVW B4OV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343484, '13', NULL, '100050139921673|thuyho5880|4T2K FFNA TZQN AFUP BLZ6 P6CV YLME WJDQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343485, '13', NULL, '100050570493051|khanhhoang5655|6TWL XIOM HINL W5AA EWGB 4HKA AE4Z 7OWQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343486, '13', NULL, '100050536324405|tuongle1012â|LGQV XMQM KDKQ HWEV 72VB 33RW GJWQ S6OD', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343487, '13', NULL, '100050534824443|phuongvu6158|GRPZ PJET 47FD AXJ2 2J43 6TAR G7AG 6PPI', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343488, '13', NULL, '100050334253802|tuongdo5163|QALO HYOB IU5L XJUX ZALB 6PSJ 527I YZXE', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343489, '13', NULL, '100050246056910|yenduong8616|K2H2 K2Y6 OU35 QKRB 56TL CIYQ BIWT W347', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343490, '13', NULL, '100050305904394|datduong5721|FNXE SUER PAL6 2KG6 7Y6R 73ZY Z4AK TRKK', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343491, '13', NULL, '100050629200336|tuyenle4586|I2VG BNX5 ITMM AVJ5 CUL5 OEKO YUBV RZB3', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343492, '13', NULL, '100050109112813|khanhngo4679|D7GM IKY3 ZJW2 UVTM PPPP 5CQS 2YX7 RRBR', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343493, '13', NULL, '100050481308531|tuyetho1791|AA6F RKVU MYQX WRMU VRLV AQMX UEGD TPMQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343494, '13', NULL, '100050406310524|thudang7078|GLPO EQTH VA4E CIJS VA2J 25XZ 6EFV 3JX4', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343495, '13', NULL, '100050420229955|kieuphan6928|OSE3 MUTR KTKG EVJK 77PX ASTZ RZVE 5IJC', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343496, '13', NULL, '100050511065778|hoaiduong2814|JOQW N3DP IDCH LT67 2ABY JYRC DZFH IQYJ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343497, '13', NULL, '100050389361368|tuanngo6982|IKKR YHLC J76Z TLZX LIQM YHSS AELV 555O', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343498, '13', NULL, '100050289734796|huongnguyen3160|6RMT ZLUR VJHT HZ2Z 6HPV VYOK X2EX AGEJ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343499, '13', NULL, '100050264656053|baonguyen0477|4ED2 B5D3 5PRP RA4H L62W X77E 4MUG AN5F', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343500, '13', NULL, '100050626260456|hoaihuynh4406|UO5T MGGD MN6D 2Y73 D5A3 RNUU WOOE YZOS', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343501, '13', NULL, '100050089673741|nhatle1447|YQMC ZE6V EL5J JF4C C5GH ZCF6 PGQK RUNQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343502, '13', NULL, '100050134252026|baohoang8714|D2JV MA7N M5RK Y3PX NJYC 7BXT Z7DX EDPO', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343503, '13', NULL, '100050275275514|thanhbui4255|Q7HA 7VAF REKT 6VJV XSR6 6E5K ZBDC RIUP', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343504, '13', NULL, '100050465887894|giahuynh9782|3RPN F4B4 YTCM EW47 J7DZ NIDR ZK43 DS2G', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343505, '13', NULL, '100050290815017|hoaiho4583|C5KS BD23 QFCJ ELIH EQFH JYHH KTA3 XOXV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343506, '13', NULL, '100050633250074|tuyetle2330|ODGJ F3KA 3J77 S6WE DEEW 442J CHFG YO2F', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343507, '13', NULL, '100050393470759|baobui7251|IFI3 AVRL DVFI ZFN3 BV6T F5G4 HIUB VQJ7', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343508, '13', NULL, '100050508695631|lyngo5810|YL2K WNGI LDW5 H2XU EZDS IZGV KNAR DEEW', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343509, '13', NULL, '100050544753847|tannguyen1231|GFHZ 5VLI S2OU WVTK QEDC 7EDT CRCR 7PMQ', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343510, '13', NULL, '100050342443423|giaduong3509|B7SE QWYS YTU7 F3YR BJRG QOUT CYIJ OQ7X', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343511, '13', NULL, '100050229049046|thuyhuynh5923|ZVWH MD2E NZ6J 7DBF 7BGH QHKL J4GT GKYF', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343512, '13', NULL, '100050331253566|khanhvu4665|HRV6 RHDR KIFD 5G2Q IODO HVHI H4JE 5VRU', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343513, '13', NULL, '100050625930483|quyenbui9603|5GNK GL6L EVM7 KTZ2 RZQW GTUU QAYB IDYG', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343514, '13', NULL, '100050533894425|thaongo1285|64NH 6YXY 3B5N 6QF4 56QD 4Q2G MQBI ANG6', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343515, '13', NULL, '100050647050775|khanhhuynh9035|K52J BQG2 FMMW ZIOR BN65 ZLEY LPIY MJ2A', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343516, '13', NULL, '100050494057827|nhatvo0660|PBGT LZKY DA7N EZIK 7TD2 4CKT S2NC CF4L', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343517, '13', NULL, '100050437780197|thuho8853|WVRW VN7A 3JMU HMGP TOI4 R56Q NDUX 2U4I', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343518, '13', NULL, '100050576284064|thaovo8293|KW2N EZYU 5GZI Z6QO GASN HO62 EMCY PZEV', 'LIVE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343519, '13', NULL, '100050626771821|yendang8745|HYKI MAFQ BBUQ 5JDZ JSS3 6HFU S7LV J4QD', 'DIE', NULL, NULL, NULL);
INSERT INTO `taikhoan` VALUES (2343520, '13', NULL, '100050419241498|thaoduong5495|YHTH A53L SG5A OA23 4XZF TDWQ 7NS4 TLVX', 'DIE', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for thesieure
-- ----------------------------
DROP TABLE IF EXISTS `thesieure`;
CREATE TABLE `thesieure`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `magiaodich` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `sotien` int NULL DEFAULT NULL,
  `noidung` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thesieure
-- ----------------------------
INSERT INTO `thesieure` VALUES (1, 'admin', 'T604B372EB0F02', 684900, 'cmsnt', '2021-03-12 16:44:24', '1', 'Giao dịch thành công');
INSERT INTO `thesieure` VALUES (2, 'admin', 'T60716E4ABC7FF', 39900, 'Sellxu', '2021-04-10 16:22:45', '1', 'Giao dịch thành công');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `money` int NOT NULL DEFAULT 0,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `banned` int NOT NULL DEFAULT 0,
  `createdate` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `daily` int NULL DEFAULT 0,
  `otp` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `chietkhau` float NULL DEFAULT 0,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `chitieu` int NOT NULL DEFAULT 0,
  `total_money` int NOT NULL DEFAULT 0,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `used_money` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ZEgeLCYXQVyswWDankcJTbihxumRKofdPMABGzOpqUtHajrNvFIlS', 1940000, 'admin', 0, '2021-01-20 08:38:05', 'ntt2001811@gmail.com', '', 0, '', NULL, 0, NULL, 0, 2000000, '0947838128', 'Nguyễn Tấn Thành', 60000);

SET FOREIGN_KEY_CHECKS = 1;
