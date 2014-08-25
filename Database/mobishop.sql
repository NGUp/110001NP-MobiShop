-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2014 at 01:16 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CityName` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ID`, `CityName`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Đắk Lắk'),
(15, 'Đắk Nông'),
(16, 'Điện Biên'),
(17, 'Đồng Nai'),
(18, 'Đồng Tháp'),
(19, 'Gia Lai'),
(20, 'Hà Giang'),
(21, 'Hà Nam'),
(22, 'Hà Tĩnh'),
(23, 'Hải Dương'),
(24, 'Hậu Giang'),
(25, 'Hòa Bình'),
(26, 'Hưng Yên'),
(27, 'Khánh Hòa'),
(28, 'Kiên Giang'),
(29, 'Kon Tum'),
(30, 'Lai Châu'),
(31, 'Lâm Đồng'),
(32, 'Lạng Sơn'),
(33, 'Lào Cai'),
(34, 'Long An'),
(35, 'Nam Định'),
(36, 'Nghệ An'),
(37, 'Ninh Bình'),
(38, 'Ninh Thuận'),
(39, 'Phú Thọ'),
(40, 'Quảng Bình'),
(41, 'Quảng Nam'),
(42, 'Quảng Ngãi'),
(43, 'Quảng Ninh'),
(44, 'Quảng Trị'),
(45, 'Sốc Trăng'),
(46, 'Sơn La'),
(47, 'Tây Ninh'),
(48, 'Thái Bình'),
(49, 'Thái Nguyên'),
(50, 'Thanh Hóa'),
(51, 'Thừa Thiên - Huế'),
(52, 'Tiền Giang'),
(53, 'Trà Vinh'),
(54, 'Tuyên Quang'),
(55, 'Vĩnh Long'),
(56, 'Vĩnh Phúc'),
(57, 'Yên Bái'),
(58, 'Phú Yên'),
(59, 'Tp.Cần Thơ'),
(60, 'Tp.Đà Nẵng'),
(61, 'Tp.Hải Phòng'),
(62, 'Tp.Hà Nội'),
(63, 'Tp.Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `CartID` int(11) DEFAULT NULL,
  `IDMobile` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`CartID`, `IDMobile`, `Quantity`) VALUES
(24, 58, 1),
(24, 3, 1),
(26, 15, 5),
(28, 64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`ID`, `name`, `logo`) VALUES
(1, 'Apple', 'apple.png'),
(2, 'BlackBerry', 'blackberry.jpg'),
(3, 'HTC', 'htc.jpeg'),
(4, 'Huawei', 'huawei.jpg'),
(5, 'Lenovo', 'lenovo.gif'),
(6, 'LG', 'lg.jpg'),
(7, 'Motorola', 'motorola.jpg'),
(8, 'Nokia', 'nokia.jpg'),
(9, 'Oppo', 'oppo.gif'),
(10, 'Samsung', 'samsung.jpg'),
(11, 'Sky', 'sky.png'),
(12, 'Sony', 'sony.jpg'),
(13, 'Vertu', 'vertu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Source` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` longtext CHARACTER SET utf8 NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `View` int(11) NOT NULL,
  `Sale` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`ID`, `Name`, `Company`, `Source`, `Image`, `Type`, `Price`, `Description`, `Date`, `Quantity`, `View`, `Sale`) VALUES
