-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 06:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `departurePlace` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`, `departurePlace`) VALUES
(43, 1, 'phuc', '2024-05-01', '2024-06-2', 'qưeqwe', '2024-06-12 16:47:08', 0, NULL, NULL, 'hà nội'),
(44, 1, 'phuc', '2024-05-01', '2024-06-2', 'qưeqwe', '2024-06-12 16:47:30', 0, NULL, NULL, 'hà nội'),
(45, 1, 'phuc', '2024-05-01', '2024-06-2', 'qưeqwe', '2024-06-12 16:48:04', 0, NULL, NULL, 'hà nội'),
(46, 1, 'phuc', '2024-05-01', '2024-06-2', 'qưeqwe', '2024-06-12 16:48:35', 0, NULL, NULL, 'hà nội'),
(47, 1, 'phuc', '2024-05-01', '2024-06-2', 'qưeqwe', '2024-06-12 16:49:15', 0, NULL, NULL, 'hà nội'),
(79, 2, 'hongphuc', '2024-05-09', '2024-06-10', '10 người', '2024-07-13 06:27:43', 0, NULL, NULL, 'Cao Bằng'),
(80, 2, 'hongphuc2', '2024-05-15', '2024-06-12', '5 nguoi', '2024-07-15 05:23:24', 2, 'u', '2024-07-15 05:23:49', 'Hà nội'),
(81, 23, 'hongphuc2', '2024-10-08', '2024-05-31', '5 nguoi', '2024-10-30 16:56:21', 0, NULL, NULL, 'Hà nội'),
(82, 23, 'hongphuc2', '2024-10-08', '2024-05-31', '5 nguoi', '2024-10-30 16:58:01', 0, NULL, NULL, 'Hà nội'),
(83, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'q', '2024-10-30 16:58:06', 0, NULL, NULL, 'bắc ninh'),
(84, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'q', '2024-10-30 16:59:49', 0, NULL, NULL, 'bắc ninh'),
(85, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'e', '2024-10-30 16:59:58', 0, NULL, NULL, 'bắc ninh'),
(86, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'e', '2024-10-30 17:00:43', 0, NULL, NULL, 'bắc ninh'),
(87, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'e', '2024-10-30 17:01:05', 0, NULL, NULL, 'bắc ninh'),
(88, 23, 'hongphuc2', '2024-05-01', '2024-06-10', 'e', '2024-10-30 17:01:57', 0, NULL, NULL, 'bắc ninh'),
(89, 23, 'hongphuc2', '2024-05-01', '2024-06-10', '2', '2024-10-30 17:21:48', 0, NULL, NULL, 'bắc ninh'),
(90, 23, 'hongphuc2', '2024-05-01', '2024-06-10', '2', '2024-10-30 17:23:40', 0, NULL, NULL, 'bắc ninh'),
(91, 23, 'hongphuc2', '2024-05-01', '2024-06-10', '2', '2024-10-30 17:24:39', 0, NULL, NULL, 'bắc ninh');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1),
(6, 'h?ng phúc', 'phuc@gmail.com', '3843243243', 'suport', 'ádsadas', '2024-06-02 08:52:11', NULL),
(7, 'phuc', 'khang@gmail.com', '3843243243', 'suport', 'tôi muốn giao diện đẹp hơn', '2024-07-12 16:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', 'tôi đã hoàn tiền', '2024-06-01 14:51:15'),
(10, 'test@gmail.com', 'Other', 'Test Sample', '2024-01-31 05:24:40', NULL, NULL),
(13, 'garima12@gmail.com', 'Booking Issues', 'I want some information ragrding booking', '2024-02-03 13:06:00', 'Infromation provided', '2024-02-03 13:06:26'),
(14, NULL, NULL, NULL, '2024-06-01 06:51:45', NULL, NULL),
(15, 'phuc', 'Refund', 'tôi muốn hoàn tiền', '2024-06-02 07:23:33', 'oke', '2024-06-02 08:47:36'),
(16, NULL, NULL, NULL, '2024-06-12 17:33:00', NULL, NULL),
(17, NULL, NULL, NULL, '2024-06-12 17:34:39', NULL, NULL),
(18, NULL, NULL, NULL, '2024-07-13 06:26:50', NULL, NULL),
(19, NULL, NULL, NULL, '2024-07-13 06:28:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'TERM', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">terms and condition page</span></p>\r\n										\r\n										'),
(2, 'PRIVACY', '																																																																																																																																																																<h3 class=\"content-title\" style=\"font-family: MyriadPro-Regular; font-weight: bold; color: rgb(42, 56, 143); margin: 0px 0px 15px; font-size: 24px; text-transform: uppercase; border-bottom: 2px solid rgb(209, 209, 209); padding-bottom: 2px;\"><span class=\"text-blue\" style=\"color: rgb(77, 99, 166); margin: 0px; position: relative;\">Tiêm Chủng Cho Người Lớn</span></h3><h3 class=\"content-title\" style=\"font-family: MyriadPro-Regular; color: rgb(42, 56, 143); margin: 0px 0px 15px; font-size: 24px; text-transform: uppercase; border-bottom: 2px solid rgb(209, 209, 209); padding-bottom: 2px;\"><div class=\"row margin-top-20\" style=\"margin-top: 20px; clear: both; color: rgb(109, 110, 112); font-size: 16px; text-transform: none;\"><div class=\"col-xs-12\" style=\"width: 1170px;\"><h4 style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Theo thống kê của Tổ chức Y tế Thế giới WHO, mỗi năm có đến 600.000 người lớn tử vong vì những căn bệnh truyền nhiễm nguy hiểm có thể phòng ngừa bằng vắc xin. Trong khi đó, người lớn lại là nhóm có tỷ lệ tiêm chủng thấp vì chưa quan tâm hoặc thiếu thông tin về việc tiêm chủng vắc xin cho người lớn. Điều này không chỉ ảnh hưởng đến sức khoẻ của chính họ và đặc biệt là nguy cơ lây lan bệnh dịch sang cho trẻ em. Người lớn hãy chủ động tiêm phòng để bản thân phòng tránh các căn bệnh nguy hiểm, đồng thời bảo vệ sức khỏe của gia đình và cộng đồng.</span></h4><div style=\"\"><img src=\"https://vnvc.vn/wp-content/uploads/2020/04/2.jpg\" alt=\"ád\" align=\"left\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><h4 style=\"\"><ul style=\"\"><li style=\"\"><span style=\"font-weight: bold;\">Những điều cần biết trước khi tiêm&nbsp;</span></li></ul><div><span style=\"font-weight: bold;\"><span style=\"font-family: MyriadPro-Regular; font-size: 16px;\">Những điều cần biết trước khi tiêm chủng giúp phát hiện bất thường, tạm hoãn tiêm hoặc không tiêm một loại vắc xin nào đó, đảm bảo an toàn cho người được tiêm chủng.</span></span></div></h4></div><div style=\"\"><ul style=\"font-family: Montserrat, sans-serif; font-size: 18px;\"><li><span style=\"font-weight: bold;\">Những điều cần biết sau khi tiêm&nbsp;</span></li></ul></div><div style=\"\"><span style=\"font-weight: bold;\">Hướng dẫn chi tiết những điều cần biết sau khi tiêm chủng, cách chăm sóc khoa học và phương pháp theo dõi sau tiêm giúp đảm bảo an toàn tiêm chủng cho người được tiêm.<br></span></div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><ul style=\"font-family: Montserrat, sans-serif; font-size: 18px;\"><li><span style=\"font-weight: bold;\">Các loại vắc xin cho người lớn</span></li></ul></div><div style=\"\"><span style=\"font-weight: bold;\">Theo tình hình dịch tễ và đặc điểm sức khỏe người trưởng thành, các chuyên gia đưa ra khuyến cáo các loại vắc xin cho người lớn, trong đó có 6 loại đặc biệt ưu tiên.<br></span></div><div style=\"font-weight: 400;\"><br></div></div></div></h3><div class=\"wp-block-image\" style=\"color: rgb(30, 26, 26); font-family: Inter, sans-serif;\"></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(3, 'ABOUTUS', '																																																																																																																																																						<div style=\"text-align: justify;\"><h3 class=\"content-title\" style=\"font-family: MyriadPro-Regular; font-weight: bold; color: rgb(42, 56, 143); margin: 0px 0px 15px; font-size: 24px; text-transform: uppercase; border-bottom: 2px solid rgb(209, 209, 209); padding-bottom: 2px; text-align: start;\"><span class=\"text-blue\" style=\"color: rgb(77, 99, 166); margin: 0px; position: relative;\">Tiêm Chủng Cho Trẻ Em</span></h3><h6><ul style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); text-align: left;\"><li><div class=\"row margin-top-20\" style=\"margin-top: 20px; clear: both; color: rgb(109, 110, 112); font-family: MyriadPro-Regular; font-size: 16px;\"><div class=\"col-xs-12\" style=\"width: 1170px;\"><p style=\"text-align: justify;\">Từ khi có vắc xin, Việt Nam đã bảo vệ hơn 1.6 triệu trẻ em khỏi gần 30 bệnh lý truyền nhiễm có thể gây tử vong; thanh toán thủy đậu từ năm 1979; thanh toán bại liệt từ năm 2000; thanh toán uốn ván sơ sinh từ năm 2005; tiết kiệm hàng ngàn tỷ đồng mỗi năm cho các chi phí chăm sóc y tế… Chúng ta hoàn toàn có thể làm giảm tỷ lệ mắc bệnh, giảm biến chứng, giảm tử vong ở trẻ em dưới 5 tuổi do một số bệnh truyền nhiễm nguy hiểm gây ra nhờ chủng ngừa. Hãy chủ động tiêm vắc xin để con yêu lớn lên an toàn và khỏe mạnh!</p></div></div></li></ul></h6><h4></h4><h5></h5><h6><ul style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); text-align: left;\"><li><span style=\"color: rgb(109, 110, 112); font-size: x-large;\"><span style=\"font-family: arial; font-weight: bold;\">&nbsp; </span><span style=\"font-weight: bold; font-family: arial;\">Lịch tiêm chủng cho trẻ</span></span></li></ul></h6></div><div style=\"text-align: justify;\"><span style=\"font-family: arial;\"><span style=\"color: rgb(109, 110, 112); text-align: start;\">&nbsp; &nbsp; &nbsp; &nbsp; Cập nhật mới và đầy đủ nhất lịch tiêm chủng cho trẻ em, đảm bảo bé yêu được chủng ngừa sớm, đầy đủ, đúng lịch, bảo vệ bé trước nhiều bệnh truyền nhiễm nguy hiểm.</span><span style=\"color: rgb(109, 110, 112); font-size: x-large;\"><br></span></span><ul style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); text-align: left;\"><li><span style=\"font-size: x-large; font-family: arial;\"><span style=\"color: rgb(109, 110, 112); text-align: justify; font-weight: bold;\"><img src=\"https://vnvc.vn/wp-content/uploads/2020/04/1-1.jpg\" alt=\"aa\" align=\"none\">!</span><br></span></li><li><span style=\"font-weight: bold; font-size: large; font-family: arial;\"><img style=\"text-align: justify; color: rgb(51, 51, 51);\">Những điều cần biết trước khi tiêm</span></li></ul><div style=\"text-align: left;\"><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Những điều cần biết trước khi tiêm giúp bác sĩ phát hiện bất thường, tạm hoãn tiêm hoặc không tiêm một loại vắc xin nào đó, đảm bảo an toàn cho trẻ khi đi tiêm chủng.</span></div><div style=\"text-align: left;\"><ul style=\"margin-bottom: 1rem; color: rgb(33, 37, 41);\"><li><span style=\"font-weight: bold; font-size: large; font-family: arial;\"><img style=\"text-align: justify; color: rgb(51, 51, 51);\">Những điều cần biết sau khi tiêm</span><img style=\"color: rgb(51, 51, 51); text-align: justify;\"><img style=\"color: rgb(51, 51, 51); text-align: justify;\"></li></ul></div><div style=\"text-align: left;\"><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\">Hướng dẫn chi tiết những điều cần biết sau khi tiêm chủng, những phương pháp giúp phụ huynh theo dõi và chăm sóc trẻ sau tiêm, đảm bảo an toàn tiêm chủng cho trẻ.</span><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\">&nbsp;&nbsp; &nbsp;&nbsp;</span></div><div style=\"text-align: left;\"><ul><li><span style=\"color: rgb(33, 37, 41); font-family: arial; font-size: large; font-weight: 700;\">Các loại vắc xin cho trẻ em&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img style=\"text-align: justify;\"><img style=\"text-align: justify;\"><img style=\"text-align: justify;\"></li></ul></div><div style=\"text-align: left;\"><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\">&nbsp; &nbsp; &nbsp;Trung tâm tiêm chủng Bắc Ninh có đủ các loại vắc xin cho trẻ em, được nhập khẩu từ nước ngoài của các hãng sản xuất uy tín, nổi tiếng Thế giới, và số ít các vắc xin được sản xuất&nbsp; tại Việt Nam.</span><span style=\"color: rgb(109, 110, 112); font-family: MyriadPro-Regular;\"><br></span></div></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'CONTACT', '										<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\">THÔNG TIN LIÊN HỆ</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\">ADDRESS : Đại Học Công Nghệ Đông Á / EAUT</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\">SDT : 02132131332</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\"><br></span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageType` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackagePrice` int(100) DEFAULT NULL,
  `PackageFetures` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageDetails` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(23, ' Qdenga ', 'Người lớn ', 'Bắc Ninh', 3512332, 'Sản xuất tại Đức', 'Vắc xin Qdenga là chế phẩm sinh học đặc biệt có khả năng phòng bệnh sốt xuất huyết do virus Dengue gây ra, có khả năng bảo vệ chống lại cả 4 nhóm huyết thanh của virus dengue, bao gồm DEN-1, DEN-2, DEN-3 và DEN-4, được chỉ định tiêm cho người từ 4 tuổi trở lên với hiệu lực bảo vệ hơn 80% nguy cơ mắc bệnh do 4 tuýp virus Dengue và trên 90% nguy cơ nhập viện, mắc bệnh nặng và biến chứng nguy hiểm do bệnh sốt xuất huyết gây ra.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nĐường tiêm\r\n•	Sau khi hoàn nguyên hoàn toàn vắc xin đông khô với chất pha loãng (dung môi), Qdenga nên được tiêm dưới da, tốt nhất là ở cánh tay trên ở vùng cơ delta.\r\n•	Qdenga không được tiêm vào mạch, không được tiêm trong da hoặc tiêm bắp.\r\n•	Không nên trộn vắc xin trong cùng một ống tiêm với bất kỳ loại vắc xin hoặc sản phẩm thuốc tiêm nào khác.\r\nChống chỉ định\r\n•	Quá mẫn cảm với hoạt chất hoặc với bất kỳ tá dược nào hoặc quá mẫn cảm với liều Qdenga trước đó\r\n•	Những người bị suy giảm miễn dịch bẩm sinh hoặc mắc phải, bao gồm sử dụng các liệu pháp ức chế miễn dịch như hóa trị hoặc dùng corticosteroid toàn thân liều cao (ví dụ: với liều 20mg/ngày hoặc liều tương đương với prednisone 2 mg/kg/ngày trong 2 tuần trở lên) trong vòng 4 tuần trước khi tiêm chủng, tương tự như với các vắc xin sống giảm độc lực khác\r\n•	Những người nhiễm HIV có triệu chứng hoặc nhiễm HIV không có triệu chứng kèm theo bằng chứng suy giảm chức năng hệ miễn dịch\r\n•	Phụ nữ có thai\r\n•	Phụ nữ cho con bú\r\nThận trọng khi sử dụng\r\nGiống như tất cả các loại vắc xin khác, cần có sẵn phương pháp điều trị y tế thích hợp và giám sát trong trường hợp xảy ra phản ứng phản vệ hiếm gặp sau khi tiêm vắc xin. Trước khi tiêm chủng, bác sĩ khám sàng lọc sẽ xem xét bệnh sử của người được tiêm phòng (đặc biệt là về lần tiêm chủng trước đó và các phản ứng quá mẫn có thể xảy ra sau khi tiêm chủng).\r\n1. Bệnh cấp tính\r\nNên hoãn tiêm vắc xin Qdenga ở những đối tượng bị bệnh sốt nặng cấp tính. Sự hiện diện của một bệnh nhiễm trùng nhỏ, chẳng hạn như cảm lạnh, không nên dẫn đến việc trì hoãn tiêm chủng.\r\n2. Các phản ứng liên quan đến lo âu\r\nCác phản ứng liên quan đến lo âu, bao gồm phản ứng phế vị (ngất), tăng thông khí hoặc các phản ứng liên quan đến căng thẳng, có thể xảy ra trong quá trình tiêm chủng như một phản ứng tâm lý đối với việc sợ kim tiêm. Điều quan trọng là phải có các biện pháp phòng ngừa để tránh chấn thương do ngất.\r\n3. Phụ nữ trong độ tuổi sinh sản\r\nPhụ nữ trong độ tuổi sinh sản nên tránh mang thai ít nhất một tháng sau khi tiêm vắc xin.\r\n4. Phụ nữ mang thai\r\nCó rất ít dữ liệu nghiên cứu về việc tiêm vắc xin Qdenga ở phụ nữ mang thai và không đủ để kết luận ảnh hưởng của vắc xin Qdenga đối với thai kỳ.\r\nVắc xin Qdenga là vắc xin sống giảm độc lực, do đó chống chỉ định tiêm vắc xin khi mang thai.\r\n5. Trên phụ nữ cho con bú\r\nVắc xin Qdenga chống chỉ định tiêm trong thời gian cho con bú.\r\n6. Khả năng sinh sản\r\nChưa có bất kỳ dữ liệu nghiên cứu nào về ảnh hưởng của vắc xin với khả năng sinh sản ở người.\r\nTương tác thuốc\r\n•	Đối với những bệnh nhân được điều trị bằng globulin miễn dịch hoặc các sản phẩm có chứa globulin miễn dịch, chẳng hạn như truyền máu, các chế phẩm từ máu, huyết thanh, nên hoãn tiêm ít nhất 6 tuần và tốt nhất là 3 tháng sau khi kết thúc điều trị trước khi tiêm phòng vắc xin Qdenga.\r\n•	Không nên tiêm vắc xin Qdenga cho những đối tượng đang điều trị bằng các liệu pháp ức chế miễn dịch như hóa trị hoặc dùng corticosteroid toàn thân liều cao trong vòng 4 tuần trước khi tiêm chủng.\r\n•	Nếu Qdenga được tiêm cùng lúc với một loại vắc xin khác, vắc xin phải luôn được tiêm ở các vị trí tiêm khác nhau trên cơ thể.\r\n•	Vắc xin Qdenga có thể được tiêm đồng thời với vắc xin viêm gan A, sốt vàng da.\r\nTác dụng không mong muốn\r\nCác phản ứng phụ thường gặp sau tiêm vắc xin là đau, nổi ban đỏ tại chỗ tiêm, nhức đầu, đau cơ, khó chịu, cơ thể suy nhược, sốt nhẹ và các phản ứng nhiễm trùng đường hô hấp trên như có thể viêm mũi họng, viêm amidan. Những phản ứng phụ sau tiêm vắc xin Qdenga này thường nhẹ và chỉ kéo dài trong vòng 1-3 ngày sau khi tiêm. Các phản ứng phụ của vắc xin Qdenga ở lần tiêm thứ hai thường ít gặp hơn ở lần tiêm đầu tiên.\r\nRất hiếm khi gặp phải tình trạng xuất huyết tại chỗ tiêm và các phản ứng phụ rối loạn tiêu hóa, rối loạn da và mô dưới da như đau bụng, tiêu chảy, buồn nôn, nôn mửa, phát ban, ngứa ngáy, nổi mề đay, phù mạch…\r\nBảo quản\r\n•	Vắc xin được bảo quản ở nhiệt độ từ 2 –  8°C.\r\n•	Tránh tiếp xúc với chất bảo quản, thuốc sát trùng, chất tẩy rửa và các chất chống vi rút khác vì chúng có thể làm bất hoạt vắc xin.\r\n•	Chỉ sử dụng ống tiêm vô trùng không chứa chất bảo quản, chất khử trùng, chất tẩy rửa và các chất chống virus khác để pha và tiêm Qdenga.\r\n•	Qdenga phải được hoàn nguyên trước khi dùng.\r\n2. Đối tượng\r\nVắc xin Qdenga được chỉ định phòng ngừa bệnh sốt xuất huyết cho bất kỳ loại huyết thanh virus sốt xuất huyết nào gây ra ở những người từ 4 tuổi trở lên.\r\n3. Phác đồ, lịch tiêm\r\nNgười từ 4 tuổi trở lên, áp dụng lịch tiêm 2 mũi:\r\n•	Mũi 1: lần tiêm đầu tiên trong độ tuổi.\r\n•	Mũi 2: cách mũi đầu tiên 3 tháng.\r\n4. Phản ứng sau tiêm\r\nGiống như tất cả các loại vắc xin/thuốc khi được đưa vào cơ thể để chống lại virus/vi khuẩn, người được tiêm chủng có khả năng gặp phải các phản ứng sau tiêm tại chỗ hoặc toàn thân, thường nhẹ không đáng lo và sẽ nhanh khỏi như:\r\n•	Triệu chứng tại chỗ tiêm: đau tại chỗ tiêm, đau cơ, ban đỏ\r\n•	Triệu chứng toàn thân: nhức đầu, khó chịu, suy nhược, sốt\r\nNhững tác dụng phụ này thường nhẹ, kéo dài từ 1 – 3 ngày và và ít gặp hơn sau mũi tiêm thứ hai.\r\n', 'ODENGA.jpg', '2024-10-30 16:15:24', '2024-10-30 16:18:43'),
