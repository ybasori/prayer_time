-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2019 at 01:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `latitude` decimal(9,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `parent_id`, `name`, `latitude`, `longitude`) VALUES
(1, 0, 'Provinsi Aceh', '4.6951350', '96.7493993'),
(2, 0, 'Provinsi Sumatera Utara', '2.1153547', '99.5450974'),
(3, 0, 'Provinsi Sumatera Barat', '-0.7399397', '100.8000050'),
(4, 0, 'Provinsi Riau', '0.2933469', '101.7068290'),
(5, 0, 'Provinsi Jambi', '-1.4851831', '102.4380580'),
(6, 0, 'Provinsi Sumatera Selatan', '-3.3194374', '103.9143990'),
(7, 0, 'Provinsi Bengkulu', '-3.5778471', '102.3463870'),
(8, 0, 'Provinsi Lampung', '-4.5585849', '105.4068070'),
(9, 0, 'Provinsi Kepulauan Bangka Belitung', '-2.7410513', '106.4405870'),
(10, 0, 'Provinsi Kepulauan Riau', '3.9456514', '108.1428660'),
(11, 0, 'Provinsi DKI Jakarta', '-6.2115440', '106.8451720'),
(12, 0, 'Provinsi Jawa Barat', '-7.0909110', '107.6688870'),
(13, 0, 'Provinsi Jawa Tengah', '-7.1509750', '110.1402590'),
(14, 0, 'Provinsi DI Yogyakarta', '-7.8753849', '110.4262080'),
(15, 0, 'Provinsi Jawa Timur', '-7.5360639', '112.2384010'),
(16, 0, 'Provinsi Banten', '-6.4058172', '106.0640170'),
(17, 0, 'Provinsi Bali', '-8.4095178', '115.1889160'),
(18, 0, 'Provinsi Nusa Tenggara Barat', '-8.6529334', '117.3616470'),
(19, 0, 'Provinsi Nusa Tenggara Timur', '-8.6573819', '121.0793700'),
(20, 0, 'Provinsi Kalimantan Barat', '-0.2787808', '111.4752850'),
(21, 0, 'Provinsi Kalimantan Tengah', '-1.6814878', '113.3823540'),
(22, 0, 'Provinsi Kalimantan Selatan', '-3.0926415', '115.2837580'),
(23, 0, 'Provinsi Kalimantan Timur', '1.6406296', '116.4193890'),
(24, 0, 'Provinsi Sulawesi Utara', '0.6246932', '123.9750010'),
(25, 0, 'Provinsi Sulawesi Tengah', '-1.4300254', '121.4456170'),
(26, 0, 'Provinsi Sulawesi Selatan', '-3.6687994', '119.9740530'),
(27, 0, 'Provinsi Sulawesi Tenggara', '-4.1449100', '122.1746050'),
(28, 0, 'Provinsi Gorontalo', '0.6999372', '122.4467230'),
(29, 0, 'Provinsi Sulawesi Barat', '-2.8441371', '119.2320780'),
(30, 0, 'Provinsi Maluku', '-3.2384616', '130.1452730'),
(31, 0, 'Provinsi Maluku Utara', '1.5709993', '127.8087690'),
(32, 0, 'Provinsi Papua Barat', '-1.3361154', '133.1747160'),
(33, 0, 'Provinsi Papua', '-4.2699280', '138.0803520'),
(562, 74, 'Kota Tangerang Selatan', '-6.2888889', '106.7180550'),
(821, 15, 'Kabupaten Banyuwangi', '-8.2186111', '114.3669440'),
(823, 15, 'Kabupaten Madiun', '-7.6277530', '111.5054830'),
(824, 15, 'Kabupaten Ponorogo', '-7.8678270', '111.4660030'),
(825, 15, 'Kabupaten Magetan', '-7.6493413', '111.3381590'),
(826, 15, 'Kabupaten Pacitan', '-8.2046140', '111.0876900'),
(827, 15, 'Kabupaten Ngawi', '-7.3899300', '111.4619300'),
(828, 15, 'Kabupaten Bangkalan', '-7.0306912', '112.7450060'),
(829, 15, 'Kabupaten Kediri', '-7.8093560', '112.0323560'),
(830, 15, 'Kabupaten Bondowoso', '-7.9177040', '113.8134830'),
(831, 15, 'Kabupaten Blitar', '-8.1014419', '112.1627620'),
(832, 15, 'Kabupaten Trenggalek', '-8.0500000', '111.7166660'),
(833, 15, 'Kabupaten Tulungagung', '-8.0666667', '111.9000000'),
(834, 15, 'Kabupaten Nganjuk', '-7.6029320', '111.9018080'),
(835, 15, 'Kabupaten Situbondo', '-7.7025340', '113.9556050'),
(836, 15, 'Kabupaten Malang', '-8.0495643', '112.6884540'),
(837, 15, 'Kabupaten Jember', '-8.1723570', '113.7003020'),
(838, 15, 'Kabupaten Sumenep', '-6.9253999', '113.9060620'),
(839, 15, 'Kabupaten Pasuruan', '-6.8623098', '108.8001930'),
(840, 15, 'Kabupaten Pamekasan', '-7.1666667', '113.4666660'),
(841, 15, 'Kabupaten Probolinggo', '-7.7539650', '113.2106750'),
(842, 15, 'Kabupaten Lumajang', '-8.1370220', '113.2266010'),
(843, 15, 'Kabupaten Bojonegoro', '0.8826810', '124.4669560'),
(844, 15, 'Kabupaten Tuban', '-8.7493146', '115.1711290'),
(845, 15, 'Kabupaten Lamongan', '-7.4061530', '109.3946790'),
(846, 15, 'Kabupaten Sidoarjo', '-7.4530278', '112.7173380'),
(847, 15, 'Kabupaten Sampang', '-7.5782556', '109.2058430'),
(848, 15, 'Kabupaten Mojokerto', '-7.4880750', '112.4270270'),
(849, 15, 'Kabupaten Gresik', '-7.1566500', '112.6555000'),
(850, 15, 'Kabupaten Jombang', '-7.5468395', '112.2264790'),
(851, 15, 'Kota Mojokerto', '-7.4722222', '112.4336110'),
(852, 15, 'Kota Surabaya', '-7.2891660', '112.7343980'),
(853, 15, 'Kota Madiun', '-7.6297140', '111.5137020'),
(854, 15, 'Kota Blitar', '-8.1000000', '112.1500000'),
(855, 15, 'Kota Malang', '-7.9818940', '112.6265030'),
(856, 15, 'Kota Batu', '-7.8671000', '112.5239000'),
(857, 15, 'Kota Pasuruan', '-7.6448720', '112.9032970'),
(858, 15, 'Kota Kediri', '-7.8168950', '112.0113980'),
(859, 15, 'Kota Probolinggo', '-7.7569280', '113.2115020'),
(925, 5, 'Kabupaten Batanghari', '-1.7083922', '103.0817900'),
(926, 5, 'Kabupaten Bungo', '-1.6401338', '101.8891720'),
(927, 5, 'Kabupaten Kerinci', '-1.8720467', '101.4339140'),
(928, 5, 'Kabupaten Merangin', '-2.1752789', '101.9804610'),
(929, 5, 'Kabupaten Muaro Jambi', '-1.5966720', '103.6157990'),
(930, 5, 'Kabupaten Sarolangun', '-2.2654937', '102.6905320'),
(931, 5, 'Kabupaten Tanjung Jabung Barat', '-1.2332122', '103.7984420'),
(932, 5, 'Kabupaten Tanjung Jabung Timur', '-1.3291599', '103.8997300'),
(933, 5, 'Kabupaten Tebo', '-1.2592999', '102.3463870'),
(934, 5, 'Kota Jambi', '-1.5966720', '103.6157990'),
(935, 5, 'Kota Sungai Penuh', '-2.0631400', '101.3871990'),
(1326, 1, 'Kabupaten Simeulue', '2.5833330', '96.0833330'),
(1327, 1, 'Kabupaten Aceh Singkil', '2.3589459', '97.8721600'),
(1328, 1, 'Kabupaten Aceh Selatan', '3.3115056', '97.3516558'),
(1329, 1, 'Kabupaten Aceh Tenggara', '3.3088666', '97.6982272'),
(1330, 1, 'Kabupaten Aceh Timur', '5.2554430', '95.9885456'),
(1331, 1, 'Kabupaten Aceh Tengah', '4.4482641', '96.8350999'),
(1332, 1, 'Kabupaten Aceh Barat', '4.4542745', '96.1526985'),
(1333, 1, 'Kabupaten Aceh Besar', '5.4529168', '95.4777811'),
(1334, 1, 'Kabupaten Pidie', '5.0742659', '95.9409710'),
(1335, 1, 'Kabupaten Bireuen', '5.1825400', '96.8900500'),
(1336, 1, 'Kabupaten Aceh Utara', '4.9786331', '97.2221421'),
(1337, 1, 'Kabupaten Aceh Barat Daya', '3.0512643', '97.3368031'),
(1338, 1, 'Kabupaten Gayo Lues', '3.9551650', '97.3516558'),
(1339, 1, 'Kabupaten Aceh Tamiang', '4.2328871', '98.0028892'),
(1340, 1, 'Kabupaten Nagan Raya', '4.1248406', '96.4929797'),
(1341, 1, 'Kabupaten Aceh Jaya', '4.7873684', '95.6457951'),
(1342, 1, 'Kabupaten Bener Meriah', '4.7748348', '97.0068393'),
(1343, 1, 'Kabupaten Pidie Jaya', '5.1548063', '96.1951320'),
(1344, 1, 'Kota Banda Aceh', '5.5500000', '95.3166667'),
(1345, 1, 'Kota Sabang', '5.8946929', '95.3192982'),
(1346, 1, 'Kota Langsa', '4.4800000', '97.9633333'),
(1347, 1, 'Kota Lhokseumawe', '5.1880556', '97.1402778'),
(1348, 1, 'Kota Subulussalam', '2.6449927', '98.0165205'),
(1349, 2, 'Kabupaten Nias', '-8.1712591', '113.7111270'),
(1350, 2, 'Kabupaten Mandailing Natal', '0.7432372', '99.3673084'),
(1351, 2, 'Kabupaten Tapanuli Selatan', '1.5774933', '99.2785583'),
(1352, 2, 'Kabupaten Tapanuli Tengah', '1.8493299', '98.7040750'),
(1353, 2, 'Kabupaten Tapanuli Utara', '2.0405246', '99.1013498'),
(1354, 2, 'Kabupaten Toba Samosir', '2.3502398', '99.2785583'),
(1355, 2, 'Kabupaten Labuhanbatu', '2.3439863', '100.1703250'),
(1356, 2, 'Kabupaten Asahan', '2.8174722', '99.6341350'),
(1357, 2, 'Kabupaten Simalungun', '2.9781612', '99.2785583'),
(1358, 2, 'Kabupaten Dairi', '2.8675801', '98.2650580'),
(1359, 2, 'Kabupaten Karo', '3.1052909', '98.2650580'),
(1360, 2, 'Kabupaten Deli Serdang', '3.4201802', '98.7040750'),
(1361, 2, 'Kabupaten Langkat', '3.8653916', '98.3088441'),
(1362, 2, 'Kabupaten Nias Selatan', '0.7086091', '97.8286368'),
(1363, 2, 'Kabupaten Humbang Hasundutan', '2.1988508', '98.5721016'),
(1364, 2, 'Kabupaten Pakpak Bharat', '2.5457860', '98.2998380'),
(1365, 2, 'Kabupaten Samosir', '2.5833333', '98.8166667'),
(1366, 2, 'Kabupaten Serdang Bedagai', '3.3371694', '99.0571089'),
(1367, 2, 'Kabupaten Batu Bara', '3.1740979', '99.5006143'),
(1368, 2, 'Kabupaten Padang Lawas Utara', '1.5758644', '99.6341350'),
(1369, 2, 'Kabupaten Padang Lawas', '1.1186977', '99.8124935'),
(1370, 2, 'Kota Sibolga', '1.7403745', '98.7827988'),
(1371, 2, 'Kota Tanjung Balai', '2.9651220', '99.8003310'),
(1372, 2, 'Kota Pematang Siantar', '2.9600000', '99.0600000'),
(1373, 2, 'Kota Tebing Tinggi', '3.3856205', '99.2009815'),
(1374, 2, 'Kota Medan', '3.5852420', '98.6755979'),
(1375, 2, 'Kota Binjai', '3.5944620', '98.4822460'),
(1376, 2, 'Kota Padangsidimpuan', '1.3804240', '99.2739720'),
(1377, 3, 'Kabupaten Kepulauan Mentawai', '-1.4260010', '98.9245343'),
(1378, 3, 'Kabupaten Pesisir Selatan', '-1.7223147', '100.8903090'),
(1379, 3, 'Kabupaten Solok', '-0.8030270', '100.6444020'),
(1380, 3, 'Kabupaten Sijunjung', '-0.6881586', '100.9976580'),
(1381, 3, 'Kabupaten Tanah Datar', '-0.4797043', '100.5746220'),
(1382, 3, 'Kabupaten Padang Pariaman', '-0.5546757', '100.2151570'),
(1383, 3, 'Kabupaten Agam', '-0.2209392', '100.1703250'),
(1384, 3, 'Kabupaten Lima Puluh Kota', '3.1682160', '99.4187929'),
(1385, 3, 'Kabupaten Pasaman', '0.1288752', '99.7901781'),
(1386, 3, 'Kabupaten Solok Selatan', '-1.4157329', '101.2523790'),
(1387, 3, 'Kabupaten Dharmas Raya', '-1.1120568', '101.6157770'),
(1388, 3, 'Kabupaten Pasaman Barat', '0.2213005', '99.6341350'),
(1389, 3, 'Kota Padang', '-0.9500000', '100.3530550'),
(1390, 3, 'Kota Solok', '-0.8030270', '100.6444020'),
(1391, 3, 'Kota Sawah Lunto', '-0.6810286', '100.7763600'),
(1392, 3, 'Kota Padang Panjang', '-0.4706790', '100.4059450'),
(1393, 3, 'Kota Bukittinggi', '-0.3055556', '100.3691660'),
(1394, 3, 'Kota Payakumbuh', '-0.2288700', '100.6323010'),
(1395, 3, 'Kota Pariaman', '-0.6264389', '100.1179570'),
(1396, 4, 'Kabupaten Kuantan Singingi', '-0.4411596', '101.5248050'),
(1397, 4, 'Kabupaten Indragiri Hulu', '-0.7361181', '102.2547910'),
(1398, 4, 'Kabupaten Indragiri Hilir', '-0.1456733', '102.9896150'),
(1399, 4, 'Kabupaten Pelalawan', '0.4414150', '102.0886990'),
(1400, 4, 'Kabupaten S I A K', '-0.7892750', '113.9213270'),
(1401, 4, 'Kabupaten Kampar', '0.1466710', '101.1617350'),
(1402, 4, 'Kabupaten Rokan Hulu', '1.0410934', '100.4396560'),
(1403, 4, 'Kabupaten Bengkalis', '1.4897222', '102.0797220'),
(1404, 4, 'Kabupaten Rokan Hilir', '1.6463978', '100.8000050'),
(1405, 4, 'Kota Pekanbaru', '0.5333333', '101.4500000'),
(1406, 4, 'Kota Dumai', '1.6657420', '101.4476010'),
(1407, 5, 'Kabupaten Kerinci', '-1.6970000', '101.2640000'),
(1408, 5, 'Kabupaten Merangin', '-2.1752789', '101.9804610'),
(1409, 5, 'Kabupaten Sarolangun', '-2.2654937', '102.6905320'),
(1410, 5, 'Kabupaten Batang Hari', '-1.7083922', '103.0817900'),
(1411, 5, 'Kabupaten Muaro Jambi', '-1.5966720', '103.6157990'),
(1412, 5, 'Kabupaten Tanjung Jabung Timur', '-1.3291599', '103.8997300'),
(1413, 5, 'Kabupaten Tanjung Jabung Barat', '-1.2332122', '103.7984420'),
(1414, 5, 'Kabupaten Tebo', '-1.2592999', '102.3463870'),
(1415, 5, 'Kabupaten Bungo', '-1.6401338', '101.8891720'),
(1416, 5, 'Kota Jambi', '-1.5966720', '103.6157990'),
(1417, 6, 'Kabupaten Ogan Komering Ulu', '-4.0283486', '104.0072340'),
(1418, 6, 'Kabupaten Ogan Komering Ilir', '-3.4559744', '105.2194800'),
(1419, 6, 'Kabupaten Muara Enim', '-3.6515810', '103.7707980'),
(1420, 6, 'Kabupaten Lahat', '-3.7863889', '103.5427770'),
(1421, 6, 'Kabupaten Musi Rawas', '-2.8625305', '102.9896150'),
(1422, 6, 'Kabupaten Musi Banyuasin', '-2.5442029', '103.7289160'),
(1423, 6, 'Kabupaten Banyu Asin', '-2.6095639', '104.7520930'),
(1424, 6, 'Kabupaten Ogan Komering Ulu Selatan', '-4.6681951', '104.0072340'),
(1425, 6, 'Kabupaten Ogan Komering Ulu Timur', '-3.8567934', '104.7520930'),
(1426, 6, 'Kabupaten Ogan Ilir', '-3.4265440', '104.6121470'),
(1427, 6, 'Kabupaten Empat Lawang', '-3.7286029', '102.8975090'),
(1428, 6, 'Kota Palembang', '-2.9911083', '104.7567330'),
(1429, 6, 'Kota Prabumulih', '-3.4409560', '104.2353970'),
(1430, 6, 'Kota Pagar Alam', '-4.0376700', '103.2652970'),
(1431, 6, 'Kota Lubuklinggau', '-3.2966667', '102.8616660'),
(1432, 7, 'Kabupaten Bengkulu Selatan', '-4.3248409', '103.0356940'),
(1433, 7, 'Kabupaten Rejang Lebong', '-3.4548154', '102.6675570'),
(1434, 7, 'Kabupaten Bengkulu Utara', '-3.4219555', '102.1632710'),
(1435, 7, 'Kabupaten Kaur', '-4.6792278', '103.4511760'),
(1436, 7, 'Kabupaten Seluma', '-4.0622929', '102.5642260'),
(1437, 7, 'Kabupaten Mukomuko', '-2.5760003', '101.1169800'),
(1438, 7, 'Kabupaten Lebong', '-2.9926170', '104.3822020'),
(1439, 7, 'Kabupaten Kepahiang', '-3.6514310', '102.5782010'),
(1440, 7, 'Kota Bengkulu', '-3.7955556', '102.2591660'),
(1441, 8, 'Kabupaten Lampung Barat', '-5.1490396', '104.1930910'),
(1442, 8, 'Kabupaten Tanggamus', '-5.3027489', '104.5655270'),
(1443, 8, 'Kabupaten Lampung Selatan', '-5.5622614', '105.5474370'),
(1444, 8, 'Kabupaten Lampung Timur', '-5.1134995', '105.6881780'),
(1445, 8, 'Kabupaten Lampung Tengah', '-4.8008086', '105.3131180'),
(1446, 8, 'Kabupaten Lampung Utara', '-4.8133905', '104.7520930'),
(1447, 8, 'Kabupaten Way Kanan', '-4.4963689', '104.5655270'),
(1448, 8, 'Kabupaten Tulangbawang', '-4.3176576', '105.5005480'),
(1449, 8, 'Kabupaten Pesawaran', '-5.4932450', '105.0791220'),
(1450, 8, 'Kota Bandar Lampung', '-5.4500000', '105.2666660'),
(1451, 8, 'Kota Metro', '-5.1166667', '105.3000000'),
(1452, 9, 'Kabupaten Bangka', '-2.2884782', '106.0640170'),
(1453, 9, 'Kabupaten Belitung', '-2.8708938', '107.9531830'),
(1454, 9, 'Kabupaten Bangka Barat', '-2.2884782', '106.0640170'),
(1455, 9, 'Kabupaten Bangka Tengah', '-2.2884782', '106.0640170'),
(1456, 9, 'Kabupaten Bangka Selatan', '-2.2884782', '106.0640170'),
(1457, 9, 'Kabupaten Belitung Timur', '-2.8708938', '107.9531830'),
(1458, 9, 'Kota Pangkal Pinang', '-2.1293230', '106.1095960'),
(1459, 10, 'Kabupaten Karimun', '1.0500000', '103.3666660'),
(1460, 10, 'Kabupaten Bintan', '1.0619173', '104.5189210'),
(1461, 10, 'Kabupaten Natuna', '3.9329945', '108.1812240'),
(1462, 10, 'Kabupaten Lingga', '-0.1627686', '104.6354630'),
(1463, 10, 'Kota Batam', '1.0456264', '104.0304530'),
(1464, 10, 'Kota Tanjung Pinang', '0.9179205', '104.4464640'),
(1465, 11, 'Kabupaten Kepulauan Seribu', '-5.7985266', '106.5071980'),
(1466, 11, 'Kota Jakarta Selatan', '-6.3329730', '106.8079150'),
(1467, 11, 'Kota Jakarta Timur', '-6.2115440', '106.8451720'),
(1468, 11, 'Kota Jakarta Pusat', '-6.2115440', '106.8451720'),
(1469, 11, 'Kota Jakarta Barat', '-6.2115440', '106.8451720'),
(1470, 11, 'Kota Jakarta Utara', '-6.2115440', '106.8451720'),
(1471, 12, 'Kabupaten Bogor', '-6.6000000', '106.8000000'),
(1472, 12, 'Kabupaten Sukabumi', '-6.9240500', '106.9222030'),
(1473, 12, 'Kabupaten Cianjur', '-6.8172531', '107.1307280'),
(1474, 12, 'Kabupaten Bandung', '-6.9147444', '107.6098110'),
(1475, 12, 'Kabupaten Garut', '-7.2279060', '107.9086990'),
(1476, 12, 'Kabupaten Tasikmalaya', '-7.3279540', '108.2141040'),
(1477, 12, 'Kabupaten Ciamis', '-7.3333333', '108.3500000'),
(1478, 12, 'Kabupaten Kuningan', '-6.9833333', '108.4833330'),
(1479, 12, 'Kabupaten Cirebon', '-6.7155340', '108.5640030'),
(1480, 12, 'Kabupaten Majalengka', '-6.8531026', '108.2258890'),
(1481, 12, 'Kabupaten Sumedang', '0.6095949', '110.0330550'),
(1482, 12, 'Kabupaten Indramayu', '-6.3363150', '108.3251040'),
(1483, 12, 'Kabupaten Subang', '-6.5693610', '107.7524030'),
(1484, 12, 'Kabupaten Purwakarta', '-6.5386806', '107.4499400'),
(1485, 12, 'Kabupaten Karawang', '-6.3227303', '107.3375790'),
(1486, 12, 'Kabupaten Bekasi', '-6.2333333', '107.0000000'),
(1487, 12, 'Kabupaten Bandung Barat', '-6.8937121', '107.4321950'),
(1488, 12, 'Kota Bogor', '-6.6000000', '106.8000000'),
(1489, 12, 'Kota Sukabumi', '-6.9240500', '106.9222030'),
(1490, 12, 'Kota Bandung', '-6.9147444', '107.6098110'),
(1491, 12, 'Kota Cirebon', '-6.7155340', '108.5640030'),
(1492, 12, 'Kota Bekasi', '-6.2333333', '107.0000000'),
(1493, 12, 'Kota Depok', '-6.3900000', '106.8300000'),
(1494, 12, 'Kota Cimahi', '-6.8802390', '107.5355000'),
(1495, 12, 'Kota Tasikmalaya', '-7.3279540', '108.2141040'),
(1496, 12, 'Kota Banjar', '-7.3666667', '108.5333330'),
(1497, 13, 'Kabupaten Cilacap', '-7.7333330', '109.0000000'),
(1498, 13, 'Kabupaten Banyumas', '-7.4832133', '109.1404380'),
(1499, 13, 'Kabupaten Purbalingga', '-7.3907470', '109.3638000'),
(1500, 13, 'Kabupaten Banjarnegara', '-7.4027060', '109.6813960'),
(1501, 13, 'Kabupaten Kebumen', '-7.6786820', '109.6565020'),
(1502, 13, 'Kabupaten Purworejo', '-7.7097310', '110.0080030'),
(1503, 13, 'Kabupaten Wonosobo', '-7.3621090', '109.8993990'),
(1504, 13, 'Kabupaten Magelang', '-7.4812530', '110.2137990'),
(1505, 13, 'Kabupaten Boyolali', '-7.5238190', '110.5959010'),
(1506, 13, 'Kabupaten Klaten', '-7.7116870', '110.5954970'),
(1507, 13, 'Kabupaten Sukoharjo', '-7.6808818', '110.8195290'),
(1508, 13, 'Kabupaten Wonogiri', '-7.8177820', '110.9206010'),
(1509, 13, 'Kabupaten Karanganyar', '-7.5961111', '110.9508330'),
(1510, 13, 'Kabupaten Sragen', '-7.4302290', '111.0213010'),
(1511, 13, 'Kabupaten Grobogan', '-7.0217194', '110.9625850'),
(1512, 13, 'Kabupaten Blora', '-6.9500000', '111.4166660'),
(1513, 13, 'Kabupaten Rembang', '-6.7112400', '111.3452990'),
(1514, 13, 'Kabupaten Pati', '-6.7513380', '111.0380020'),
(1515, 13, 'Kabupaten Kudus', '-6.8040870', '110.8382030'),
(1516, 13, 'Kabupaten Jepara', '-6.5596059', '110.6717000'),
(1517, 13, 'Kabupaten Demak', '-6.8881150', '110.6392970'),
(1518, 13, 'Kabupaten Semarang', '-6.9666667', '110.4166660'),
(1519, 13, 'Kabupaten Temanggung', '-7.3166690', '110.1747970'),
(1520, 13, 'Kabupaten Kendal', '-6.9196860', '110.2055970'),
(1521, 13, 'Kabupaten Batang', '-6.8941111', '109.7234510'),
(1522, 13, 'Kabupaten Pekalongan', '-6.8828870', '109.6699980'),
(1523, 13, 'Kabupaten Pemalang', '-6.8842340', '109.3779980'),
(1524, 13, 'Kabupaten Tegal', '-6.8666667', '109.1333330'),
(1525, 13, 'Kabupaten Brebes', '-6.8833333', '109.0500000'),
(1526, 13, 'Kota Magelang', '-7.4812530', '110.2137990'),
(1527, 13, 'Kota Surakarta', '-7.5666667', '110.8166660'),
(1528, 13, 'Kota Salatiga', '-7.3023280', '110.4729000'),
(1529, 13, 'Kota Semarang', '-6.9666667', '110.4166660'),
(1530, 13, 'Kota Pekalongan', '-6.8828870', '109.6699980'),
(1531, 13, 'Kota Tegal', '-6.8666667', '109.1333330'),
(1532, 14, 'Kabupaten Kulon Progo', '-7.8266798', '110.1640840'),
(1533, 14, 'Kabupaten Bantul', '-7.8846111', '110.3341110'),
(1534, 14, 'Kabupaten Gunung Kidul', '-8.0305091', '110.6168920'),
(1536, 14, 'Kota Yogyakarta', '-7.7972240', '110.3687970'),
(1537, 16, 'Kabupaten Pandeglang', '-6.3148350', '106.1038970'),
(1538, 16, 'Kabupaten Lebak', '-6.5643956', '106.2522140'),
(1539, 16, 'Kabupaten Tangerang', '-6.1783056', '106.6318880'),
(1540, 16, 'Kabupaten Serang', '-6.1200900', '106.1502990'),
(1541, 16, 'Kota Tangerang', '-6.1783056', '106.6318880'),
(1542, 16, 'Kota Cilegon', '-6.0169825', '106.0405060'),
(1543, 16, 'Kota Serang', '-6.1200900', '106.1502990'),
(1544, 17, 'Kabupaten Jembrana', '-8.3618520', '114.6418000'),
(1545, 17, 'Kabupaten Tabanan', '-8.5445160', '115.1197970'),
(1546, 17, 'Kabupaten Badung', '-8.5819296', '115.1770580'),
(1547, 17, 'Kabupaten Gianyar', '-8.5441850', '115.3255000'),
(1548, 17, 'Kabupaten Klungkung', '-8.5389222', '115.4045110'),
(1549, 17, 'Kabupaten Bangli', '-8.4543030', '115.3548970'),
(1550, 17, 'Kabupaten Karang Asem', '-6.3996057', '108.0503040'),
(1551, 17, 'Kabupaten Buleleng', '-8.1138310', '115.1269990'),
(1552, 17, 'Kota Denpasar', '-8.6562900', '115.2220990'),
(1553, 18, 'Kabupaten Lombok Barat', '-8.6464599', '116.1123070'),
(1554, 18, 'Kabupaten Lombok Tengah', '-8.6946230', '116.2777070'),
(1555, 18, 'Kabupaten Lombok Timur', '-8.5134471', '116.5609850'),
(1556, 18, 'Kabupaten Sumbawa', '-8.6529334', '117.3616470'),
(1557, 18, 'Kabupaten Dompu', '-8.4966318', '118.4747170'),
(1558, 18, 'Kabupaten Bima', '-8.4605660', '118.7274020'),
(1559, 18, 'Kabupaten Sumbawa Barat', '-8.9292907', '116.8910340'),
(1560, 18, 'Kota Mataram', '-8.5833333', '116.1166660'),
(1561, 18, 'Kota Bima', '-8.4605660', '118.7274020'),
(1562, 19, 'Kabupaten Sumba Barat', '-9.6548326', '119.3947130'),
(1563, 19, 'Kabupaten Sumba Timur', '-9.9802103', '120.3435500'),
(1564, 19, 'Kabupaten Kupang', '-10.1833330', '123.5833330'),
(1565, 19, 'Kabupaten Timor Tengah Selatan', '-9.7762816', '124.4198240'),
(1566, 19, 'Kabupaten Timor Tengah Utara', '-9.4522647', '124.5971320'),
(1567, 19, 'Kabupaten Belu', '-9.4125796', '124.9506620'),
(1568, 19, 'Kabupaten Alor', '-8.2754027', '124.7298760'),
(1569, 19, 'Kabupaten Lembata', '-8.4719075', '123.4831900'),
(1570, 19, 'Kabupaten Flores Timur', '-8.3130942', '122.9663010'),
(1571, 19, 'Kabupaten Sikka', '-8.6766175', '122.1291840'),
(1572, 19, 'Kabupaten Ende', '-8.8540530', '121.6541980'),
(1573, 19, 'Kabupaten Ngada', '-8.7430424', '120.9876320'),
(1574, 19, 'Kabupaten Manggarai', '-8.6796987', '120.3896650'),
(1575, 19, 'Kabupaten Rote Ndao', '-10.7386420', '123.1239040'),
(1576, 19, 'Kabupaten Manggarai Barat', '-8.6688149', '120.0665230'),
(1577, 19, 'Kabupaten Sumba Tengah', '-9.4879226', '119.6962670'),
(1578, 19, 'Kabupaten Sumba Barat Daya', '-9.5391390', '119.1390640'),
(1579, 19, 'Kabupaten Nagekeo', '-8.6753545', '121.3084080'),
(1580, 19, 'Kabupaten Manggarai Timur', '-8.6206712', '120.6199890'),
(1581, 19, 'Kota Kupang', '-10.1833330', '123.5833330'),
(1582, 20, 'Kabupaten Sambas', '1.3613280', '109.3099980'),
(1583, 20, 'Kabupaten Bengkayang', '0.8209729', '109.4776990'),
(1584, 20, 'Kabupaten Landak', '0.4237287', '109.7591670'),
(1585, 20, 'Kabupaten Pontianak', '-0.0225230', '109.3303070'),
(1586, 20, 'Kabupaten Sanggau', '0.1192750', '110.5972980'),
(1587, 20, 'Kabupaten Ketapang', '-1.8590980', '109.9719010'),
(1588, 20, 'Kabupaten Sintang', '0.0802380', '111.4954990'),
(1589, 20, 'Kabupaten Kapuas Hulu', '-0.7931004', '113.9060620'),
(1590, 20, 'Kabupaten Sekadau', '0.0156370', '110.8886030'),
(1591, 20, 'Kabupaten Melawi', '-0.7000681', '111.6660720'),
(1592, 20, 'Kabupaten Kayong Utara', '-0.9225877', '110.0449660'),
(1593, 20, 'Kabupaten Kubu Raya', '-0.3533938', '109.4735060'),
(1594, 20, 'Kota Pontianak', '-0.0225230', '109.3303070'),
(1595, 20, 'Kota Singkawang', '0.9087950', '108.9845960'),
(1596, 21, 'Kabupaten Kotawaringin Barat', '-6.1961131', '106.8630170'),
(1597, 21, 'Kabupaten Kotawaringin Timur', '-6.1952992', '106.8630730'),
(1598, 21, 'Kabupaten Kapuas', '-0.0459972', '110.1313250'),
(1599, 21, 'Kabupaten Barito Selatan', '-1.8759430', '114.8092690'),
(1600, 21, 'Kabupaten Barito Utara', '-0.9587136', '115.0940450'),
(1601, 21, 'Kabupaten Sukamara', '-2.6267517', '111.2368080'),
(1602, 21, 'Kabupaten Lamandau', '-1.9269166', '111.1891150'),
(1603, 21, 'Kabupaten Seruyan', '-3.0123467', '112.4291460'),
(1604, 21, 'Kabupaten Katingan', '-0.9758379', '112.8105510'),
(1605, 21, 'Kabupaten Pulang Pisau', '-2.6849607', '113.9536460'),
(1606, 21, 'Kabupaten Gunung Mas', '-6.7052778', '106.9913880'),
(1607, 21, 'Kabupaten Barito Timur', '-2.0123999', '115.1889160'),
(1608, 21, 'Kabupaten Murung Raya', '-0.1362171', '114.3341430'),
(1609, 21, 'Kota Palangka Raya', '-2.2100000', '113.9200000'),
(1610, 22, 'Kabupaten Tanah Laut', '-3.7694047', '114.8092690'),
(1611, 22, 'Kabupaten Kota Baru', '-6.3329730', '106.8079150'),
(1612, 22, 'Kabupaten Banjar', '-7.3666667', '108.5333330'),
(1613, 22, 'Kabupaten Barito Kuala', '-3.0714738', '114.6667930'),
(1614, 22, 'Kabupaten Tapin', '-2.9160746', '115.0465990'),
(1615, 22, 'Kabupaten Hulu Sungai Selatan', '-2.7662681', '115.2363400'),
(1616, 22, 'Kabupaten Hulu Sungai Tengah', '-2.6153162', '115.5207350'),
(1617, 22, 'Kabupaten Hulu Sungai Utara', '-2.4421225', '115.1889160'),
(1618, 22, 'Kabupaten Tabalong', '-1.8643020', '115.5681080'),
(1619, 22, 'Kabupaten Tanah Bumbu', '-3.4512244', '115.5681080'),
(1620, 22, 'Kabupaten Balangan', '-2.3260425', '115.6154730'),
(1621, 22, 'Kota Banjarmasin', '-3.3284990', '114.5892030'),
(1622, 22, 'Kota Banjar Baru', '-3.4666667', '114.7500000'),
(1623, 23, 'Kabupaten Paser', '-1.7175266', '115.9467990'),
(1624, 23, 'Kabupaten Kutai Barat', '0.1353881', '115.0940450'),
(1625, 23, 'Kabupaten Kutai Kartanegara', '-0.1336655', '116.6081650'),
(1626, 23, 'Kabupaten Kutai Timur', '0.9433774', '116.9852420'),
(1627, 23, 'Kabupaten Berau', '2.0450883', '117.3616470'),
(1628, 23, 'Kabupaten Malinau', '3.5842210', '116.6477970'),
(1629, 23, 'Kabupaten Bulungan', '2.9042476', '116.9852420'),
(1630, 23, 'Kabupaten Nunukan', '4.0609227', '117.6669520'),
(1631, 23, 'Kabupaten Penajam Paser Utara', '-1.2917094', '116.5137960'),
(1632, 23, 'Kabupaten Tana Tidung', '3.5518690', '117.0794080'),
(1633, 23, 'Kota Balikpapan', '-1.2635389', '116.8278830'),
(1634, 23, 'Kota Samarinda', '-0.5021830', '117.1538010'),
(1635, 23, 'Kota Tarakan', '3.3000000', '117.6333330'),
(1636, 23, 'Kota Bontang', '0.1333333', '117.5000000'),
(1637, 24, 'Kabupaten Bolaang Mongondow', '0.6870994', '124.0641410'),
(1638, 24, 'Kabupaten Minahasa', '1.0000000', '124.5833330'),
(1639, 24, 'Kabupaten Kepulauan Sangihe', '3.5303212', '125.5438960'),
(1640, 24, 'Kabupaten Kepulauan Talaud', '4.0920000', '126.7680000'),
(1641, 24, 'Kabupaten Minahasa Selatan', '1.0946773', '124.4641840'),
(1642, 24, 'Kabupaten Minahasa Utara', '1.5327973', '124.9947510'),
(1643, 24, 'Kabupaten Bolaang Mongondow Utara', '0.8186910', '123.5280070'),
(1644, 24, 'Kabupaten Siau Tagulandang Biaro', '2.3459640', '125.4124350'),
(1645, 24, 'Kabupaten Minahasa Tenggara', '1.0278551', '124.7298760'),
(1646, 24, 'Kota Manado', '1.4917014', '124.8428430'),
(1647, 24, 'Kota Bitung', '1.4553529', '125.2046970'),
(1648, 24, 'Kota Tomohon', '1.3234131', '124.8384500'),
(1649, 24, 'Kota Kotamobagu', '0.7333333', '124.3166660'),
(1650, 25, 'Kabupaten Banggai Kepulauan', '-1.6408137', '123.5504070'),
(1651, 25, 'Kabupaten Banggai', '-1.6408137', '123.5504070'),
(1652, 25, 'Kabupaten Morowali', '-2.3003072', '121.5370000'),
(1653, 25, 'Kabupaten Poso', '-1.3919220', '120.7669980'),
(1654, 25, 'Kabupaten Donggala', '-0.4233155', '119.8352300'),
(1655, 25, 'Kabupaten Toli-Toli', '0.8768231', '120.7579830'),
(1656, 25, 'Kabupaten Buol', '0.9695452', '121.3541630'),
(1657, 25, 'Kabupaten Parigi Moutong', '0.5817607', '120.8039470'),
(1658, 25, 'Kabupaten Tojo Una-Una', '-1.0987570', '121.5370000'),
(1659, 25, 'Kota Palu', '-0.8985830', '119.8506010'),
(1660, 26, 'Kabupaten Selayar', '-6.0000000', '120.5000000'),
(1661, 26, 'Kabupaten Bulukumba', '-5.4329368', '120.2051090'),
(1662, 26, 'Kabupaten Bantaeng', '-5.5169316', '120.0202960'),
(1663, 26, 'Kabupaten Jeneponto', '-5.5545790', '119.6730930'),
(1664, 26, 'Kabupaten Takalar', '-5.4162493', '119.4875660'),
(1665, 26, 'Kabupaten Gowa', '-5.3102888', '119.7426040'),
(1666, 26, 'Kabupaten Sinjai', '-5.2171961', '120.1127350'),
(1667, 26, 'Kabupaten Maros', '-4.9469500', '119.5789030'),
(1668, 26, 'Kabupaten Pangkajene Dan Kepulauan', '-4.8050350', '119.5571670'),
(1669, 26, 'Kabupaten Barru', '-4.4172651', '119.6730930'),
(1670, 26, 'Kabupaten Bone', '-2.0833330', '120.2166670'),
(1671, 26, 'Kabupaten Soppeng', '-4.3518541', '119.9277940'),
(1672, 26, 'Kabupaten Wajo', '-4.0222290', '120.0665230'),
(1673, 26, 'Kabupaten Sidenreng Rappang', '-3.7738981', '120.0202960'),
(1674, 26, 'Kabupaten Pinrang', '-3.7930710', '119.6408000'),
(1675, 26, 'Kabupaten Enrekang', '-3.5631280', '119.7612000'),
(1676, 26, 'Kabupaten Luwu', '-3.3052214', '120.2512720'),
(1677, 26, 'Kabupaten Tana Toraja', '-3.0753003', '119.7426040'),
(1678, 26, 'Kabupaten Luwu Utara', '-2.2690446', '119.9740530'),
(1679, 26, 'Kabupaten Luwu Timur', '-2.5825518', '121.1710380'),
(1680, 26, 'Kota Makassar', '-5.1333333', '119.4166660'),
(1681, 26, 'Kota Pare-Pare', '-4.0166667', '119.6236110'),
(1682, 26, 'Kota Palopo', '-3.0000000', '120.2000000'),
(1683, 27, 'Kabupaten Buton', '-5.3096355', '122.9888310'),
(1684, 27, 'Kabupaten Muna', '-4.9016290', '122.6277450'),
(1685, 27, 'Kabupaten Konawe', '-3.9380432', '122.0837440'),
(1686, 27, 'Kabupaten Kolaka', '-4.0496650', '121.5938030'),
(1687, 27, 'Kabupaten Konawe Selatan', '-4.2027915', '122.4467230'),
(1688, 27, 'Kabupaten Bombana', '-4.6543462', '121.9017950'),
(1689, 27, 'Kabupaten Wakatobi', '-5.3264442', '123.5951920'),
(1690, 27, 'Kabupaten Kolaka Utara', '-3.1347227', '121.1710380'),
(1691, 27, 'Kabupaten Buton Utara', '-4.7023424', '123.0338760'),
(1692, 27, 'Kabupaten Konawe Utara', '-3.3803291', '122.0837440'),
(1693, 27, 'Kota Kendari', '-3.9722010', '122.5149020'),
(1694, 27, 'Kota Bau-Bau', '-5.4666700', '122.6330000'),
(1695, 28, 'Kabupaten Boalemo', '0.7013419', '122.2653880'),
(1696, 28, 'Kabupaten Gorontalo', '0.5333333', '123.0666660'),
(1697, 28, 'Kabupaten Pohuwato', '0.7055278', '121.7195450'),
(1698, 28, 'Kabupaten Bone Bolango', '0.5657885', '123.3486140'),
(1699, 28, 'Kabupaten Gorontalo Utara', '0.9252647', '122.4920080'),
(1700, 28, 'Kota Gorontalo', '0.5333333', '123.0666660'),
(1701, 29, 'Kabupaten Majene', '-3.0297251', '118.9062790'),
(1702, 29, 'Kabupaten Polewali Mandar', '-3.3419323', '119.1390640'),
(1703, 29, 'Kabupaten Mamasa', '-2.9601350', '119.3682020'),
(1704, 29, 'Kabupaten Mamuju', '-2.7293364', '118.9295730'),
(1705, 29, 'Kabupaten Mamuju Utara', '-1.5264542', '119.5107700'),
(1706, 30, 'Kabupaten Maluku Tenggara Barat', '-7.5322642', '131.3611120'),
(1707, 30, 'Kabupaten Maluku Tenggara', '-5.7512455', '132.7271580'),
(1708, 30, 'Kabupaten Maluku Tengah', '-3.0166501', '129.4864410'),
(1709, 30, 'Kabupaten Buru Selatan', '-3.3927754', '126.7819500'),
(1710, 30, 'Kabupaten Kepulauan Aru', '-6.1946502', '134.5501930'),
(1711, 30, 'Kabupaten Seram Bagian Barat', '-3.1271575', '128.4008350'),
(1712, 30, 'Kabupaten Seram Bagian Timur', '-3.4150761', '130.3904880'),
(1713, 30, 'Kota Ambon', '-3.6560700', '128.1664190'),
(1714, 30, 'KotaTual', '-5.6408510', '132.7475090'),
(1715, 31, 'Kabupaten Halmahera Barat', '1.3121235', '128.4849920'),
(1716, 31, 'Kabupaten Halmahera Tengah', '1.3121235', '128.4849920'),
(1717, 31, 'Kabupaten Kepulauan Sula', '-1.8666667', '125.3666660'),
(1718, 31, 'Kabupaten Halmahera Selatan', '1.3121235', '128.4849920'),
(1719, 31, 'Kabupaten Halmahera Utara', '1.3121235', '128.4849920'),
(1720, 31, 'Kabupaten Halmahera Timur', '1.3121235', '128.4849920'),
(1721, 31, 'Kota Ternate', '0.7833333', '127.3666660'),
(1722, 31, 'Kota Tidore Kepulauan', '0.6833333', '127.4000000'),
(1723, 32, 'Kabupaten Fakfak', '-2.8852370', '132.2658280'),
(1724, 32, 'Kabupaten Kaimana', '-3.6609250', '133.7745060'),
(1725, 32, 'Kabupaten Teluk Wondama', '-2.8551699', '134.3236550'),
(1726, 32, 'Kabupaten Teluk Bintuni', '-1.9056848', '133.3294660'),
(1727, 32, 'Kabupaten Manokwari', '-0.8614531', '134.0620420'),
(1728, 32, 'Kabupaten Sorong Selatan', '-0.8666667', '131.2500000'),
(1729, 32, 'Kota Sorong', '-0.8666667', '131.2500000'),
(1730, 32, 'Kabupaten Raja Ampat', '-1.0915151', '130.8778580'),
(1731, 32, 'Kabupaten Sorong', '-0.8666667', '131.2500000'),
(1732, 33, 'Kabupaten Merauke', '-8.4960406', '140.3945520'),
(1733, 33, 'Kabupaten Jayawijaya', '-4.0004481', '138.7995120'),
(1734, 33, 'Kabupaten Jayapura', '-2.5330000', '140.7170000'),
(1735, 33, 'Kabupaten Nabire', '-3.5095462', '135.7520980'),
(1736, 33, 'Kabupaten Kepulauan Yapen', '-1.7469359', '136.1709010'),
(1737, 33, 'Kabupaten Biak Numfor', '-1.0381022', '135.9800840'),
(1738, 33, 'Kabupaten Paniai', '-3.7876441', '136.3624680'),
(1739, 33, 'Kabupaten Puncak Jaya', '-4.0836111', '137.1847220'),
(1740, 33, 'Kabupaten Mimika', '-4.4553223', '137.1362120'),
(1741, 33, 'Kabupaten Boven Digoel', '-5.7400018', '140.3481830'),
(1742, 33, 'Kabupaten Mappi', '-7.1022320', '139.3963930'),
(1743, 33, 'Kabupaten Asmat', '-5.0573958', '138.3988180'),
(1744, 33, 'Kabupaten Yahukimo', '-4.4939717', '139.5279990'),
(1745, 33, 'Kabupaten Pegunungan Bintang', '-4.5589872', '140.5135580'),
(1746, 33, 'Kabupaten Tolikara', '-3.4811320', '138.4787250'),
(1747, 33, 'Kabupaten Sarmi', '-1.8687270', '138.7436070'),
(1748, 33, 'Kabupaten Keerom', '-3.3449536', '140.7624490'),
(1749, 33, 'Kabupaten Waropen', '-2.8435717', '136.6705340'),
(1750, 33, 'Kabupaten Supiori', '-0.7295099', '135.6385120'),
(1751, 33, 'Kabupaten Mamberamo Raya', '-2.5331255', '137.7637560'),
(1752, 33, 'Kota Jayapura', '-2.5330000', '140.7170000'),
(1753, 2, 'Kabupaten Labuhanbatu Utara', '2.3465638', '99.8124935'),
(1754, 2, 'Kabupaten Labuhanbatu Selatan', '1.8799353', '100.1703250'),
(1756, 2, 'Kabupaten Nias Utara', '1.1255279', '97.5247243'),
(1757, 2, 'Kabupaten Nias Barat', '1.1255279', '97.5247243'),
(1758, 2, 'Kota Gunungsitoli', '1.2819640', '97.6159400'),
(1759, 4, 'Kabupaten Kepulauan Meranti', '0.9208765', '102.6675570'),
(1760, 5, 'Kota Sungai Penuh', '-2.0631400', '101.3871990'),
(1761, 7, 'Kabupaten Bengkulu Tengah', '-3.7955556', '102.2591660'),
(1762, 8, 'Kabupaten Tulangbawang Barat', '-4.5256967', '105.0791220'),
(1763, 8, 'Kabupaten Pringsewu', '-5.3539884', '104.9622490'),
(1764, 8, 'Kabupaten Mesuji', '-4.0044783', '105.3131180'),
(1765, 10, 'Kabupaten Lingga', '-0.1627686', '104.6354630'),
(1766, 10, ' Kabupaten Anambas', '3.1055459', '105.6537230'),
(1767, 14, 'Kabupaten Sleman', '-7.7161650', '110.3354030'),
(1768, 16, 'Kota Tangerang Selatan', '-6.2888889', '106.7180550'),
(1769, 18, 'Kabupaten Lombok Utara', '-8.3739076', '116.2777070'),
(1770, 19, 'Kabupaten Sabu Raijua', '-10.5541110', '121.8334860'),
(1771, 24, 'Kabupaten Bolang Mongondow Timur', '0.7152651', '124.4641840'),
(1772, 24, 'Kabupaten Bolang Mongondow Selatan', '0.4053215', '123.8411280'),
(1773, 25, 'Kabupaten Sigi', '-1.3834127', '120.0665230'),
(1774, 26, 'Kabupaten Toraja Utara', '-2.8621942', '119.8352300'),
(1775, 30, 'Kabupaten Maluku Barat Daya', '-7.7851588', '126.3498090'),
(1776, 30, 'Kabupaten Buru', '-3.3927754', '126.7819500'),
(1778, 31, 'Kabupaten Pulau Morota', '2.3656672', '128.4008350'),
(1789, 32, 'Kabupaten Tambrauw', '-0.7818560', '132.3938370'),
(1790, 32, 'Kabupaten Maybat', '3.1472000', '101.6997000'),
(1791, 33, 'Kabupaten Memberamo Tengah', '-2.3745692', '138.3190270'),
(1792, 33, 'Kabupaten Yalimo', '-3.7852847', '139.4466000'),
(1793, 33, 'Kabupaten Lanny Jaya', '-3.9710330', '138.3190270'),
(1794, 33, 'Kabupaten Nduga', '-4.4069496', '138.2393520'),
(1795, 33, 'Kabupaten Puncak', '-6.7125476', '106.9542420'),
(1796, 33, 'Kabupaten Dogiyai', '-4.0193872', '135.9610440'),
(1797, 33, 'Kabupaten Intan Jaya', '-3.5076422', '136.7478490'),
(1798, 33, 'Kabupaten Deiyai', '-4.0974893', '136.4393050');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1799;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;