(1, 'LENOVO K900 16GB', 'Lenovo', 'China', 'LENOVO K900 16GB.jpg', 'Cảm ứng', 4500000, 'Tạt lon tốt<br/>\r\nKhông thấm nước<br/>\r\nBảo hành 24h                                                                                                                                                                                                         ', '2014-06-11', 20, 7, 40),
(2, 'NOKIA 1600', 'Nokia', 'VietNam', 'NOKIA 1600.jpg', 'Đập đá', 250000, 'Đại lý: Mobishop<br/>Bảo hành: 12 tháng<br/>Hot line: 01224655896', '2014-06-18', 7, 3, 150),
(3, 'NOKIA 5310 XpressMusic Red', 'Nokia', 'China', 'NOKIA 5310 XpressMusic Red.jpg', 'Đập đá', 890000, 'Đại lý: Mobishop<br/>Bảo hành: 2 tháng<br/>Hot line: 01224655896', '2014-05-11', 1, 6, 80),
(4, 'VERTU Constellation', 'Vertu', 'Finland', 'VERTU Constellation.jpg', 'Cảm ứng', 150000000, 'Thiết kế thủ công<br/>Hệ điều hành: Android Jelly Bean<br/>Màn hình: 4,3 inch độ phân giải 720p<br/>Máy ảnh chính: 13 megapixel<br/>Đại lý: Mobishop<br/>Bảo hành: 12 tháng<br/>Hot line: 01224655896', '2014-04-20', 15, 12, 50),
(5, 'SKY A730 (Vega S IM_A730S)', 'Sky', 'Korea', 'SKY A730 (Vega S IM_A730S).jpg', 'Cảm ứng', 2100000, 'Đại lý: Mobishop<br/>Bảo hành: 12 tháng<br/>Hot line: 01224655896 ', '2014-05-11', 5, 7, 1),
(6, 'OPPO Find Piano R8113', 'Oppo', 'China', 'OPPO Find Piano R8113.jpg', 'Cảm ứng', 3490000, 'Đại lý: Mobishop<br/>Bảo hành: 18 tháng<br/>Hot line: 01224655896', '2014-01-16', 10, 1, 40),
(7, 'VERTU Ascent ', 'Vertu', 'Finland', 'VERTU Ascent.jpg', 'Đập đá', 110000000, 'Camera: 5Megapixel<br/>\nMàn hình: 16M màu-TFT<br/>\nBộ nhớ trong: 8GB<br/>\nĐại lý: Mobishop<br/>\nBảo hành: 10 tháng<br/>\nHot line: 01224655896', '2014-06-03', 15, 70, 20),
(8, 'OPPO Find 7', 'Oppo', 'China', 'OPPO Find 7.jpg', 'Cảm ứng', 11000000, 'Hệ điều hành: Androi 4.4<br/>\nMàn hình: 5.5 inches<br/>\nCảm ứng: điện dung đa điểm<br/>\nĐộ phân giải: 1080 x 1920 pixels<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-01', 20, 18, 15),
(9, 'NOKIA 5800 XpressMusic Red', 'Nokia', 'VietNam', 'NOKIA 5800 XpressMusic Red.jpg', 'Nắp trượt', 700000, 'Hệ điều hành: Symbian OS v9.4<br/>\nMàn hình: 3.15Megapixel<br/>\nBảo hành: 6 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-05', 5, 50, 30),
(10, 'SAMSUNG Galaxy S4', 'Samsung', 'Korea', 'SAMSUNG Galaxy S4.jpg', 'Cảm ứng', 20490000, 'Hệ điều hành: Androi 4.2 (Jelly bean)<br/>\nMàn hình: loại màn hình OLED_màu<br/>\n…..<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-24', 20, 2, 50),
(11, 'OPPO Find 5', 'Oppo', 'China', 'OPPO Find 5.jpg', 'Cảm ứng', 9898000, 'Hệ điều hành: Androi 4.2 (Jelly bean)<br/>\nRAM: 2GB<br/>\nĐộ phân giải: 1080 x 1920 pixels<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-02', 20, 3, 10),
(12, 'HTC 8XT', 'HTC', 'VietNam', 'HTC 8XT.jpg', 'Cảm ứng', 5450000, 'Chip lõi kép<br/>\nMàn hình 4.3 inch<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-21', 15, 19, 2),
(13, 'SAMSUNG I897 Captivate', 'Samsung', 'VietNam', 'SAMSUNG I897 Captivate.jpg', 'Cảm ứng', 3980000, 'Hệ điều hành: Androi OS v2.1 (Eclair)<br/>\nBộ xử lý: ARM cortec Ă 1GHz<br/>\nTrình duyệt: HTML<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-24', 5, 6, 0),
(14, 'Wink Touch T300', 'LG', 'VietNam', 'Wink Touch T300.jpg', '', 1550000, 'Bộ nhớ trong: 20MB<br/>\nMàn hình: 2.4'''' TFT 240 x 400<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-04-09', 1, 20, 60),
(15, 'SONY Xperia V', 'Sony', 'Japan', 'SONY Xperia V.jpg', 'Cảm ứng', 10000000, 'Hệ điều hành: Androi OS v4.0.4<br/>\nBộ xử lý: Dual-core 1.5 GHz, Adreno 225 GPU<br/>\nCamera chính: 13 MP, 4128x3096 pixels LED flash<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-04-08', 6, 50, 90),
(16, 'SONY Ericsson Vivaz (U5)', 'Sony', 'Japan', 'Sony Ericsson Vivaz (U5).jpg', 'Cảm ứng', 2200000, 'Hệ điều hành: Symbian OS v9.4<br/>\nBộ vi xử lý: 720MHz<br/>\nMàn hình: 3.2 inch<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-07', 10, 13, 17),
(17, 'SKY A800S ', 'Sky', 'Korea', 'SKY A800S .jpg', 'Cảm ứng', 2669000, 'Chip lõi kép 1.5GHz<br/>\nMàn hình: 4,5 inch 1280x800p WXGA LCD<br/>\nCamera: 8.0 Megapixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-02', 8, 2, 19),
(18, 'NOKIA Lumia 620', 'Nokia', 'VietNam', 'NOKIA Lumia 620.jpg', 'Cảm ứng', 2990000, 'Hệ điều hành: Windows Phone 8<br/>\nRAM: 512 MB<br/>\nMàn hình: WVGA, 3.8", 480 x 800 pixels<br/>\nBảo hành: 10 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-25', 10, 1, 1),
(19, 'SAMSUNG Galaxy S Duos S7562', 'Samsung', 'Korea', 'SAMSUNG Galaxy S Duos S7562.jpg', 'Cảm ứng', 3590000, 'Hệ điều hành: Android OS, v4.0<br/>\nRAM: 768MB<br/>\nCamera: 5 Megapixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-19', 7, 9, 36),
(20, 'SAMSUNG Galaxy Y S5360', 'Samsung', 'VietNam', 'SAMSUNG Galaxy Y S5360.jpg', 'Cảm ứng', 2089000, 'Hệ điều hành: Android OS<br/>\nCamera: 2Mpx<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-06', 5, 15, 35),
(21, 'NOKIA 6500 classic', 'Nokia', 'VietNam', 'NOKIA 6500 classic.jpg', 'Đập đá', 1090000, 'Bảo hành: 3 tháng<br/>Đại lý: Mobishop<br/>Hot line: 01224655896', '2014-06-17', 5, 18, 18),
(22, 'OPPO R1 R829', 'Oppo', 'China', 'OPPO R1 R829.jpg', 'Cảm ứng', 8988000, 'Hệ điều hành:  Color OS dựa trên Android OS, v4.2<br/>\nBộ nhớ trong: 16 GB, 1 GB RAM<br/>\nCamera:  8 MP, 3264 x 2448 pixels, LED flash<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-13', 20, 82, 36),
(23, 'VERTU Signature S Pure White', 'Vertu', 'Finland', 'VERTU Signature S Pure White.jpg', 'Đập đá', 30000000, 'Độ phân giải: 240 x 320 pixels<br/>\nMàn hình: 16M màu-TFT<br/>\nBảo hành: 5 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-27', 25, 12, 4),
(24, 'SAMSUNG Galaxy Ace Duos S6802', 'Samsung', 'Korea', 'SAMSUNG Galaxy Ace Duos S6802.jpg', 'Cảm ứng', 3790000, 'Hệ điều hành: Android OS<br/>\nBộ xử lý: 832 MHz<br/>\nCamera: 5 MP, 2592 x 1944 pixels<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-02', 15, 83, 19),
(25, 'HTC One (HTC M7)', 'HTC', 'Korea', 'HTC One (HTC M7).jpg', 'Cảm ứng', 6849000, 'Hệ điều hành: Android OS, v4.1<br/>\nCamera: 4 Megapixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-29', 54, 82, 100),
(26, 'SAMSUNG Galaxy Core I8260', 'Samsung', 'VietNam', 'SAMSUNG Galaxy Core I8260.jpg', 'Cảm ứng', 3800000, 'Hệ điều hành: Android OS, v4.1<br/>\nCamera: 5 Megapixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-26', 10, 40, 32),
(27, 'SKY A810', 'Sky', 'Korea', 'SKY A810.jpg', 'Cảm ứng', 2950000, 'Hệ điều hành: Android 4.0<br/>\nVi xử lý Dual-core 1.5 GHz<br/>\nCamera: 8 MP tự động lấy nét, đèn Led Flash<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-16', 10, 82, 20),
(28, 'SKY A880 VEGA LTE A', 'Sky', 'Korea', 'SKY A880 VEGA LTE A.jpg', 'Cảm ứng', 7880000, 'Hệ điều hành: Android 4.2.2 Jelly Bean<br/>\nCamera chính: 13 megapixel<br/>\nBảo hành: 18 tháng<br/>\nĐại lý: Mobishop<br>\nHot line: 01224655896', '2014-06-17', 10, 91, 27),
(29, 'SAMSUNG Galaxy Win I8552', 'Samsung', 'VietNam', 'SAMSUNG Galaxy Win I8552.jpg', 'Cảm ứng', 5490000, 'Hệ điều hành: Android OS, v4.1.2 (Jelly Bean)<br/>\nCamera chính: Chính: 5.0 MP, Phụ: VGA<br/>\nMàn hình: 4.7 inches (480 x 800 pixels)<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '0000-00-00', 8, 38, 70),
(30, 'VERTU Constellation Quest Blue', 'Vertu', 'Finland', 'VERTU Constellation Quest Blue.jpg', 'QWERTY', 99000000, 'Màn hình: 16M màu-TFT<br/>\nCamera chính: 5 Megapixe<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-07-09', 20, 21, 10),
(31, 'NOKIA 2608 CDMA', 'Nokia', 'VietNam', 'NOKIA 2608 CDMA.jpg', 'Nắp gập', 2000000, 'Bảo hành: 12 tháng<br/>Đại lý: Mobishop<br/>Hot line: 01224655896', '2014-06-23', 5, 28, 31),
(32, 'NOKIA Lumia 928', 'Nokia', 'VietNam', 'NOKIA Lumia 928.jpg', 'Cảm ứng', 6000000, 'Màn hình:  OLED 4,5 inch, 768x1.280 pixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-17', 10, 20, 50),
(33, 'OPPO Find Way', 'Oppo', 'Korea', 'OPPO Find Way.jpg', 'Cảm ứng', 5990000, 'Hệ điều hành: Android OS, v4.1 (Jelly Bean)<br/>\nBộ xử lý: Dual-core 1.2 GHz<br/>\nCamera: 8 MP, 3264 x 2448 pixels<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-18', 10, 30, 10),
(34, 'OPPO R1', 'Oppo', 'Korea', 'OPPO R1.jpg', 'Cảm ứng', 8990000, 'Màn hình: 5.0 inches (720 x 1280 pixels)<br/>\nCamera: 8 MP, 3264x2448 pixels<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-26', 10, 50, 60),
(35, 'SKY A650S', 'Sky', 'Korea', 'SKY - A650S.jpg', 'Cảm ứng', 6000000, 'Hệ điều hành: Android OS, v2.2.1<br/>\nCamera: 5MP,AF CMOS, Led flash<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-25', 8, 80, 23),
(36, 'APPLE IPHONE 5s 16GB', 'Apple', 'USA', 'IPHONE  5s 16GB.jpg', 'Cảm ứng', 14290000, 'Hệ điều hành: iOS 7<br/>\nRAM: 1 GB<br/>\nCamera: Camera trước 1.2 MP Camera sau 8.0 MP<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-05', 20, 1, 50),
(37, 'LENOVO Vibe X S960', 'Lenovo', 'VietNam', 'LENOVO Vibe X S960.jpg', 'Cảm ứng', 8700000, 'Hệ điều hành: Android 4.2 (Jelly Bean)<br/>\nMàn hình: 5.0 inches(1080 x 1920 pixels)<br/>\nCamera: Chính: 13.0 MP, Phụ: 5.0 MP<br/>\nBảo hành: 18 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-06', 15, 50, 70),
(38, 'SAMSUNG Rex 60 C3312R', 'Samsung', 'Korea', 'SAMSUNG Rex 60 C3312R.jpg', 'Cảm ứng', 850000, 'Camera: 1.3 Megapixel<br/>\nBảo hành: 6 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-14', 10, 80, 50),
(39, 'SAMSUNG S5230 Star Hello Kitty', 'Samsung', 'VietNam', 'SAMSUNG S5230 Star Hello Kitty.jpg', 'Cảm ứng', 750000, 'Bảo hành: 6 tháng<br/>Đại lý: Mobishop<br/>Hot line: 01224655896', '2014-05-21', 7, 31, 61),
(40, 'SKY A870', 'Sky', 'Korea', 'SKY A870.jpg', 'Cảm ứng', 6229000, 'Hệ điều hành: Android (4.1)<br/>\nMàn hình: 5", độ phân giải 1280 x 720<br/>\nCamera: 13 megapixel<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-05-09', 10, 80, 25),
(41, 'SONY Xperia M2 D2303', 'Sony', 'VietNam', 'SONY Xperia M2 D2303.jpg', 'Cảm ứng', 6400000, 'Hệ điều hành: Android 4.3 (Jelly Bean)<br/>\nMàn hình: qHD, 4.8", 540 x 960 pixels<br/>\nCamera: VGA (0.3 Mpx)<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-01', 10, 28, 15),
(42, 'LENOVO K860', 'Lenovo', 'VietNam', 'LENOVO K860.jpg', 'Cảm ứng', 7499000, 'Hệ điều hành: Android OS, v4.0.4 (Ice Cream Sandwich)<br/>\nMàn hình: 5.0 inches 720 x 1280 pixels<br/>\nCamera: 8 MP (3264x2448 pixels)<br/>\nBảo hành: 18 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-09', 15, 34, 36),
(43, 'HTC ONE DUAL SIM', 'HTC', 'Korea', 'HTC ONE DUAL SIM.jpg', 'Cảm ứng', 15000000, 'Hệ điều hành: Android 4.2<br/>\nMàn hình: 4.7 inches<br/>\nCamera: 4 MP, 2688 x 1520 pixels (Ultrapixel)<br/>\nBảo hành: 24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-04-02', 20, 80, 67),
(44, 'NOKIA 3010 RM-839', 'Nokia', 'VietNam', 'NOKIA 3010 RM-839.jpg', 'Đập đá', 1480000, 'Bảo hành: 6 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-19', 7, 31, 24),
(45, 'SAMSUNG E1200', 'Samsung', 'VietNam', 'SAMSUNG E1200.jpg', 'Đập đá', 350000, 'Bảo hành: 6 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-26', 6, 1, 68),
(46, 'VERTU Constellation Ayxta Stainless Steel', 'Vertu', 'Finland', 'VERTU Constellation Ayxta Stainless Steel.jpg', 'Nắp gập', 163000000, 'Màn hình: 16M màu<br/>\nCamera: 3Megapixel<br/>\nBảo hành:  24 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-25', 20, 19, 22),
(47, 'NOKIA 515', 'Nokia', 'China', 'NOKIA 515.jpg', 'Đập đá', 3500000, 'Camera: 5.0 MP<br/>\nMàn hình: QVGA, 2.4", 240 x 320 Pixels<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-19', 6, 1, 37),
(48, 'NOKIA Lumia 1520', 'Nokia', 'VietNam', 'NOKIA Lumia 1520.jpg', 'Cảm ứng', 12990000, 'Camera: 1.2 MP<br/>\nMàn hình: Full HD, 6.0", 1080 x 1920 pixels<br/>\nHệ điều hành: Windows Phone 8<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-19', 15, 36, 38),
(49, 'LENOVO A526', 'Lenovo', 'China', 'LENOVO A526.jpg', 'Cảm ứng', 2890000, 'Camera: 5.0 MP, 2 SIM<br/>\nMàn hình: FWVGA, 4.5 inches<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-10', 10, 37, 29),
(50, 'NOKIA 112', 'Nokia', 'VietNam', 'NOKIA 112.jpg', 'Đập đá', 930000, 'Camera: VGA (480 x 640 pixels)<br/>\nMàn hình: QQVGA, 1.8", 128 x 160 Pixels<br/>\nBảo hành: 12 tháng<br/>\nĐại lý: Mobishop<br/>\nHot line: 01224655896', '2014-06-17', 10, 12, 13),
(51, 'BLACKBERRY Z10', 'Blackberry', 'Canada', 'BLACKBERRY Z10.jpg', 'Cảm ứng', 3900000, 'Màn hình: HD, 4.2 inches<br/>\nHĐH: BlackBerry<br/>\nCPU: Dual-core 1.5 GHz<br/>\nCamera: 8.0 MP<br/>\nDung lượng pin: 1800 mAh.<br/>\nBảo hành: 12 tháng         ', '2014-06-11', 10, 90, 37),
(52, 'BLACKBERRY Torch 9800', 'Blackberry', 'Canada', 'BLACKBERRY Torch 9800.jpg', 'Cảm ứng - Nắp trượt', 12000000, 'Màn hình : Màn hình cảm ứng điện dung TFT, 16 triệu màu<br/>\nCamera : 5 MP, 2592х1944 pixels, autofocus, LED flash<br/>\nHệ điều hành : BlackBerry OS 6.0<br/>\nVi xử lý : 624 MHz processor<br/>\nĐịnh vị toàn cầu :Có, hỗ trợ A-GPS<br/>\nBộ nhớ : 4 GB storage, 512 MB RAM, 512 MB ROM<br/>\nBảo hành: 12 tháng', '2014-06-18', 20, 1, 18),
(53, 'BLACKBERRY Pearl 8100', 'Blackberry', 'VietNam', 'BLACKBERRY Pearl 8100.jpg', 'QWERTY', 1000000, 'Màn hình: 65K màu-TFT<br/>\r\nKích thước màn hình: 2.2inch<br/>\r\nBộ nhớ trong:  64MB<br/>\r\nCamera: 1.3Megapixel.<br/>\r\nBảo hành: 6 tháng', '2014-06-17', 5, 14, 39),
(54, 'BLACKBERRY Q10', 'Blackberry', 'VietNam', 'BLACKBERRY Q10.jpg', 'QWERTY', 6799000, 'Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 3.1inch<br/>\r\nRAM: 2GB<br/>\r\nHệ điều hành: BlackBerry OS 10.0 BB10<br/>\r\nBộ vi xử lý : ARM Cortex A9 (1.5 GHz Dual-Core)<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 8Megapixel.<br/>\r\nBảo hành: 12 tháng\r\n', '2014-06-04', 10, 2, 28),
(55, 'BLACKBERRY Style 9670', 'Blackberry ', 'VietNam', 'BLACKBERRY Style 9670.png', 'Nắp gập', 2000000, 'Màn hình: TFT, 65K màu, 360 x 400 pixels<br/>\r\nHệ điều hành: BlackBerry OS 6.0<br/>\r\nCamera: 5 MP, 2592х1944 pixels, autofocus, LED flash.<br/>\r\nBảo hành: 6 tháng', '2014-06-20', 7, 21, 23),
(56, 'BLACKBERRY Storm 9530', 'Blackberry', 'China', 'BLACKBERRY Storm 9530.jpg', 'Cảm ứng', 2800000, 'Bộ xử lý:Qualcomm MSM7600 528 MHz<br/>\r\nBộ nhớ trong:1 GB, 128 MB RAM, 192 MB ROM<br/>\r\nTốc độ 3G:HSDPA, 7.2 Mbps<br/>\r\nCamera chính:3.15 MP, 2048x1536 pixels, autofocus, LED flash.<br/>\r\nBảo hành: 6 tháng', '2014-06-04', 10, 20, 30),
(57, 'HUAWEI G5500', 'Huawei', 'China', 'HUAWEI G5500.jpg', 'Đập đá', 500000, 'Màn hình: 256K màu-TFT<br/>\r\nKích thước màn hình: 2inch<br/>\r\nRAM: 64MB<br/>\r\nCamera: 1.3Megapixel.<br/>\r\nBảo hành: 6 tháng', '2014-03-18', 5, 50, 30),
(58, 'HUAWEI B199', 'Huawei', 'China', 'HUAWEI B199.jpg', 'Cảm ứng', 6800000, 'Màn hình: 5.5 inch<br/>\r\nĐộ phân giải: HD 1280 x 720 pixel<br/>\r\ncamera: trước 5 MP, chính 13 MP.<br/>\r\nBảo hành: 12 tháng', '2014-05-13', 10, 67, 90),
(59, 'HUAWEI Ascend G600', 'Huawei', 'China', 'HUAWEI Ascend G600.jpg', 'Cảm ứng', 4950000, 'Màn hình: 16M màu IPS LCD Touchscreen (Cảm ứng)<br/>\r\nRAM: 768MB<br/>\r\nHệ điều hành: Android OS, v4.0 (Ice Cream Sandwich)<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-03-04', 15, 90, 69),
(60, 'HUAWEI U8800 IDEOS X5', 'Huawei', 'China', 'HUAWEI U8800 IDEOS X5.jpg', 'Cảm ứng', 6050000, 'Màn hình: 16M màu-TFT Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 3.8inch<br/>\r\nRAM: 512MB<br/>\r\nHệ điều hành: Android OS, v2.2 (Froyo)<br/>\r\nBộ vi xử lý : Qualcomm MSM 7230 (800 MHz)<br/>\r\nCamera: 5 Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-02-19', 20, 38, 71),
(61, 'HUAWEI G6600 Passport', 'Huawei', 'China', 'HUAWEI G6600 Passport.jpg', 'QWERTY', 1050000, 'Màn hình: 65K màu-TFT<br/>\r\nKích thước màn hình: 2.4inch<br/>\r\nCamera: 2 Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-04-11', 1, 97, 80),
(62, 'HUAWEI U120', 'Huawei', 'China', 'HUAWEI U120.jpg', 'Đập đá', 500000, 'Màn hình: 256K màu-TFT<br/>\nKích thước màn hình: 1.8inch<br/>\nCamera: 1.3 Megapixel<br/>\nBảo hành: 6 tháng', '2014-05-11', 5, 84, 67),
(63, 'LENOVO A336 White', 'Lenovo', 'VietNam', 'LENOVO A336 White.jpg', 'Đập đá', 950000, 'Màn hình: 262K màu-TFT<br/>\r\nKích thước màn hình: 2.4inch<br/>\r\nSố sim : 2 Sim - 2 Sóng<br/>\r\nCamera: 0.3Megapixel<br/>\r\nBảo hành: 6 tháng', '2014-06-11', 10, 28, 39),
(64, 'LENOVO P301 Black', 'Lenovo', 'VietNam', 'LENOVO P301 Black.jpg', 'Đập đá', 810000, 'Màn hình: 262K màu-QVGA TFT<br/>\r\nKích thước màn hình: 2.4inch<br/>\r\nSố sim : 2 Sim - 2 Sóng<br/>\r\nCamera: 1.3Megapixel<br/>\r\nBảo hành: 6 tháng', '2014-04-19', 1, 1, 80),
(65, 'LENOVO S520 Pink', 'Lenovo', 'China', 'LENOVO S520 Pink.jpg', 'Nắp trượt', 1540000, 'Màn hình: 260K màu-TFT<br/>\r\nKích thước màn hình: 2.2inch<br/>\r\nCamera: 2Megapixel<br/>\r\nBảo hành: 6 tháng', '2014-05-16', 10, 3, 17),
(66, 'LG G2 F320L', 'LG', 'Korea', 'LG G2 F320L.jpg', 'Cảm ứng', 6800000, 'Màn hình: 16M màu IPS TFT Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 5.2inch<br/>\r\nRAM: 2GB<br/>\r\nHệ điều hành: Android OS, v4.2 (Jelly Bean)<br/>\r\nBộ vi xử lý : 2.2 GHz Quad-core<br/>\r\nSố lượng Cores: Quad Core (4 nhân)<br/>\r\nCamera: 13Megapixel<br/>\r\nBảo hành: 24 tháng', '2014-06-21', 20, 44, 11),
(67, 'LG Optimus G E970', 'LG', 'Korea', 'LG Optimus G E970.jpg', 'Cảm ứng', 3050000, 'Màn hình: 16M màu True HD-IPS LCD Touchscreen (Cảm ứng)<br/>\nKích thước màn hình: 4.7inch<br/>\nRAM: 2GB<br/>\nHệ điều hành: Android OS, v4.0 (Ice Cream Sandwich)<br/>\nSố lượng Cores: Quad Core (4 nhân)<br/>\nCamera: 8Megapixel<br/>\nBảo hành: 12 tháng\n', '2014-04-05', 10, 33, 36),
(68, 'LG Nexus 5 32GB', 'LG', 'Korea', 'LG Nexus 5 32GB.jpg', 'Cảm ứng', 10200000, 'Màn hình: 16M màu True HD-IPS Plus Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 4.95inch<br/>\r\nRAM: 2GB<br/>\r\nHệ điều hành: Android OS, v4.4 (KitKat)<br/>\r\nBộ vi xử lý : Krait 400 (2.3GHz Quad-core)<br/>\r\nSố lượng Cores: Quad Core (4 nhân)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 24 tháng', '2014-03-20', 25, 74, 66),
(69, 'LG Wink Pro C305 White Orange', 'LG', 'VietNam', 'LG Wink Pro C305 White Orange.jpg', 'QWERTY', 1700000, 'Màn hình: 262K màu-TFT<br/>\r\nKích thước màn hình: 2.4inch<br/>\r\nSố lượng Cores: Single Core<br/>\r\nCamera: 3.15Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-06-30', 1, 80, 99),
(70, 'LG KF300 Black', 'LG', 'VietNam', 'LG KF300 Black.jpg', 'Nắp gập', 400000, 'Màn hình: 262K màu-TFT<br/>\r\nKích thước màn hình: 2.2inch<br/>\r\nCamera: 2Megapixel<br/>\r\nBảo hành: 6 tháng', '2014-03-12', 5, 8, 34),
(71, 'LG S365', 'LG', 'VietNam', 'LG S365.jpg', 'Đập đá', 1450000, 'Kích thước màn hình: 2.4inch<br/>\r\nSố sim : 2 Sim - 2 Sóng<br/>\r\nCamera: 2Megapixel<br/>\r\nBảo hành: 2 tháng', '2014-06-19', 10, 70, 38),
(72, 'MOTOROLA V3i Gold', 'Motorola', 'China', 'MOTOROLA V3i Gold.jpg', 'Nắp gập', 1600000, 'Màn hình: 262K màu-TFT<br/>\r\nKích thước màn hình: 2.2inch<br/>\r\nCamera: 1.23Megapixel<br/>\r\nBảo hành: 6 tháng', '2014-04-04', 10, 87, 95),
(73, 'MOTOROLA Milestone XT720 ', 'Motorola', 'China', 'MOTOROLA Milestone XT720 .jpg', 'Cảm ứng', 5900000, 'Màn hình: 16M màu-TFT Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 3.7inch<br/>\r\nRAM: 256MB<br/>\r\nHệ điều hành: Android OS, v2.1 (Eclair)<br/>\r\nBộ vi xử lý : ARM Cortex A8 (720 MHz)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-03-07', 15, 29, 33),
(74, 'MOTOROLA EX226', 'Motorola', 'VietNam', 'MOTOROLA EX226.jpg', 'Cảm ứng - QWERTY', 1690000, 'Màn hình: 16M màu-TFT Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 3.7inch<br/>\r\nRAM: 256MB<br/>\r\nHệ điều hành: Android OS, v2.1 (Eclair)<br/>\r\nBộ vi xử lý : ARM Cortex A8 (720 MHz)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-06-04', 20, 25, 36),
(75, 'MOTOROLA W388', 'Motorola', 'VietNam', 'MOTOROLA W388.jpg', 'Đập đá', 200000, 'Màn hình: 65K màu-TFT<br/>\r\nKích thước màn hình: 1.8inch<br/>\r\nCamera: VGA 640 x 480pixels<br/>\r\nBảo hành: 6 tháng', '2014-04-25', 10, 92, 44),
(76, 'MOTOROLA Moto X 32GB ', 'Motorola', 'China', 'MOTOROLA Moto X 32GB.png', 'Cảm ứng', 13000000, 'Màn hình: 16M màu-AMOLED Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 4.7inch<br/>\r\nRAM: 2GB<br/>\r\nHệ điều hành: Android OS, v4.2 (Jelly Bean)<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 10Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-05-17', 15, 77, 88),
(77, 'APPLE IPHONE 5S 64GB Gold', 'Apple', 'USA', 'IPHONE 5S 64GB Gold.jpg', 'Cảm ứng', 18200000, 'Màn hình: 16M màu-TFT LED-backlit IPS Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 4inch<br/>\r\nRAM: 1GB<br/>\r\nHệ điều hành: iOS 7<br/>\r\nBộ vi xử lý : 1.3 GHz Dual-Core<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-03-06', 25, 18, 32),
(78, 'APPLE IPHONE 5S 32GB Space Gray', 'Apple', 'USA', 'IPHONE 5S 32GB Space Gray.jpg', 'Cảm ứng', 17000000, 'Màn hình: 16M màu-TFT LED-backlit IPS Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 4inch<br/>\r\nRAM: 1GB<br/>\r\nHệ điều hành: iOS 7<br/>\r\nBộ vi xử lý : 1.3 GHz Dual-Core<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-06-07', 15, 6, 33),
(79, 'APPLE IPHONE 5C 16GB Pink', 'Apple', 'USA', 'IPHONE 5C 16GB Pink.jpg', 'Cảm ứng', 10300000, 'Màn hình: 16M màu LED-backlit IPS LCD Touchscreen (Cảm ứng)<br/>\r\nKích thước màn hình: 4inch<br/>\r\nRAM: 1GB<br/>\r\nHệ điều hành: iOS 7<br/>\r\nBộ vi xử lý : 1.3 GHz Dual-Core<br/>\r\nSố lượng Cores: Dual Core (2 nhân)<br/>\r\nCamera: 8Megapixel<br/>\r\nBảo hành: 12 tháng', '2014-03-12', 18, 32, 17);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDUser` int(11) NOT NULL,
  `date` text NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `IDUser`, `date`, `Total`) VALUES
(24, 25, '2/8/2014', 7690000),
(26, 25, '20/11/2014', 50000000),
(28, 26, '26/9/2014', 810000);

-- --------------------------------------------------------

--
-- Table structure for table `origin`
--

CREATE TABLE IF NOT EXISTS `origin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `origin`
--

INSERT INTO `origin` (`ID`, `Country`) VALUES
(1, 'China'),
(2, 'Korea'),
(3, 'Finland'),
(4, 'Japan'),
(5, 'Vietnam'),
(6, 'USA'),
(7, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `typemobile`
--

CREATE TABLE IF NOT EXISTS `typemobile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `typemobile`
--

INSERT INTO `typemobile` (`ID`, `type`) VALUES
(1, 'Cảm ứng'),
(2, 'Đập đá'),
(3, 'Nắp gập'),
(4, 'Nắp trượt'),
(9, 'QWERTY');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `fullname`, `username`, `password`, `permission`, `city`, `birthday`) VALUES
(25, 'Tèo', 'user1', 'd7eee0095903a52be46ed85f5395ea54', 0, 'Cao Bằng', '23/9/1994'),
(26, '', 'user2', 'c734eadc3a8a59b5a4b5d0be174c3638', 0, '', ''),
(27, 'Võ Hoài Nam', 'vhnam', '5aa0775f623dd27cf433b40fa9a76105', 1, 'Tp.Hồ Chí Minh', '25/4/1994');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