(24, ' Vắc xin Shingrix ', 'Người lớn từ 50 tuổi trở lên', 'Bắc Ninh', 2120333, 'sản xuất tại Bỉ', 'Vắc xin Shingrix là sinh phẩm y tế được chỉ định để phòng bệnh zona thần kinh (Herpes Zoster) hay còn gọi là giời leo và các biến chứng liên quan đến Herpes Zoster, như đau dây thần kinh sau khi mắc zona (PHN). Vắc xin Shingrix được chỉ định sử dụng để tiêm ngừa cho người lớn từ 50 tuổi trở lên và người từ 18 tuổi trở lên có nguy cơ mắc zona thần kinh.Phản ứng sau tiêm\r\nGiống như tất cả các loại vắc xin/thuốc khi được đưa vào cơ thể để chống lại virus/vi khuẩn, người được tiêm chủng có khả năng gặp phải các phản ứng sau tiêm tại chỗ hoặc toàn thân, thường nhẹ không đáng lo và sẽ nhanh khỏi như:\r\n•	Phản ứng toàn thân: đau đầu, các triệu chứng tiêu hóa (buồn nôn, nôn, tiêu chảy và/hoặc đau bụng), đau cơ, khó chịu, mệt mỏi, ớn lạnh, sốt.\r\n•	Phản ứng tại chỗ: đau, sưng, đỏ vị trí tiêm.\r\nCác phản ứng quá mẫn là hiếm gặp như phát ban, mề đay, phù mạch\r\n', 'shin.jpg', '2024-10-30 16:39:30', NULL),
(25, 'Pneumovax 23 ', 'trẻ em từ 2 tuổi trở lên, thanh thiếu niên và người lớn', 'Bắc Ninh', 2520333, 'sản xuất tại Mỹ', 'Pneumovax 23, hay còn được biết đến với tên gọi vắc xin Polysaccharide phế cầu 23-valent, là vắc xin được chỉ định để ngăn ngừa các bệnh nhiễm trùng do vi khuẩn phế cầu (Streptococcus pneumoniae) gây ra như viêm phổi, viêm màng não, nhiễm khuẩn huyết (nhiễm trùng máu)…Bảo quản\r\nPneumovax 23 cần được bảo quản ở nhiệt độ từ 2°C đến 8°C (36°F đến 46°F), tránh đông lạnh. Phải đảm bảo rằng vắc xin được bảo quản đúng quy định trước khi sử dụng để đảm bảo hiệu quả tối đa.\r\n2. Đối tượng\r\nVắc xin Pneumovax 23 được khuyến cáo sử dụng cho trẻ em từ 2 tuổi trở lên, thanh thiếu niên và người lớn\r\n3. Phác đồ, lịch tiêm\r\nLịch tiêm cơ bản:\r\n•	Trẻ em từ 2 tuổi trở lên và người lớn: Tiêm 01 liều cơ bản\r\n•	Không khuyến cáo tiêm cho trẻ em dưới 2 tuổi vì độ an toàn và hiệu quả của vắc xin chưa được xác định và đáp ứng kháng thể có thể kém.\r\nLịch tiêm chủng lại: Người có nguy cơ cao mắc bệnh phế cầu xâm lấn (≥2 tuổi): tiêm chủng lại 5 năm sau liều cơ bản hoặc theo chỉ định của bác sĩ điều trị.\r\n4. Điều kiện trước tiêm\r\nPhù hợp với các điều kiện khám sàng lọc trước tiêm chủng theo hướng dẫn của Bộ Y tế về khám sàng lọc trước tiêm chủng\r\n5. Khoảng cách với vắc xin khác\r\nĐối với các vắc xin phế cầu cộng hợp như phế cầu 10, phế cầu 13:\r\n•	Không tiêm đồng thời vắc xin Pneumovax 23 với các vắc xin phế cầu cộng hợp khác như Phế cầu 10, phế cầu 13 trong cùng buổi tiêm chủng.\r\n•	Khoảng cách giữa vắc xin Pneumovax 23 với các vắc xin phế cầu cộng hợp khác phụ thuộc vào tình trạng sức khỏe của từng người (theo chỉ định của bác sĩ khám sàng lọc hoặc bác sĩ điều trị)\r\nĐối với các vắc xin khác: Có thể tiêm đồng thời trong cùng buổi tiêm chủng\r\n6. Phản ứng sau tiêm chủng\r\nGiống như tất cả các loại vắc xin/thuốc khi được đưa vào cơ thể để chống lại virus/vi khuẩn, người được tiêm chủng có khả năng gặp phải các phản ứng sau tiêm tại chỗ hoặc toàn thân, thường nhẹ không đáng lo và sẽ nhanh khỏi như:\r\n•	Triệu chứng toàn thân: sốt, mệt mỏi, đau đầu…\r\n•	Triệu chứng tại chỗ: ban đỏ, chai cứng, đau sưng nhức tại vết tiêm\r\n', 'z5983877450559_d92eed4465bb74cc2f77685fb9a4889b.jpg', '2024-10-30 16:42:14', NULL),
(26, ' Bexsero ', 'Trẻ em và người lớn từ 2 tháng tuổi đến 50 tuổi ', 'Bắc Ninh', 2720333, 'sản xuất tại Ý', 'Đối với người khỏe mạnh\r\nTrẻ từ 2 tháng tuổi đến < 6 tháng tuổi có lịch tiêm 2 mũi cơ bản:\r\n•	Mũi 1: lần tiêm đầu tiên\r\n•	Mũi 2: cách mũi 1 ít nhất 2 tháng\r\nMũi nhắc được khuyến cáo tiêm cho trẻ từ 12 tháng tuổi trở lên và cách mũi 2 tối thiểu 6 tháng.\r\nTrẻ từ tròn 6 tháng đến dưới 12 tháng tuổi có lịch tiêm 2 mũi cơ bản:\r\n•	Mũi 1: lần tiêm đầu tiên\r\n•	Mũi 2: cách mũi 1 ít nhất 2 tháng\r\nMũi nhắc được khuyến cáo tiêm cho trẻ từ 12 tháng tuổi trở lên và cách mũi 2 tối thiểu 2 tháng.\r\nTrẻ từ tròn 1 tuổi đến dưới 2 tuổi có lịch tiêm 2 mũi cơ bản:\r\n•	Mũi 1: lần tiêm đầu tiên\r\n•	Mũi 2: cách mũi 1 ít nhất 2 tháng\r\nMũi nhắc được khuyến cáo cách mũi 2 tối thiểu 12 tháng.\r\nTrẻ từ tròn 2 tuổi đến 50 tuổi có lịch tiêm 2 mũi cơ bản:\r\n•	Mũi 1: lần tiêm đầu tiên\r\n•	Mũi 2: cách mũi 1 ít nhất 1 tháng\r\nĐối với người có nguy cơ mắc não mô cầu\r\nKhách hàng đến các trung tâm tiêm chủng Bắc Ninh để được bác sĩ tư vấn và chỉ định tiêm ngừa\r\n', 'vac-xin-bexsero-gsk.jpg', '2024-10-30 16:44:54', NULL),
(27, 'Prevenar 13 ', 'cho trẻ từ 9 tháng đến 55 tuổi ', 'Bắc Ninh', 1220333, 'sản xuất tại Bỉ', 'Người có nguy cơ cao mắc Não mô cầu (có bệnh lý nền, dùng thuốc ức chế miễn dịch…)*:\r\nTrẻ dưới 7 tuổi:\r\n•	2 mũi cơ bản cách nhau ít nhất 2 tháng\r\n•	Tiêm 1 mũi nhắc sau mũi cơ bản cuối cùng ít nhất 3 năm\r\n•	Sau đó mỗi 5 năm\r\nNgười tròn 7 tuổi trở lên và người lớn:\r\n•	2 mũi cơ bản cách nhau ít nhất 2 tháng\r\n•	Sau đó mỗi 5 năm\r\n\r\n', 'z5983877450559_d92eed4465bb74cc2f77685fb9a4889b.jpg', '2024-10-30 16:47:30', NULL),
(28, 'Gardasil 9 ', 'nam giới và nữ giới từ 9 đến 45 tuổi.', 'Bắc Ninh', 3220333, 'sản xuất tại Mỹ', 'Vắc xin thế hệ mới Gardasil 9 được xem là vắc xin bình đẳng giới vì mở rộng cả đối tượng và phạm vi phòng bệnh rộng hơn ở nam và nữ giới, bảo vệ khỏi 9 tuýp virus HPV phổ biến 6, 11, 16, 18, 31, 33, 45, 52 và 58 gây bệnh ung thư cổ tử cung, ung thư âm hộ, ung thư âm đạo, ung thư hậu môn, ung thư hầu họng, mụn cóc sinh dục, các tổn thương tiền ung thư hoặc loạn sản…, với hiệu quả bảo vệ lên đến trên 90%.', 'z5983877450559_d92eed4465bb74cc2f77685fb9a4889b.jpg', '2024-10-30 16:50:18', NULL),
(29, 'Hexaxim', 'cho trẻ từ 6 tuần tuổi đến 2 tuổi ', 'Bắc Ninh', 3220333, 'sản xuất tại Pháp', 'Vắc xin Hexaxim là vắc xin kết hợp phòng được 6 loại bệnh trong 1 mũi tiêm, bao gồm: Ho gà, bạch hầu, uốn ván, bại liệt, viêm gan B và các bệnh viêm phổi, viêm màng não mủ do H.Influenzae týp B (Hib). Tích hợp trong duy nhất trong 1 vắc xin, 6 trong 1 Hexaxim giúp giảm số mũi tiêm, đồng nghĩa với việc hạn chế đau đớn cho bé khi phải tiêm quá nhiều. Vắc xin Hexaxim được chỉ định tiêm cho trẻ từ 6 tuần tuổi đến 2 tuổi phòng 6 bệnh: Bạch hầu, Ho gà, Uốn ván, Bại liệt, Viêm gan B và các bệnh do Hib.\r\n3. Phác đồ, lịch tiêm\r\nLịch tiêm 6 trong 1 Hexaxim bao gồm 4 mũi:\r\n•	Mũi 1: lần tiêm đầu tiên\r\n•	Mũi 2: 1 tháng sau mũi 1\r\n•	Mũi 3: 1 tháng sau mũi 2\r\n•	Mũi 4: cách mũi thứ 3 là 12 tháng (cách tối thiểu 6 tháng).\r\n4. Phản ứng sau tiêm chủng\r\nVắc xin Hexaxim có độ an toàn cao. Tuy nhiên, sau khi tiêm vắc xin 6 trong 1 Infanrix Hexa (Bỉ), trẻ có thể gặp những phản ứng nhẹ, không kéo dài và không cần điều trị đặc biệt, vì đó là đáp ứng miễn dịch của cơ thể. Cụ thể như:\r\n•	Tại chỗ tiêm: sưng đỏ, đau từ 1 – 3 ngày. Có thể nổi cục cứng, sau khoảng 1-3 tuần sẽ tự khỏi\r\n•	Toàn thân: Trẻ có thể sốt, quấy khóc, nôn, tiêu chảy, bú kém.\r\nSau khi tiêm các vắc xin chứa thành phần Haemophilus influenzae tuýp b, có thể phản ứng sưng phù chi dưới. Những phản ứng này khởi phát trong 24-72 giờ sau tiêm và tự khỏi trong 3-5 ngày.\r\n', 'z5983877423601_f7a950659df1333c5f5c7dba0fa7f726.jpg', '2024-10-30 16:52:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(9, 'Test Sample', '4654654564', 'testsample@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-31 06:32:51', NULL),
(10, 'Garima Singh', '1425362540', 'garima12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-03 13:03:43', '2024-02-03 13:04:02'),
(12, 'phuc khang', '6666666666', 'phuc', 'e10adc3949ba59abbe56e057f20f883e', '2024-06-01 06:51:45', '2024-06-12 17:21:58'),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-06-02 07:23:33', NULL),
(15, ' phúc', '3843243243', 'khang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-06-12 17:34:39', '2024-06-12 17:34:53'),
(16, 'h?ng phúc', '1231231231', 'hongphuc', 'e10adc3949ba59abbe56e057f20f883e', '2024-07-13 06:26:50', NULL),
(17, 'hongphuc', '2342344', 'hongphuc2', 'e10adc3949ba59abbe56e057f20f883e', '2024-07-13 06:28:34', '2024-07-15 05:22:47'),
(18, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-07-15 05:24:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
