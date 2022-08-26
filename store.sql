-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 03:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `pcategory`
--

CREATE TABLE `pcategory` (
  `pcategoryid` int(11) NOT NULL,
  `pcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcategory`
--

INSERT INTO `pcategory` (`pcategoryid`, `pcategory`) VALUES
(1, 'สี'),
(2, 'เครื่องมือช่าง'),
(3, 'สายไฟ'),
(4, 'อุปกรณ์เกี่ยวกับการเขียน'),
(5, 'ท่อน้ำ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdetail` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pcategoryid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pdetail`, `pprice`, `pcategoryid`) VALUES
(1, 'spray paint L-01 สีขาว', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(2, 'spray paint สีสเปรย์ L-02 สีดำ', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(3, 'spray paint สีสเปรย์ L-03 สีแดง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(4, 'spray paint สีสเปรย์ L-04 สีเหลือง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(5, 'spray paint สีสเปรย์ L-05 สีน้ำเงิน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(6, 'spray paint สีสเปรย์ L-06 สีฟ้า', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(7, 'spray paint สีสเปรย์ L-09 สีม่วง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(8, 'spray paint สีสเปรย์  L-10 สีเงิน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(9, 'spray paint สีสเปรย์ L-13 สีส้ม', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(10, 'spray paint สีสเปรย์ L-16 สีเขียวอ่อน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(11, 'spray paint สีสเปรย์ L-17	สีเงินลอย', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(12, 'spray paint สีสเปรย์ F-14	ดำด้าน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(13, 'spray paint สีสเปรย์ F-15	ขาวด้าน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(14, 'spray paint สีสเปรย์ C-75	แลกเกอร์เงา', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(15, 'spray paint สีสเปรย์ F-76	แลกเกอร์ด้าน', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(16, 'spray paint สีสเปรย์ A-42	รองพื้นเทา', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(17, 'spray paint สีสเปรย์ W-10 รองพื้นขาว', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(18, 'spray paint สีสเปรย์ N-39	รองพื้นแดง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(19, 'spray paint สีสเปรย์ L-42	สัญญาณสีแดง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(20, 'spray paint สีสเปรย์ L-21	เหลือง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(21, 'spray paint สีสเปรย์ L-151 เหลืองสว่าง', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(22, 'spray paint สีสเปรย์ L-35 สีน้ำเงินสด', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1),
(23, 'spray paint สีสเปรย์ L-93	ฟ้าเข้ม', 'สีสเปรย์ สีพ่นรถ สีพ่นมอไซค์ สีพ่นเหล็ก ไม้ โลหะ pvc เลย์แลนด์ Leyland Spray สีพาสเทลครบทุกเฉดสี', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `password`) VALUES
(1, '135462', '013216');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pcategory`
--
ALTER TABLE `pcategory`
  ADD PRIMARY KEY (`pcategoryid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pcategory`
--
ALTER TABLE `pcategory`
  MODIFY `pcategoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
