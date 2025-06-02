-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2025 lúc 12:05 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoesland`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `user_id` varchar(36) NOT NULL,
  `cart_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`user_id`, `cart_id`) VALUES
('bff367a1-ce5b-48e3-b797-035bb0db9443', 'f647503b-885f-4c8f-83de-912af875a19f'),
('8cf0a2c2-43ca-48a7-aae1-0b694f94916a', 'f9eadfde-b0ee-429b-8a8d-fb65f8835a33'),
('4000f874-6aa0-4dc7-9285-224500f5dc6e', 'f647503b-885f-4c8f-83de-912af875a19f'),
('4dc1fa88-e757-4524-9f76-c486d92d94a1', 'f647503b-885f-4c8f-83de-912af875a19f'),
('e46f87b5-cc02-4fbf-8a16-248ef663b088', 'f647503b-885f-4c8f-83de-912af875a19f'),
('74e4db57-997d-4d6a-8177-28e838cbf2ad', 'f647503b-885f-4c8f-83de-912af875a19f'),
('36154c6b-42ce-49c8-8b4b-e9842e3a07e6', 'f647503b-885f-4c8f-83de-912af875a19f'),
('bc194aa1-6395-4b2c-aa04-02f3d8d2bbef', 'f647503b-885f-4c8f-83de-912af875a19f'),
('1d7f420a-7dcc-45d7-80e0-fecaa3c43d99', 'f647503b-885f-4c8f-83de-912af875a19f'),
('b691d73a-6544-42ae-8d9f-1c7efa6d4916', 'f647503b-885f-4c8f-83de-912af875a19f'),
('17ce07fe-3719-45c2-bd2b-93629b5c4106', 'f647503b-885f-4c8f-83de-912af875a19f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `cart_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `size_id` varchar(36) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`cart_id`, `product_id`, `size_id`, `quantity`, `unit_price`) VALUES
('08e85b88-f0c7-4749-a540-43cfa90cc518', '1a158e86-1489-46bc-a54e-19640aafefb1', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('0e70f7f9-93d1-4c37-ba13-6973342f28e4', '51092288-baae-4376-9ca7-690496775906', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 100, 499000),
('0e70f7f9-93d1-4c37-ba13-6973342f28e4', '51092288-baae-4376-9ca7-690496775906', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 100, 499000),
('3f949178-0b2c-4a61-b36e-a27159e56a81', '572ea61f-93c4-4be2-834d-9229cda98120', '3c96a826-0f08-4d12-8566-beaf1256820f', 1, 499000),
('5e83fa0b-5f45-4944-b413-07da66f44992', '1a158e86-1489-46bc-a54e-19640aafefb1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 499000),
('5e83fa0b-5f45-4944-b413-07da66f44992', '1a158e86-1489-46bc-a54e-19640aafefb1', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 5, 499000),
('5e83fa0b-5f45-4944-b413-07da66f44992', '572ea61f-93c4-4be2-834d-9229cda98120', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('5f7b2d40-b248-40df-9f09-c74235fc6858', '1a158e86-1489-46bc-a54e-19640aafefb1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 5, 499000),
('5f7b2d40-b248-40df-9f09-c74235fc6858', '1a158e86-1489-46bc-a54e-19640aafefb1', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('7d54f904-13da-4b9d-9393-7875c46fbf01', '1a158e86-1489-46bc-a54e-19640aafefb1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 6, 499000),
('7d54f904-13da-4b9d-9393-7875c46fbf01', '572ea61f-93c4-4be2-834d-9229cda98120', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('84f7a2c1-a891-4b2e-ad62-79e470dd38fb', '1a158e86-1489-46bc-a54e-19640aafefb1', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('855cb7ca-341c-4c2b-80f4-76a70b8dc8ed', '572ea61f-93c4-4be2-834d-9229cda98120', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('9996ca86-c505-44db-9b1c-3d94e9137be4', '1a158e86-1489-46bc-a54e-19640aafefb1', '', 1, 499000),
('9996ca86-c505-44db-9b1c-3d94e9137be4', '1a158e86-1489-46bc-a54e-19640aafefb1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 499000),
('9996ca86-c505-44db-9b1c-3d94e9137be4', '1a158e86-1489-46bc-a54e-19640aafefb1', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('dafa626c-9843-4e82-82bd-c7d7efa147e2', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', '', 1, 599000),
('dafa626c-9843-4e82-82bd-c7d7efa147e2', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 599000),
('f2d31812-2006-4272-8326-49f006f159dd', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', '3c96a826-0f08-4d12-8566-beaf1256820f', 1, 599000),
('f2d31812-2006-4272-8326-49f006f159dd', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 599000),
('f2d31812-2006-4272-8326-49f006f159dd', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 599000),
('f2d31812-2006-4272-8326-49f006f159dd', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 599000),
('f647503b-885f-4c8f-83de-912af875a19f', '1a158e86-1489-46bc-a54e-19640aafefb1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 499000),
('f647503b-885f-4c8f-83de-912af875a19f', '45f1112f-7f44-4d60-9df6-cb409c4ff36a', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 100, 299000),
('f647503b-885f-4c8f-83de-912af875a19f', '572ea61f-93c4-4be2-834d-9229cda98120', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 499000),
('f647503b-885f-4c8f-83de-912af875a19f', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 599000),
('f647503b-885f-4c8f-83de-912af875a19f', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 599000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `code`, `name`, `category_image`, `description`) VALUES
('29d97f69-2be8-46fc-b46e-2a8e51d9a8f8', 'quanjean', 'Quần jean', 'quạnean.jpg', 'Quần jeans nam là trang phục có giá trị và thông dụng nhất trong tủ quần áo. Với những ưu điểm như chắc, bền, đẹp, các sản phẩm làm từ chất liệu jean mang lại cho người mặc, nhất là các chàng trai, vẻ ngoài mạnh mẽ và phong cách.'),
('4ff6687c-3e6d-4f84-bcaf-cf97db365cc4', 'aokhoacnam', 'Áo khoác nam', 'aokhoacnam.jpg', 'Áo khoác nam là trang phục luôn mang đến phong thái khác biệt, nổi bật nhất với nhiều màu sắc, nhiều kiểu dáng từ phong cách châu âu lịch lãm phong trần đến phong cách Hàn Quốc trẻ trung và sang trọng.'),
('7a8bbcc1-1ca1-4019-83f7-5f73e337a282', 'quankaki', 'Quần kaki', 'quankaki.jpg', 'Quần kaki nam là một trong những mẫu thời trang cá tính, đẳng cấp mà không một chàng trai nào có thể bỏ qua. Hiện nay, quần kaki nam có rất nhiều kiểu dáng cũng như mẫu mã và màu sắc nhằm tăng cho người dừng nhiều cơ hội lựa chọn.'),
('c127e918-d339-4544-9476-3d3a1cb15cde', 'Aosomi', 'Áo sơ mi nam', 'aosominam1.jpg', 'Áo sơ mi nam luôn là trang phục lựa chọn hàng đầu của nhiều chàng trai, bởi sự tiện ích và tính thời trang mà nó mang lại cho người mặc'),
('d55edfcb-7683-4321-b8f7-7dcfc5b7c71e', 'aothunnam', 'Áo thun nam', 'aothunam2.jpg', 'Mỗi năm áo thun nam lại có những biến hóa khác nhau để phù hợp với xu hướng thời trang đang hiện hành và hiện nay những kiểu áo thun họa tiết, phối chữ rất được các tín đồ thời trang mến mộ hay những chiếc áo thun với kiểu dáng đơn giản, dễ kết hợp cùng nhiều loại thời trang khác nhau cũng rất được lòng phái mạnh.'),
('e2ce57fa-c082-4bad-a8b8-b01ea96676a3', 'aolennam', 'Áo len nam', 'aolennam.jpg', 'Áo len nam vốn dĩ đã trờ thành xu hướng thời trang không còn quá xa lạ. Áo len nam đặc biệt được ưa thích và lựa chọn nhiều khi thời tiết chuyển mùa. Với chất liệu dày và ấm áp, mẫu áo này mang đến guu thời trang cực chất cho nhiều chàng trai.'),
('ede6f07e-1ca7-4f59-a29f-7b347b066310', 'quantay', 'Quần tây', 'quantay.jpg', 'Quần tây nam là item thời trang có từ lâu đời, đã quá quen thuộc nhưng luôn thịnh hành đối với cánh mày râu, đặc biệt là dân công sở.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` varchar(36) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `banner` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_event`
--

INSERT INTO `tbl_event` (`id`, `start_date`, `end_date`, `discount`, `code`, `name`, `description`, `banner`) VALUES
('11afef6c-bff6-432b-82eb-d44ba44743e2', '2023-02-08 00:00:00', '2023-02-14 23:59:00', 0.5, '#10', 'Tết Nguyên Đán', 'Giảm giá cực sốc khi khách hàng đến với shoesland vào dịp này.', 'even10.png'),
('2bc0c41b-0c08-43b7-8c45-d2f8c5c1566e', '2022-12-23 00:00:00', '2022-12-25 23:59:00', 0.5, '#8', 'Ngày lễ Giáng Sinh', 'Giảm giá cực sốc đối với các sản phẩm có màu đỏ và xanh lá.', 'even8.jpg'),
('2d5d30f9-066f-4839-a973-2aa971803024', '2023-11-01 08:00:00', '2024-01-10 22:00:00', 0.6, '#3', 'Ra mắt Sản phẩm Mới', 'Ra mắt sản phẩm mới cực hot. Bốc thăm giảm giá cực sốc cho 5 khách hàng may mắn.', 'even3.png'),
('452b9451-e86e-4048-a6ee-0d13dc857483', '2023-11-11 08:00:00', '2024-01-21 22:00:00', 0.4, '#4', 'Mua càng nhiều giảm càng nhiều', 'Mua từ 3 đôi trở lên nhận giảm giá cực sốc.', 'even4.png'),
('4cf28b83-1694-4e3d-af7b-5c0b3c4780a0', '2023-10-13 08:00:00', '2023-10-14 22:00:00', 0.5, '#7', 'Sự kiện BlackFriday', 'Giảm giá cực sốc khi khách hàng đến với shoesland vào dịp này.', 'even7.jpg'),
('8d7a68e9-1783-4aff-8c71-1814bcdbda46', '2023-10-01 08:00:00', '2023-10-30 22:00:00', 0.5, '#1', 'Ưu đãi tháng 10', 'Sự kiện giảm giá và khuyến mãi đặc biệt cho mùa đông đã tới.', 'even1.png'),
('afcd72e9-6ec2-4d47-8a82-50477d6216dd', '2023-12-17 08:00:00', '2024-01-30 22:00:00', 0.3, '#6', 'Ngày lễ kỉ niệm', 'Lễ kỉ niệm 40 năm của hãng Bitit, giảm giá sốc với các sản phẩm hãng Bitit.', 'even6.png'),
('c271c6ed-6926-4be9-afc6-b11b3e957ef3', '2023-10-15 08:00:00', '2024-10-30 22:00:00', 0.7, '#2', 'Flash Sale', 'Sale giá sốc-giảm đến 70%, freeship từ 2 đôi.', 'even2.png'),
('d3950d8f-7e44-4786-8caf-f480f2b34540', '2023-12-27 08:00:00', '2023-01-03 22:00:00', 0.5, '#9', 'Tết dương lịch', 'Giảm giá cực sốc khi khách hàng đến với shoesland vào dịp này.', 'even9.png'),
('f2822729-c278-4b25-9aba-6f2bd1a02133', '2023-12-01 08:00:00', '2024-01-16 22:00:00', 0.3, '#5', 'Chương trình mua giày cặp đôi', 'Khách hàng là cặp đôi sẽ nhận về ưu đãi, giảm giá và quà tặng giá trị.', 'even5.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `status_id` varchar(36) NOT NULL,
  `receive_phone` varchar(50) DEFAULT NULL,
  `receive_address` varchar(50) DEFAULT NULL,
  `delivery_cost` float DEFAULT NULL,
  `payment_id` varchar(36) NOT NULL,
  `description` longtext DEFAULT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `code`, `user_id`, `status_id`, `receive_phone`, `receive_address`, `delivery_cost`, `payment_id`, `description`, `createDate`) VALUES
('28b67ab0-63c5-41d0-bd0d-a219b3a38930', 'gYfRscGr', '', 'f1e30780-f494-477d-8fba-63d280843c91', '3364338867555', 'Phường Quang Trung, Thành phố Hà Giang, Tỉnh Hà Gi', 30000, '78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', '', '2025-03-13 02:11:12'),
('29441e61-a731-43e4-bce5-6995c47b74f5', 'GEsPiP2J', 'b691d73a-6544-42ae-8d9f-1c7efa6d4916', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '0883737366', 'Phường Mai Dịch, Quận Cầu Giấy, Thành phố Hà Nội', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 12:55:29'),
('426ad28d-a6a1-4358-8517-a48311fd3058', 'tlZppkZH', '1d7f420a-7dcc-45d7-80e0-fecaa3c43d99', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '0948776', 'Xã Cốc Mỳ, Huyện Bát Xát, Tỉnh Lào Cai', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 11:58:06'),
('7d32673d-9741-4ff6-a11b-c435cbb46628', 'ZmoMpc4F', '4000f874-6aa0-4dc7-9285-224500f5dc6e', 'f1e30780-f494-477d-8fba-63d280843c91', '0948773', 'Xã Bản Giang, Huyện Tam Đường, Tỉnh Lai Châu', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 11:07:06'),
('7dc58570-ef12-4610-a5c0-c5c6769840e8', 'vsGiWpK2', '12fe61d0-abc2-4a52-bdf9-9961799758b4', '6e5f0c4f-bec1-4766-9af6-8f5928f56287', '0948773', 'Phường Mai Dịch, Quận Cầu Giấy, Thành phố Hà Nội', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-08 23:58:32'),
('85dfbe81-e08c-4fc6-8c94-5bdbcd1c0201', 'u19wNo0V', '4dc1fa88-e757-4524-9f76-c486d92d94a1', 'f1e30780-f494-477d-8fba-63d280843c91', '345676543', 'Xã Sơn A, Thị xã Nghĩa Lộ, Tỉnh Yên Bái', 30000, '78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', '', '2025-03-08 22:00:31'),
('96907fbe-f0a1-45f0-a2e3-9f684738dc21', 'YFYtku28', '4000f874-6aa0-4dc7-9285-224500f5dc6e', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '08664774', 'Phường Mai Dịch, Quận Cầu Giấy, Thành phố Hà Nội', 30000, '78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', '', '2025-03-08 23:39:58'),
('ba3fefdc-1d20-4902-b5d8-ed5a80c4609c', '3sqosQHB', '4000f874-6aa0-4dc7-9285-224500f5dc6e', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '336433886444', 'Xã Phú Lũng, Huyện Yên Minh, Tỉnh Hà Giang', 30000, '2e198743-d03d-43db-ac59-3f2bb47d5de3', '', '2025-03-08 21:53:58'),
('c15a8ae1-350a-4b35-8210-60a3cf68d4e1', 'Z9pimbOZ', '4000f874-6aa0-4dc7-9285-224500f5dc6e', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '09747463', 'Phường Mai Dịch, Quận Cầu Giấy, Thành phố Hà Nội', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 00:07:05'),
('c688fbea-084d-44e4-8c3a-4592406c95f6', 'eaTwq5Qd', '74e4db57-997d-4d6a-8177-28e838cbf2ad', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '3364338866', 'Xã Bản Giang, Huyện Tam Đường, Tỉnh Lai Châu', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-08 23:07:23'),
('db89369a-717b-4d9e-a8aa-dab144dbc12d', '3d5UBnar', '12fe61d0-abc2-4a52-bdf9-9961799758b4', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '3364338867', 'Xã Sam Kha, Huyện Sốp Cộp, Tỉnh Sơn La', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-12 19:30:55'),
('dec3e59b-d74a-4b91-aabd-7367eedd988a', '0nNpYwdL', '4000f874-6aa0-4dc7-9285-224500f5dc6e', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '09484747', 'Xã Bình Lư, Huyện Tam Đường, Tỉnh Lai Châu', 30000, '78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', '', '2025-03-04 14:17:40'),
('e2b7381d-381a-4c30-897a-147797c36751', '1NSIj9ki', '17ce07fe-3719-45c2-bd2b-93629b5c4106', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '336433888666', 'Xã Minh Trí, Huyện Sóc Sơn, Thành phố Hà Nội', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 13:18:47'),
('e506a5b8-4cf7-4383-ad29-f3c45c91cb18', 'FwA1UINs', 'bc194aa1-6395-4b2c-aa04-02f3d8d2bbef', '10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', '096432322', 'Xã Yên Sơn, Huyện Yên Châu, Tỉnh Sơn La', 30000, 'cc01ac4e-e003-430c-9076-236b55a8991c', '', '2025-03-09 11:26:59'),
('f469f364-631f-4f07-b11f-011a42b4c9e5', 'ELN2dzeS', '12fe61d0-abc2-4a52-bdf9-9961799758b4', 'f1e30780-f494-477d-8fba-63d280843c91', '3364338867444', 'Xã Chiềng Sơ, Huyện Sông Mã, Tỉnh Sơn La', 30000, '78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', '', '2025-03-08 21:56:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `size_id` varchar(36) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_id`, `product_id`, `size_id`, `quantity`, `unit_price`) VALUES
('0f6385ad-d404-4522-9cd3-565c72c824d7', '211624d7-1de8-4d2e-9655-58e440d4ab81', '3c96a826-0f08-4d12-8566-beaf1256820f', 1, 299000),
('1716d673-5bb5-4b55-90a6-afeb7f36b2b1', '7f0f5819-7962-401c-b98f-5d7bfd92a003', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('28b67ab0-63c5-41d0-bd0d-a219b3a38930', 'd385c814-ed92-49cb-9892-da41b2d57281', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('29441e61-a731-43e4-bce5-6995c47b74f5', 'bb21c15f-0e59-4d99-9fac-31c4ecf4c39e', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('426ad28d-a6a1-4358-8517-a48311fd3058', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('5f75ce06-9143-4302-bc95-e4ae80274f89', '45f1112f-7f44-4d60-9df6-cb409c4ff36a', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 100, 299000),
('756b3010-07e3-4bf0-96af-17ce466cddc8', '211624d7-1de8-4d2e-9655-58e440d4ab81', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('7d32673d-9741-4ff6-a11b-c435cbb46628', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('7dc58570-ef12-4610-a5c0-c5c6769840e8', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('85dfbe81-e08c-4fc6-8c94-5bdbcd1c0201', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('96907fbe-f0a1-45f0-a2e3-9f684738dc21', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('b58d4ea1-41dc-4b18-8fc0-3eb057992c36', '7f0f5819-7962-401c-b98f-5d7bfd92a003', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 1200000),
('ba3fefdc-1d20-4902-b5d8-ed5a80c4609c', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('c1542473-2f2b-43c4-adc4-61d9e60daae3', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', 'c5d54bef-3f08-4898-a4e5-38251b7cb155', 1, 599000),
('c15a8ae1-350a-4b35-8210-60a3cf68d4e1', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('c688fbea-084d-44e4-8c3a-4592406c95f6', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('cbf2df98-3709-48ad-8f34-b77be680cd44', '45f1112f-7f44-4d60-9df6-cb409c4ff36a', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 100, 299000),
('db89369a-717b-4d9e-a8aa-dab144dbc12d', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 100, 299000),
('dec3e59b-d74a-4b91-aabd-7367eedd988a', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', '3c96a826-0f08-4d12-8566-beaf1256820f', 1, 299000),
('e2b7381d-381a-4c30-897a-147797c36751', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '7b865075-6c74-40ab-9f72-c220b7c6c8c3', 1, 299000),
('e506a5b8-4cf7-4383-ad29-f3c45c91cb18', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', 'bcaf1769-991d-47f1-96bc-d73aeb3848ac', 1, 299000),
('f469f364-631f-4f07-b11f-011a42b4c9e5', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', '3c96a826-0f08-4d12-8566-beaf1256820f', 1, 299000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment_type`
--

CREATE TABLE `tbl_payment_type` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment_type`
--

INSERT INTO `tbl_payment_type` (`id`, `name`, `code`, `description`) VALUES
('2e198743-d03d-43db-ac59-3f2bb47d5de3', 'Thanh toán trực tiếp tại cửa hàng', '#TTD&GN', 'Thanh toán bằng thẻ tín dụng hoặc thẻ ghi nợ là một phương thức phổ biến cho mua sắm trực tuyến và offline. Visa và MasterCard là hai loại thẻ phổ biến tại Việt Nam.'),
('78e09f60-bb2b-4bc7-86c2-ca27a33aa5c8', 'Thanh toán online', '#CKNN', 'Người mua có thể chuyển tiền trực tiếp từ tài khoản ngân hàng của họ sang tài khoản của người bán. Phương thức này thường được sử dụng cho các giao dịch lớn và trực tuyến.'),
('cc01ac4e-e003-430c-9076-236b55a8991c', 'Thanh toán khi nhận được hàng', '#TM', 'Thanh toán trực tiếp bằng tiền mặt là một phương thức phổ biến, đặc biệt là trong các giao dịch hàng ngày, mua sắm tại cửa hàng truyền thống hoặc chợ.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `category_id` varchar(36) NOT NULL,
  `event_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `name`, `description`, `price`, `createDate`, `category_id`, `event_id`) VALUES
('10e89455-1c60-4f56-82fa-533d92641f67', 'SP27', ' Quần Kaki Túi Nhỏ Kiểu Form Slimfit QK026 Màu Đen', '', 399000, '2025-03-13 00:09:56', '7a8bbcc1-1ca1-4019-83f7-5f73e337a282', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('1a158e86-1489-46bc-a54e-19640aafefb1', 'SP15', 'Áo Len Tay Dài Dệt Họa Tiết Quả Trám Form Regular AL012 Màu Nâu', '', 499000, '2025-03-12 23:40:16', 'e2ce57fa-c082-4bad-a8b8-b01ea96676a3', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('417b6a32-ff0f-4e36-9840-db893fab70e1', 'SP23', 'Quần Tây Phối Dây Sọc Ở Túi Sau Form Slimfit QT066 Màu Đen', '', 499000, '2025-03-12 23:57:02', 'ede6f07e-1ca7-4f59-a29f-7b347b066310', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('45f1112f-7f44-4d60-9df6-cb409c4ff36a', 'SP10', 'Áo Thun In Thêu Heritage Sau Lưng Form Loose AT157 Màu Be', '', 299000, '2025-03-12 19:20:30', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', 'SP6', 'Áo Overshirt Vải Caro Flannel Thêu Heritage Form Loose SM167', '', 299000, '2025-03-02 19:57:35', 'c127e918-d339-4544-9476-3d3a1cb15cde', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('4dba6203-4802-458c-9ed4-4f507250e80b', 'SP19', 'Quần Jean In Logo 4MEN Túi Sau Form Slimfit QJ108 Xanh biển đậm', '', 599000, '2025-03-12 23:49:12', '29d97f69-2be8-46fc-b46e-2a8e51d9a8f8', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('51092288-baae-4376-9ca7-690496775906', 'SP16', 'Áo Len Tay Dài Cổ V Sọc Dệt Vặn Thừng Form Regular AL013 Màu Trắng Kem', '', 499000, '2025-03-12 23:42:33', 'e2ce57fa-c082-4bad-a8b8-b01ea96676a3', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('572ea61f-93c4-4be2-834d-9229cda98120', 'SP25', 'Quần Tây Sidetab Regular Xếp Ly QT049 Màu Be', '', 499000, '2025-03-13 00:03:25', 'ede6f07e-1ca7-4f59-a29f-7b347b066310', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('5bec011b-b68e-475f-8278-52820eff339b', 'SP2', 'Áo Thun Cổ Tròn In Chữ Dream Form Regular AT163 Màu Nâu', '', 299000, '2025-03-12 19:10:50', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('5ec7b17d-811d-4967-9e21-5f01e8bb278d', 'SP29', 'Quần Kaki Slimfit Trơn QK018 Màu Xám', '', 399000, '2025-03-13 00:15:58', '7a8bbcc1-1ca1-4019-83f7-5f73e337a282', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('6498a6bf-f9f1-4edf-aebb-7031b27483d6', 'SP3', 'Áo Sơ Mi Vải Modal In Họa Tiết Sọc Form Regular SM170 Sọc Nâu', 'Áo sơ mi SM170 được làm từ Modal, mang lại sự thoải mái, mát mẻ suốt ngày dài. Điểm nhấn đặc biệt nằm ở phần dây tag sọc và xếp ly thân sau, mang đến phong cách nổi bật và ấn tượng.\r\n\r\nVới hai màu sọc nâu và sọc xanh, chiếc áo dễ phối với quần tây hoặc quần kaki cho một diện mạo lịch lãm, phù hợp với mọi dịp.', 299000, '2025-03-02 19:48:17', 'c127e918-d339-4544-9476-3d3a1cb15cde', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('68b1d793-d437-494e-8a2c-1a507a26b9a9', 'SP18', 'Quần Jean Thêu Chữ Eclectic Prep Form Regular QJ109 Xanh đen', '', 599000, '2025-03-12 23:46:50', '29d97f69-2be8-46fc-b46e-2a8e51d9a8f8', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('74a64477-7721-4559-a18a-d4ba9d2f34ae', 'SP22', 'Quần Tây Túi Sau Mổ 2 Cơi Trang Trí Dây Sọc Form Slimfit QT064 Màu Đen', '', 499000, '2025-03-12 23:56:23', 'ede6f07e-1ca7-4f59-a29f-7b347b066310', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('77c33593-b080-42fe-8331-45c0cd39475d', 'SP21', 'Quần Jeans Túi Đồng Hồ Kiểu Trang Trí Dây Sọc Form Slimfit QJ103 Xanh Biển', '', 599000, '2025-03-12 23:54:11', '29d97f69-2be8-46fc-b46e-2a8e51d9a8f8', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('79b027a1-21d5-44f3-a793-f3623fa5885e', 'SP26', 'Quần Kaki Thêu logo tròn 4M Premium Form Straight QK030 Màu Đen', '', 399000, '2025-03-13 00:06:41', '7a8bbcc1-1ca1-4019-83f7-5f73e337a282', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('8cd62566-20b1-4687-b426-13d544cfa17c', 'SP13', ' -28% Áo Khoác Dù Trượt Nước In Chữ M Ở Ngực Form Regular AK067', '', 599000, '2025-03-12 19:49:07', '4ff6687c-3e6d-4f84-bcaf-cf97db365cc4', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('9fa85649-d156-4ec9-a191-3380e41f4897', 'SP24', 'Quần Tây Sọc Túi Nắp Sau Form Slimfit QT061 Màu Xám', '', 499000, '2025-03-13 00:00:28', 'ede6f07e-1ca7-4f59-a29f-7b347b066310', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('a44fe32c-a823-4b9c-ba09-e91e4e8a68d5', 'SP8', 'Áo Thun In Logo DO Form Regular AT159 Màu Xanh Đen', '', 299000, '2025-03-12 19:15:47', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('a793b94e-24e2-40cf-9e38-a89432b7f7c5', 'SP1', 'Áo Sơ Mi Sọc Form Slimfit SM172 Sọc Trắng', 'Áo sơ mi kẻ sọc form slimfit mang đến vẻ thanh lịch và chỉnh chu với họa tiết kẻ sọc thời thượng và thiết kế ôm vừa vặn, tôn dáng. Chất liệu Poly cao cấp mềm mại, thoáng khí, ít nhăn, giúp áo giữ phom dáng hoàn hảo suốt cả ngày. Sự kết hợp giữa kẻ sọc và các gam màu cổ điển (Sọc Trắng, Sọc Đen, Sọc Xanh) tạo nên phong cách hiện đại, phù hợp cả công sở lịch lãm lẫn dạo phố trẻ trung. Áo đa năng, linh hoạt, lý tưởng cho nhiều dịp và dễ dàng phối đồ trong mọi thời tiết.', 299000, '2025-03-02 19:38:18', 'c127e918-d339-4544-9476-3d3a1cb15cde', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('b4335475-36c2-46d0-9c71-f279286e18c5', 'SP17', 'Áo Len Cổ Lọ Trơn AL008 Màu Rêu', '', 499000, '2025-03-12 23:44:31', 'e2ce57fa-c082-4bad-a8b8-b01ea96676a3', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('b985326e-2531-40a8-b81c-3f0a6f37c4bb', 'SP14', 'Áo Khoác Dù Trượt Nước Thêu 3D Logo 4M Form Regular AK069 Màu Rêu', '', 599000, '2025-03-12 19:51:00', '4ff6687c-3e6d-4f84-bcaf-cf97db365cc4', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('bb21c15f-0e59-4d99-9fac-31c4ecf4c39e', 'SP5', 'Áo Sơ Mi Vải Oxford Sọc Form Regular SM159 Sọc Cổ Vịt Áo Sơ Mi Vải Oxford Sọc Form Regular SM159 Sọc', '', 299000, '2025-03-02 19:55:33', 'c127e918-d339-4544-9476-3d3a1cb15cde', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('bdefc9f9-f688-4c94-aac9-4c671430bc89', 'SP12', 'Áo Khoác Varsity In Thêu Bọc Viền Logo Form Regular AK070', '', 599000, '2025-03-12 19:46:35', '4ff6687c-3e6d-4f84-bcaf-cf97db365cc4', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('d385c814-ed92-49cb-9892-da41b2d57281', 'SP9', 'Áo Thun In Cao Leisure Form Slimfit AT158 Màu Trắng', '', 299000, '2025-03-12 19:17:51', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('dad0fb45-1e51-4bb3-8d52-43acd9294512', 'SP20', 'Quần Jeans Đen Trơn Form Straight QJ102', '', 599000, '0000-00-00 00:00:00', '29d97f69-2be8-46fc-b46e-2a8e51d9a8f8', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('e54cc343-d878-470e-92b9-93c157f1ff01', 'SP28', 'Quần Kaki Nhung Tăm Lưng Thun Form Slim-Cropped QK023 Màu Be', '', 399000, '2025-03-13 00:12:17', '7a8bbcc1-1ca1-4019-83f7-5f73e337a282', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('ea0114f4-168e-4363-804d-41f6cc95c641', 'SP7', 'Áo Thun In Logo Tròn 4M Form Slimfit AT161 Màu Trắng', '', 299000, '2025-03-12 19:13:37', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('f1798a79-227b-469b-b98d-9b98f7183fea', 'SP4', 'Áo Thun Cổ Tròn In Chữ Stay Strong Form Regular AT162 Màu Đen', '', 100000, '2025-03-02 19:50:41', 'd55edfcb-7683-4321-b8f7-7dcfc5b7c71e', '8d7a68e9-1783-4aff-8c71-1814bcdbda46'),
('fb03222a-56cb-4153-a2a4-17185978a613', 'SP11', 'Áo Khoác Dù Ép Túi Hộp Form Regular AK065 Màu Đen', '', 599000, '2025-03-12 19:39:30', '4ff6687c-3e6d-4f84-bcaf-cf97db365cc4', '8d7a68e9-1783-4aff-8c71-1814bcdbda46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `main_image` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`id`, `product_id`, `description`, `content`, `main_image`) VALUES
('0062d397-a59d-4060-826a-54e8e8e618c4', 'bdefc9f9-f688-4c94-aac9-4c671430bc89', '', 'Images/ao-khoac-varsity-in-theu-boc-vien-logo-form-regular-ak070-18977-slide-products-676bab6a8565a.jpg', 1),
('0c664faa-fd22-455b-a5ef-26799b380b6a', '572ea61f-93c4-4be2-834d-9229cda98120', '', 'Images/-17641-slide-products-638f0463b35d6.jpg', 1),
('116d687a-61a6-47a0-9b06-cd46dd6b8a8b', '211624d7-1de8-4d2e-9655-58e440d4ab81', '', 'Images/aonam.jpg', 1),
('20c89fe4-fc4a-416b-bb3f-42127ce773e5', '1a158e86-1489-46bc-a54e-19640aafefb1', '', 'Images/ao-len-tay-dai-det-hoa-tiet-qua-tram-form-regular-al012-mau-nau-18748-slide-products-6758022621244.jpg', 1),
('2310043a-d1a9-49f7-a21a-8002738d4ff1', 'd385c814-ed92-49cb-9892-da41b2d57281', '', 'Images/ao-thun-in-cao-leisure-form-slimfit-at158-18832-slide-products-6719b08b58698.jpg', 1),
('23c54b00-920d-4bd8-8431-e5b345e2e429', '4dba6203-4802-458c-9ed4-4f507250e80b', '', 'Images/quan-jean-in-logo-4men-tui-sau-form-slimfit-qj108-xanh-bien-dam-18988-slide-products-677b781b5cea5.jpg', 1),
('28b2ed23-b268-46b5-82af-9acedc10f275', '74a64477-7721-4559-a18a-d4ba9d2f34ae', '', 'Images/quan-tay-tui-sau-mo-2-coi-trang-tri-day-soc-form-slimfit-qt064-19050-slide-products-6773a4366ad2c.jpg', 0),
('28c3d62c-e158-4431-b03b-9990bb8e8c19', '7f0f5819-7962-401c-b98f-5d7bfd92a003', '                                                                            ', 'Images/aosominam.jpeg', 1),
('28ebd3e0-86f8-4148-84fe-f3f357c08b2a', 'a793b94e-24e2-40cf-9e38-a89432b7f7c5', '', 'Images/Áo Sơ Mi Sọc Form Slimfit SM172 Sọc Trắng.jpg', 1),
('338ebbc8-d5e7-468b-8a8c-be7541410057', '7f0f5819-7962-401c-b98f-5d7bfd92a006', '                                                                            ', 'Images/aokhoacnam.jpg', 1),
('39505f78-8c78-44b4-8ec2-402788a932a9', '51092288-baae-4376-9ca7-690496775906', '', 'Images/ao-len-tay-dai-co-v-soc-det-van-thung-form-regular-al013-mau-trang-kem-18730-slide-products-6706a39ab9197.jpg', 1),
('421f6641-2ee1-4391-8a04-1382a4693406', '47e6dcd6-ed70-47d2-b25d-cf5c34903ee1', '', 'Images/Áo Overshirt Vải Caro Flannel Thêu Heritage Form Loose SM167.jpg', 1),
('482659c7-d2cb-44f7-860c-9553c9afc18a', '68b1d793-d437-494e-8a2c-1a507a26b9a9', '', 'Images/quan-jean-theu-chu-eclectic-prep-form-regular-qj109-xanh-den-18991-slide-products-677e56bcb805d.jpg', 1),
('4ce51e98-ed5f-4cec-9f01-b00a0d062f87', '5bec011b-b68e-475f-8278-52820eff339b', '', 'Images/ao-thun-co-tron-in-chu-dream-form-regular-at163-19078-slide-products-6787256142c38.jpg', 1),
('5289b835-af8c-41b8-81f8-6a07ac30d159', '6498a6bf-f9f1-4edf-aebb-7031b27483d6', '', 'Images/Áo Sơ Mi Vải Modal In Họa Tiết Sọc Form Regular SM170 Sọc Nâu.jpg', 1),
('5b2b6628-ed46-47d3-8d70-4a867754d339', 'fb03222a-56cb-4153-a2a4-17185978a613', '', 'Images/ao-khoac-du-ep-tui-hop-form-regular-ak065-mau-den-18982-slide-products-676babf1d5df2.jpg', 1),
('5b470a0c-abff-431c-b13d-08bf0312999b', '8cd62566-20b1-4687-b426-13d544cfa17c', '', 'Images/ao-khoac-bomber-truot-nuoc-2-tui-in-logo-form-regular-ak066-18933-slide-products-6758f95fba0ff.jpg', 1),
('5c61ff50-fbbb-4da8-9ae8-c01aff90372c', 'a44fe32c-a823-4b9c-ba09-e91e4e8a68d5', '', 'Images/ao-thun-in-logo-do-form-regular-at159-mau-xanh-den-18954-slide-products-676a299863f26.jpg', 1),
('5c79da88-e051-4146-9649-5030d36f2733', '7f0f5819-7962-401c-b98f-5d7bfd92a002', '', 'Images/aothunnam1.jpg', 1),
('6478b877-f7ba-46ce-8994-62b758a0dc56', '77c33593-b080-42fe-8331-45c0cd39475d', '', 'Images/quan-jeans-tui-dong-ho-kieu-trang-tri-day-soc-form-slimfit-qj103-18824-slide-products-6711e2325b3ad.jpg', 1),
('6813784e-a49b-4831-aaa7-2b113caa7cd6', 'dad0fb45-1e51-4bb3-8d52-43acd9294512', '', 'Images/quan-jeans-xanh-den-theu-4men-form-regular-qj101-18903-slide-products-673d9beea46a8.jpg', 1),
('6ca051d1-d99e-41e9-b4a3-3d20f11cfc79', '7f0f5819-7962-401c-b98f-5d7bfd92a004', '                                                                            ', 'Images/aothunnam.jpg', 1),

INSERT INTO `tbl_product_image` (`id`, `product_id`, `description`, `content`, `main_image`) VALUES
INSERT INTO `tbl_product_image` (`id`, `product_id`, `description`, `content`, `main_image`) VALUES
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `product_id` varchar(36) NOT NULL,
  `size_id` varchar(36) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `code`, `name`, `description`) VALUES
('3c96a826-0f08-4d12-8566-beaf1256820f', 'M', 'M', 'Cho người từ 55kg đến 65kg'),
('7b865075-6c74-40ab-9f72-c220b7c6c8c3', 'XL', 'XL', 'Cho người từ 75kg'),
('bcaf1769-991d-47f1-96bc-d73aeb3848ac', 'L', 'L', 'Cho người từ 65kg đến 76kg'),
('c5d54bef-3f08-4898-a4e5-38251b7cb155', 'S', 'S', 'Cho người từ 45kg đến 55kg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `code`, `name`, `description`) VALUES
('10dcaad2-8c9e-4078-85b4-8fbd6ed50c26', 'S5', 'Đã hủy', 'Trạng thái này xảy ra khi đơn hàng bị hủy bởi khách hàng hoặc do các lý do khác.'),
('2fb6fe9b-c49c-4358-8dc1-943e20f5f094', 'S4', 'Đã giao hàng', 'Đơn hàng đã được giao thành công đến tay khách hàng.'),
('30928569-9d4c-4e24-a2f5-447a1cc895b5', 'S2', 'Chờ lấy hàng', 'Sản phẩm đã đóng gói xong và chờ đối tác vận chuyển đến lấy.'),
('6e5f0c4f-bec1-4766-9af6-8f5928f56287', 'S3', 'Đang giao hàng', 'Đơn hàng đã rời kho và đang trên đường để được giao đến địa chỉ của khách hàng.'),
('f1e30780-f494-477d-8fba-63d280843c91', 'S1', 'Chờ xác nhận', 'Trạng thái đầu tiên khi khách hàng đặt hàng thành công và hệ thống ghi nhận thông tin đơn hàng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` varchar(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `user_image` longtext DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phonenumber` int(11) NOT NULL,
  `address` longtext DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `code`, `user_image`, `fullname`, `username`, `password`, `email`, `phonenumber`, `address`, `createDate`, `birthDate`, `gender`) VALUES
('12fe61d0-abc2-4a52-bdf9-9961799758b4', 'iTbMLOZe', '', 'tri', 'dangtri', '123', 'dangtri@gmail.com', 2147483647, '', NULL, NULL, NULL),
('17ce07fe-3719-45c2-bd2b-93629b5c4106', '862UkULk', NULL, NULL, 'dangcaotri1', '123', 'sdfghgf@gmail.com', 98765456, NULL, NULL, NULL, NULL),
('1d7f420a-7dcc-45d7-80e0-fecaa3c43d99', 'SvenQ7lx', NULL, NULL, 'assd', '123', 'rftghjh@gmail.com', 2147483647, NULL, NULL, NULL, NULL),
('2d60e628-4c73-4ff4-8bd1-bea2f17b99d8', '6ZrUh0HS', NULL, NULL, 'tri12fd', '123', 'adsđ@gmail.com', 98473634, NULL, NULL, NULL, NULL),
('36154c6b-42ce-49c8-8b4b-e9842e3a07e6', 'eWFHuxv8', NULL, NULL, 'tri123456', '123', 'tri@gmail.com', 984736365, NULL, NULL, NULL, NULL),
('3f7e0e36-b586-4687-a33e-8bfd29c5da0f', 'JysH1i5i', NULL, NULL, 'dangtri1', '12345', 'dfgh3@gmail.com', 984736365, NULL, NULL, NULL, NULL),
('4000f874-6aa0-4dc7-9285-224500f5dc6e', 'w7eeX75U', NULL, NULL, 'tri', '123456', 'thanh2344@gmail.com', 984736373, NULL, NULL, NULL, NULL),
('440a67e8-d651-4842-8acf-79177b5f7dd9', 'kPAurioQ', NULL, NULL, 'caotri12', '123', 'thanh2324@gmail.com', 984736354, NULL, NULL, NULL, NULL),
('4dc1fa88-e757-4524-9f76-c486d92d94a1', 'kMhGtPpd', NULL, NULL, 'tri12', '123', '12@gmail.com', 345543, NULL, NULL, NULL, NULL),
('58baad57-582d-469c-ae69-295d3afce747', 'PDbGerL9', NULL, NULL, 'tri123', '123', 'tri123@gmail.com', 2147483647, NULL, NULL, NULL, NULL),
('6e2bbac3-7e6b-48d2-a7fa-bd6103a10364', '3snOZd58', NULL, NULL, 'tria12', '123', 'abc@gmail.com', 987473873, NULL, NULL, NULL, NULL),
('7043d00a-ec1c-410c-bbc4-231f7294bda3', 'VQdryzl1', NULL, NULL, 'caotri', '123', 'thanh2344@gmail.com', 98473754, NULL, NULL, NULL, NULL),
('74e4db57-997d-4d6a-8177-28e838cbf2ad', 'TYfrmsCH', NULL, NULL, 'tri12345', '123', 'tri12@gmail.com', 984736356, NULL, NULL, NULL, NULL),
('7a24545e-85b0-487a-bb8e-feece0f66b88', 'z7WJ4elv', NULL, NULL, 'dangtri2', '123', 'tri2@gmail.com', 2147483647, NULL, NULL, NULL, NULL),
('9f6c7618-dd6e-4b84-a0f7-669542240e0a', 'SpwtdM50', NULL, NULL, 'root', '123456', 'phong29012003@gmail.com', 0, NULL, NULL, NULL, NULL),
('b691d73a-6544-42ae-8d9f-1c7efa6d4916', 'Jlbr3GSL', NULL, NULL, 'dangcaotri', '123', 'dangcaotri@gmail.com', 337846352, NULL, NULL, NULL, NULL),
('bc194aa1-6395-4b2c-aa04-02f3d8d2bbef', 'HhXrnqrj', NULL, NULL, 'nguyena', '123', 'dfghff@gmail.com', 2147483647, NULL, NULL, NULL, NULL),
('e46f87b5-cc02-4fbf-8a16-248ef663b088', 'R8o2lEpq', NULL, NULL, 'tri1234', '123', 'tri1234@gmail.com', 984736375, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`cart_id`,`product_id`,`size_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `tbl_payment_type`
--
ALTER TABLE `tbl_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`product_id`,`size_id`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
