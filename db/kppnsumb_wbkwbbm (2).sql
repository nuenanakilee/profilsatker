-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 03:20 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kppnsumb_wbkwbbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_bagkomponen`
--

CREATE TABLE `t_bagkomponen` (
  `idbagkomp` int(2) NOT NULL,
  `bagiankomponen` varchar(366) NOT NULL,
  `nilai` double(10,0) NOT NULL,
  `idkomp` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_bagkomponen`
--

INSERT INTO `t_bagkomponen` (`idbagkomp`, `bagiankomponen`, `nilai`, `idkomp`) VALUES
(11, 'Tim Kerja', 1, 1),
(12, 'Dokumen Rencana Pembangunan Zona Integritas', 1, 1),
(13, 'Dokumen Pemantauan dan Evaluasi Pembangunan WBKWBBM', 2, 1),
(14, 'Dokumen Perubahan Pola Pikir dan Budaya Kerja', 1, 1),
(21, 'Prosedur Operasional Tetap (SOP) Kegiatan Utama', 1, 2),
(22, 'E-Office', 2, 2),
(23, 'Keterbukaan Informasi Publik', 1, 2),
(31, 'Perencanaan Kebutuhan Pegawai', 2, 3),
(32, 'Pola Mutasi Internal', 2, 3),
(33, 'Pengembangan Pegawai Berbasis Kompetensi', 3, 3),
(34, 'Penetapan Kinerja Individu', 4, 3),
(35, 'Penegakan Aturan Disiplin', 3, 3),
(36, 'Sistem Informasi Kepegawaian', 1, 3),
(41, 'Keterlibatan Pimpinan', 5, 4),
(42, 'Pengelolaan Akuntabilitas Kinerja', 5, 4),
(51, 'Pengendalian Gratifikasi', 3, 5),
(52, 'Penerapan SPIP', 3, 5),
(53, 'Pengaduan Masyarakat', 3, 5),
(54, 'Whistle Blowing System', 3, 5),
(55, 'Penanganan Benturan Kepentingan', 3, 5),
(61, 'Standar Pelayanan', 3, 6),
(62, 'Budaya Pelayanan Prima', 3, 6),
(63, 'Penilaian Kepuasan Terhadap Pelayanan', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `t_bendahara`
--

CREATE TABLE `t_bendahara` (
  `kodesatker` char(6) CHARACTER SET utf8 DEFAULT NULL,
  `namapejabat` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tgllahir` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jeniskelamin` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `pendidikan` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `nip` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `gol` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jabstr` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `nmrsk` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tglsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tmtsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `jabperbend` varchar(60) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_bendahara`
--

INSERT INTO `t_bendahara` (`kodesatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `nip`, `gol`, `jabstr`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`) VALUES
('008800', 'LIS MULAWANSARI', '3/16/1979', 'Perempuan', 'Sarjana/Diploma IV', '197903161999032001', 'IIIB', '', 'KEP-IV-418/C.4/07/2016', '7/11/2016', '7/11/2016', 'Bendahara Pengeluaran'),
('099883', 'Husnul Fikri', '6/25/1987', 'Laki-laki', 'Sarjana/Diploma IV', '198706252011011006', 'IIIB', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran'),
('099884', 'Husnul Fikri', '6/25/1987', 'Laki-laki', 'Sarjana/Diploma IV', '198706252011011006', 'IIIB', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran'),
('230574', 'jawariah', '27/04/1978', 'Perempuan', 'Sarjana/Diploma IV', '197904272007012015', 'IIIB', '', '36 TAHUN 2018', '12/02/2018', '04/02/2013', 'Bendahara Pengeluaran'),
('230576', 'Rismawanti', '19/06/1973', 'Perempuan', 'Sarjana/Diploma IV', '197306192014062004', 'IIIA', '', 'Nomor 104 tahun 2018', '18/01/2018', '05/01/2017', 'Bendahara Pengeluaran'),
('239055', 'Muhammad Ghazali', '21/03/1982', 'Laki-laki', 'Sarjana/Diploma IV', '198203212010011017', 'IIIB', 'Kepala Seksi Pelestarian Sumber Daya Perikanan', '144/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'Bendahara Pengeluaran'),
('287651', 'Fitriyadi Prasong', '06/05/1989', 'Laki-laki', 'Sarjana/Diploma IV', '198905062010121008', 'IIB', '', 'KU. 706/1/2/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'Bendahara Pengeluaran'),
('288482', 'HETI KUSENDANG', '28/02/1978', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '197802282006042001', 'IIC', '', 'KP.004/673/XII/SWQ-2017', '22/12/2017', '01/01/2017', 'Bendahara Pengeluaran'),
('307871', 'SUPRIHATIN', '6/26/1973', 'Perempuan', 'Sarjana/Diploma IV', '197306262007012021', 'IIIA', '', 'B-01.a/Ma.19.07/KP.00.3/01/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran'),
('307892', 'PUJI DWI SAPUTRO. AMd.', '26/08/1988', 'Laki-laki', 'Diploma I/II/III', '19880826.201503.1.001', 'IIC', '', 'W22-A7/0017/KU.00.1/I/2018', '02/01/2018', '02/01/2017', 'Bendahara Pengeluaran'),
('309109', 'PUJI DWI SAPUTRO', '26/08/1988', 'Laki-laki', 'Diploma I/II/III', '19880826.201503.1.001', 'IIC', '', 'W22-A7/0017/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'Bendahara Pengeluaran'),
('350339', 'MARIYATIL', '25/03/1975', 'Perempuan', 'Sarjana/Diploma IV', '197503252008012009', 'IIIC', '', 'Bendahara Pengeluaran', '17/04/2017', '01/01/2017', 'Bendahara Pengeluaran'),
('350342', 'Saripudin', '3/11/1937', 'Laki-laki', 'Sarjana/Diploma IV', '197303112007011023', 'IIIA', '', 'Nomor 16.1', '4/17/2017', '1/1/2013', 'Bendahara Pengeluaran'),
('407644', 'I Dewa Nyoman Ari Oka', '26/05/1992', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '199205262010121002', 'IIB', '', 'W21.ESB-1325-KU.03.03 TAHUN 2017', '30/12/2018', '01/01/2018', 'Bendahara Pengeluaran'),
('411404', 'Ziadi Rahman', '3/15/1995', 'Laki-laki', 'Diploma I/II/III', '199503152015021006', 'IIA', '', 'Kep-01/WBC.13/KPP.MP.04/2018', '1/4/2018', '1/1/2017', 'Bendahara Pengeluaran'),
('418324', 'Suciana', '23/03/1980', 'Perempuan', 'Sarjana/Diploma IV', '198003232008012028', 'IIC', '', 'KEP/1/I/2018/BNNK', '02/01/2018', '03/01/2017', 'Bendahara Pengeluaran'),
('420000', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197506062005011002', 'IID', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2010', 'Bendahara Pengeluaran'),
('420001', 'Ardi Suzami', '29/03/1982', 'Laki-laki', 'Sarjana/Diploma IV', '198203292006041002', 'IIIC', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2014', 'Bendahara Pengeluaran'),
('420002', 'Taufikurrahman', '01/04/1972', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197204012007011026', 'IIC', '', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '01/01/2014', 'Bendahara Pengeluaran'),
('420003', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197506062005011002', 'IID', '', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2010', 'Bendahara Pengeluaran'),
('420004', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sarjana/Diploma IV', '197506062005011002', 'IID', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2010', 'Bendahara Pengeluaran'),
('420005', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197506062005011002', 'IID', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2010', 'Bendahara Pengeluaran'),
('429326', 'kunibadi\'ah khuliyati', '10/10/1987', 'Perempuan', 'Diploma I/II/III', '198710102009022005', 'IIIA', '', '001/KPA/2018', '2/1/2018', '1/1/2015', 'Bendahara Pengeluaran'),
('432181', 'NURHASSUMIARTI', '3/11/1978', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '197803112012122001', 'IIB', '', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'Bendahara Pengeluaran'),
('437350', 'Herlinna Navatilova Samallo', '30/11/2018', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '198311302012122004', 'IID', '', 'KU.403/322/SBW/XII/2017', '20/12/2018', '01/01/2014', 'Bendahara Pengeluaran'),
('498651', 'Sudirman', '05/10/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196510052007011008', 'IIIB', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'Bendahara Pengeluaran'),
('528608', 'Andrian Maulana', '9/22/1991', 'Laki-laki', 'Diploma I/II/III', '199109222013101002', 'IID', '', 'KEP-29/WPB.22/2015', '2/26/2015', '9/15/2014', 'Bendahara Pengeluaran'),
('553612', 'SUHARTINI', '10/25/1976', 'Perempuan', 'Sekolah Menegah Pertama/Sederajat dan lebih rendah', '197611252007012028', 'IIB', 'BENDAHARA PENGELUARAN', '69/Kk.19.04/01/2018', '1/8/2018', '12/1/2017', 'Bendahara Pengeluaran'),
('553629', 'NURHIDAYATI', '03/06/1982', 'Perempuan', 'Diploma I/II/III', '198206032005012003', 'IID', 'Bendahara Pengeluaran', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('567741', 'Darsiah', '10/9/1983', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '198309102005012001', 'IIC', '', '467/Kpts/KU.010/8/2017', '3/8/2017', '1/1/2013', 'Bendahara Pengeluaran'),
('575087', 'Wahyuni Utami', '05/11/1981', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '198111052009012004', 'IIB', '', 'B-004/MTs.19.24/PP.00.05/01/2018', '04/01/2018', '02/01/2012', 'Bendahara Pengeluaran'),
('603845', 'Kamariah', '11/1/2018', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '198211012007102002', 'IIB', '', '69/Kk.19.04/01/2018', '1/8/2018', '6/20/2018', 'Bendahara Pengeluaran'),
('603866', 'MUHAMMAD FARID WAJEDI', '19/09/1982', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '198209192005011005', 'IIC', '', '440 TAHUN 2017', '30/12/2017', '01/01/2017', 'Bendahara Pengeluaran'),
('603870', 'SITI RAUHUN', '5/28/1972', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '197205282007012013', 'IIC', '', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '1/1/2011', 'Bendahara Pengeluaran'),
('636249', 'Irwan Fatahillah', '7/14/1985', 'Laki-laki', 'Diploma I/II/III', '198507142006021002', 'IIC', '', 'Bnt-00444/038/2016', '4/1/2016', '5/8/2017', 'Bendahara Pengeluaran'),
('644946', 'I Made Sumendra', '16/08/1961', 'Laki-laki', 'Sekolah Menegah Pertama/Sederajat dan lebih rendah', '61080146', 'IIF', '', 'KEP/3/I/2017', '04/01/2017', '01/05/2008', 'Bendahara Pengeluaran'),
('652412', 'Maulana Malik', '16/05/1987', 'Laki-laki', 'Sarjana/Diploma IV', '198705162009121005', 'IID', '', 'W21.IMI.IMI.2-6794.KU.03.03 Tahun 2017', '29/12/2017', '04/11/2011', 'Bendahara Pengeluaran'),
('652559', 'Anwar', '15/07/1973', 'Laki-laki', 'Sarjana/Diploma IV', '197307151994031003', 'IID', '', 'Ku. 706/12/Upp.Bnt.17', '12/10/2017', '03/01/2013', 'Bendahara Pengeluaran'),
('653182', 'ARYA SUTHA NARWADI', '4/3/1992', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '199203042010121002', 'IIB', '', 'W21.EBSB.KU.03.03-02', '4/1/2018', '4/1/2018', 'Bendahara Pengeluaran'),
('653417', 'I Wayan Suryanita', '6/24/1981', 'Laki-laki', 'Diploma I/II/III', '198106242009121004', 'IID', '', 'W21.ERSB-149.KU.03.03 TAHUN 2017', '12/29/2017', '11/1/2011', 'Bendahara Pengeluaran'),
('655530', 'Fan Adie Keputran', '8/29/1991', 'Laki-laki', 'Diploma I/II/III', '199108292014111001', 'IIC', '', 'KEP-41/WPJ.31/KP.05/2017', '2/6/2017', '2/1/2017', 'Bendahara Pengeluaran'),
('658220', 'EWY ELVIA MARLIANA', '3/24/1983', 'Perempuan', 'Diploma I/II/III', '198303242010122001', 'IID', '', '02/HK/03.1-Kpts/5204/02/Sek-Kab/I/2018', '1/4/2018', '1/5/2017', 'Bendahara Pengeluaran'),
('658241', 'Hendry Bantara', '8/25/1985', 'Laki-laki', 'Sarjana/Diploma IV', '198508252010011005', 'IIIB', '', '01/HK.03.2-Kpt/5207/Sek-Kab/I/2018', '1/10/2018', '1/14/2012', 'Bendahara Pengeluaran'),
('664077', 'Mardiana', '10/01/1974', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '197401102006042001', 'IIC', '', '03/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('664078', 'Sahrul', '01/01/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196801012008011053', 'IIIB', '', '06/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('664079', 'Muh. Haromain', '16/09/1985', 'Laki-laki', 'Sarjana/Diploma IV', '198509162011011011', 'IIIB', '', '09/2018', '01/02/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('664080', 'Muh Haromain', '16/09/1985', 'Laki-laki', 'Sarjana/Diploma IV', '198509162011011011', 'IIIB', '', '013/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('665400', 'DWI SETIONO', '23/12/1976', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '76120526', 'IIF', 'KASI KEU', 'Sprin/ 40 / I / 2018', '09/01/2018', '28/12/2015', 'Bendahara Pengeluaran'),
('667016', 'FERDIAN SETYO WIBOWO', '31/01/1984', 'Laki-laki', 'Diploma I/II/III', '198401312009031002', 'IIIA', 'BENDAHARA PENGELUARAN', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran'),
('668601', 'Zaenal Abidin', '2/22/1981', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '198102222006041006', 'IIC', '', '001/KPG Tahun 2018', '1/2/2018', '7/1/2011', 'Bendahara Pengeluaran'),
('675467', 'Irfansyah, SE', '02/08/1982', 'Laki-laki', 'Sarjana/Diploma IV', '', '', 'Operator SAI', '1 TAHUN 2018', '04/06/2018', '02/06/2010', 'Bendahara Pengeluaran'),
('682274', 'SYAHABUDDIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196812311993031007', 'IIIC', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'Bendahara Pengeluaran'),
('689838', 'Eka sari dewi', '7/8/1987', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '198707082006042005', 'IIC', '', 'Kep/03/I/2018/BNNK-SB', '1/3/2018', '3/1/2017', 'Bendahara Pengeluaran'),
('690154', 'SYAHABUDDIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196812311993031007', 'IIIC', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'Bendahara Pengeluaran');

-- --------------------------------------------------------

--
-- Table structure for table `t_datawbkwbbm`
--

CREATE TABLE `t_datawbkwbbm` (
  `idkomp` int(1) NOT NULL,
  `idbagkomp` int(2) NOT NULL,
  `idkeg` char(3) NOT NULL,
  `idpic` int(1) NOT NULL,
  `idoutput` varchar(5) NOT NULL,
  `outputkeg` varchar(366) NOT NULL,
  `filedok` varchar(366) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_datawbkwbbm`
--

INSERT INTO `t_datawbkwbbm` (`idkomp`, `idbagkomp`, `idkeg`, `idpic`, `idoutput`, `outputkeg`, `filedok`) VALUES
(1, 11, '11a', 3, '11a1', 'Undangan  Rapat tentang Pembahasan Persiapan dan Pembentukan Tim Pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1O-CQ4s-yiR__c42hhCfRcWP2ypShHCaR'),
(1, 11, '11a', 3, '11a2', 'Keputusan tentang Pembentukan Tim Pembangunan ZI menuju WBK WBBM', 'https://drive.google.com/open?id=1l2QS24em7UBYtFQ8Vq10IiZn1x-igus6'),
(1, 11, '11a', 3, '11a3', 'Laporan Progres persiapan pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1vuf8YnyL05iZr8WW4TPeYfivavJmrLbe'),
(1, 11, '11a', 3, '11a4', 'Dokumen Lainnya', 'https://drive.google.com/open?id=1ieGrI3q_wrdiQNB-bJdbJZj-loP-1zND'),
(1, 11, '11b', 3, '11b1', 'Undangan dan notulen tentang pembahasan persiapan dan pembentukan tim pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1hRhagWC-8U07GocqCYKnQp-1bEywBI2I'),
(1, 11, '11b', 3, '11b2', 'Dokumen Lainnya', 'https://drive.google.com/file/d/0Bzv8ewBAGhc7TkNtcE1uMk5UN0k/view'),
(1, 12, '12a', 3, '12a1', 'Undangan dan Notulen Rapat tentang Pembahasan Persiapan dan Pembentukan Tim Pembangunan ZI menuju WBK-WBBM pada KPPN ', 'https://drive.google.com/open?id=1jYpp8ueSf9XIl5AZZhtoCJuRyZOWGEaC'),
(1, 12, '12a', 3, '12a2', 'Rencana kerja pembangunan ZI', 'https://drive.google.com/open?id=1vz7rZt9o0qHz_YmpyQ1ZmhQ9r-fwDAno'),
(1, 12, '12a', 3, '12a3', 'Undangan hal GKM persiapan dan pembentukan tim pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=19XbU2-qFFHSSm5vL9N2C9PAadpfi86va'),
(1, 12, '12b', 3, '12b1', 'Rencana kerja dan target prioritas pembangunan ZI', 'https://drive.google.com/open?id=1TsjBHHvu5fJo9aIrjwCsgqh0DNV2V0B_'),
(1, 12, '12b', 3, '12b2', 'Dokumen Lainnya', 'https://drive.google.com/open?id=1OQc7QV7_lliNXhrtKLGtlTilTPp95pFp'),
(1, 12, '12c', 3, '12c1', ' Sosialisasi pencanangan ZI menuju WBK WBBM dan sosialisasi program anti korupsi', 'https://drive.google.com/open?id=1eWAmD9GzanDxrsDgftkSOZR41RogZvqA'),
(1, 12, '12c', 3, '12c2', 'Baliho kawasan ZI', 'https://drive.google.com/open?id=1VyAcmTpxDgL4J3rgJTlRVLX05MnpVgeV'),
(1, 12, '12c', 3, '12c3', 'Media sosialisasi pembangunan WBK WBBM (print screen web)', 'https://drive.google.com/open?id=1rIfsWaNnyDonFnCK00le4H5emaqDfXTG'),
(1, 12, '12c', 3, '12c4', ' Penandatanganan Pakta Integritas eksternal', 'https://drive.google.com/open?id=1DigcmJgBZW1US9ElxRz7TwnmxJ5mgY0P'),
(1, 12, '12c', 3, '12c5', 'Dokumen Lainnya', 'https://drive.google.com/open?id=1grXreqHXNlJ_bPQmna14YJuN28JpITci'),
(1, 13, '13a', 3, '13a1', ' Laporan tentang progress persiapan pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1zbMuyoeGTp34c4v21rpJj43OLM7MKPld'),
(1, 13, '13a', 3, '13a2', 'Dokumen Lainnya', 'https://drive.google.com/open?id=1nLZvgqCYfqhSqR26q8NIuARl3jnZYu0q'),
(1, 13, '13b', 3, '13b1', 'Surat tentang tindak lanjut atas laporan progres persiapan ZI menuju WBK/WBBM', ''),
(1, 13, '13b', 3, '13b2', 'Surat tentang laporan monev WBK WBBM dan laporan progress perkembangan pembangunan ZI', 'https://drive.google.com/open?id=1WyfJyE1bv9xggDc576Z4HEWpcIY3UGXu'),
(1, 13, '13c', 3, '13c1', ' Laporan tentang progress persiapan pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1z_VUcDVodmFdco0xPexqT5HZIDU2gajg'),
(1, 13, '13c', 3, '13c2', 'Dokumen rencana kerja dan progres realisasi pembangunan ZI', 'https://drive.google.com/open?id=1L-J2nhrrnt-GN7wHXLYK1DMW7JddnWbA'),
(1, 13, '13c', 3, '13c3', 'Tindak lanjut atas laporan monitoring dan evaluasi pelaksanaan WBK-WBBM', 'https://drive.google.com/open?id=1vuf8YnyL05iZr8WW4TPeYfivavJmrLbe'),
(1, 14, '14a', 3, '14a1', 'Penyampaian dokumen LHKPN kepada KPPN', 'https://drive.google.com/open?id=1ZQN29R983lgrVS93njSliKfs7pl272xD'),
(1, 14, '14a', 3, '14a2', 'Surat hal penyampaian tambahan berita negara RI (TBN RI) (mengenai LHKPN yang sudah diterima KPK)', 'https://drive.google.com/open?id=1qQFi6wYwHZQ5pphbkcYFptvouDukvnAO'),
(1, 14, '14a', 3, '14a3', 'Pengiriman LP2P', 'https://drive.google.com/open?id=1zWxw7CMdTkjQf6TVKB3LG2A1N9wcYJ2b'),
(1, 14, '14a', 3, '14a4', 'Pakta integritas pimpinan unit kerja', 'https://drive.google.com/open?id=11KFZvA7luwOO_4GP2JO4JsbLHyWKFts2'),
(1, 14, '14a', 3, '14a5', ' Foto-foto keterlibatan pimpinan dalam berbagai kegiatan (GKM,sosialisasi, capacity building, briefing, one day one information, dll', 'https://drive.google.com/open?id=1u6NqWRt0kp58bUK3izlWVDMEg2pe-at3'),
(1, 14, '14a', 3, '14a6', 'SK tim pembangunan ZI', 'https://drive.google.com/open?id=1WalhBg-NHsdM6eh8G2thqnP7mDmUYWEk'),
(1, 14, '14a', 3, '14a7', ' Daftar absensi keterlibatan pimpinan dalam kegiatan GKM', 'https://drive.google.com/open?id=1Hi_wkTiXsHMf-zkXMhzgUObx1D3FjNcP'),
(1, 14, '14a', 3, '14a8', ' Surat penyampaian LHKPN Kepala Kantor', 'https://drive.google.com/open?id=1RQI8GdrJ9_10L8_HmGrOI3tLRAIc8hb8'),
(1, 14, '14a', 3, '14a9', ' Pernyataan komitmen program pengendalian gratifikasi-pimpinan unit kerja', 'https://drive.google.com/open?id=1rE0Qf8ywqikyl9_IpO1vRjl2DJ8-6evm'),
(1, 14, '14b', 3, '14b1', ' Keputusan tentang penetapan penunjukan change agent Es. IV pada KPPN', 'https://drive.google.com/open?id=1ZEAKQ3AYXoiG9nhPTkFf3ZFeB-Kr-wqB'),
(1, 14, '14b', 3, '14b2', 'Laporan kegiatan change agent', 'https://drive.google.com/open?id=1sR0PwCuFtkfXdj9K-1_QRxu6bvZDutBA'),
(1, 14, '14b', 3, '14b3', 'KMK tentang duta TK', 'https://drive.google.com/open?id=1GPQl7uinfzrgcWNW5JR0TTv1f8pQj8oC'),
(1, 14, '14b', 3, '14b4', 'Kepdirjen tentang duta TK instansi vertikal', 'https://drive.google.com/open?id=1Uqqa7ByBW9liu8pogNLLIuSEg7qc6-qI'),
(1, 14, '14c', 3, '14c1', ' KMK-312 tahun 2011 tentang nilai-nilai Kemenkeu', 'https://drive.google.com/open?id=1QUecnm03PYPhILHAfHqbmYYPNVZh6J_9'),
(1, 14, '14c', 3, '14c10', 'Surat hal laporan kegiatan change agent', 'https://drive.google.com/open?id=1fJ2PkPG3UXzjUUJ7aIm3pX64F-jDiOUi'),
(1, 14, '14c', 3, '14c11', 'Keputusan tentang penetapan visi, misi, motto, janji, dan maklumat layanan KPPN', 'https://drive.google.com/open?id=1Q-HGTmeLijS89CFjWT5XzYkepClFXxqo'),
(1, 14, '14c', 3, '14c12', 'Visi misi KPPN pada digital banner', 'https://drive.google.com/open?id=1aUYanCoBCCaXFwug14OtTiPDKwWc41sX'),
(1, 14, '14c', 3, '14c13', 'Gambar maklumat layanan', 'https://drive.google.com/open?id=19qOVDvJ9VVw5JXHLGF52A-22p1nn-aET'),
(1, 14, '14c', 3, '14c14', 'Pakta integritas pegawai', 'https://drive.google.com/open?id=18ENgusufHfstQr6DDJRfD7x166h7V4MT'),
(1, 14, '14c', 3, '14c2', 'KMK-127 tahun 2013 tentang budaya kerja kemenkeu', 'https://drive.google.com/open?id=1gd9prReisOjuFi5D0zK_QD7kGrOcFsYT'),
(1, 14, '33c', 3, '14c3', ' Kegiatan capacity building dan penajaman visi misi', 'https://drive.google.com/open?id=1ttX4DYETMPLNLlpXECvMALa6Y994Mkl3'),
(1, 14, '14c', 3, '14c4', ' GKM hemat energi dan pemilihan duta hijau', 'https://drive.google.com/open?id=1f0JEr2pzWfZmruzVMVOjzJbR73nx-s3V'),
(1, 14, '14c', 3, '14c5', 'GKM pengelolaan SDM', 'https://drive.google.com/open?id=1pFFAvnKEJaq2oCeQHD8JvIvmwoeY0hQd'),
(1, 14, '14c', 3, '14c6', 'Kegiatan achievement motivation training', 'https://drive.google.com/open?id=1TFK2jyrDmhyYeEVxfoF99lLrj9Pztafs'),
(1, 14, '14c', 3, '14c7', 'Pelatihan service excellent', 'https://drive.google.com/open?id=1m-GWPaXqJ9sYHMsFJElenw7tYrG6ad4z'),
(1, 14, '14c', 3, '14c8', 'Pelatihan public speaking', 'https://drive.google.com/open?id=1WjwFuH5_0q8qV_ZFAuuDojUvHEt74AhO'),
(1, 14, '14c', 3, '14c9', 'Bimtek penanganan kebakaran oleh dinas Damkar', 'https://drive.google.com/open?id=1y7Oloy6kSP_ONL0olBFzAgj0H59-Qcz2'),
(1, 14, '14d', 3, '14d1', ' Keputusan tentang pembentukan tim pembangunan ZI menuju WBK dan WBBM', 'https://drive.google.com/open?id=1ElmigkQ7DZPw2xvFegmRVqMxiZmL5h5k'),
(1, 14, '14d', 3, '14d2', 'Undangan dan notulen tentang pembahasan persiapan dan pembentukan tim pembangunan ZI menuju WBK-WBBM', 'https://drive.google.com/open?id=1ygEQ85UhsExcHeBHh1RqSe3ub_uf6jkQ'),
(1, 14, '14d', 3, '14d3', 'Kegiatan GKM pelaksanaan tugas kepatuhan internal', 'https://drive.google.com/open?id=1AiyQ5nBkHroEg0mAx8DZTjOHWcK__RUS'),
(1, 14, '14d', 3, '14d4', 'Nota dinas penandatanganan kontrak kinerja dan pakta integritas', 'https://drive.google.com/open?id=1qUu15pbsIMILJ77hHCZ3E06vBwtxzjgF'),
(1, 14, '14d', 3, '14d5', 'Pakta integritas pegawai', 'https://drive.google.com/open?id=16Qxeg8XdzQIUDYLh2D6wegGOjXZqwxWL'),
(2, 21, '21a', 1, '21a1', 'Keputusan tentang standar Operasional Prosedur pada KPPN', 'https://drive.google.com/open?id=0ByO-2Bmo9pnbOVVNdnZTTnFSNDg'),
(2, 21, '21a', 1, '21a2', 'KMK No.597 KMI 2013 Tentang Uraian Jabatan Struktural Instansi Vertikal DJPB', 'https://drive.google.com/open?id=138yQRV-zTrSlmxIStgvCxHuPDO8Dsyju'),
(2, 21, '21a', 1, '21a3', 'PMK 169 Tahun 2012 Tentang Organisasi Instansi Vertikal DJPB', 'https://drive.google.com/drive/folders/1Xsv6zqsNPeU0c96NOsQQmSNvaX2L1bef'),
(2, 21, '21b', 1, '21b1', 'KEP-287/PB/2015 tentang Standar Operasional Prosedur pada KPPN', 'https://drive.google.com/open?id=0ByO-2Bmo9pnbOVVNdnZTTnFSNDg'),
(2, 21, '21b', 1, '21b2', 'KMK No.597 KMI 2013 Tentang Uraian Jabatan Struktural Instansi Vertikal DJPB', 'https://drive.google.com/open?id=138yQRV-zTrSlmxIStgvCxHuPDO8Dsyju'),
(2, 21, '21b', 1, '21b3', 'PMK 169 Tahun 2012 Tentang Organisasi Instansi Vertikal DJPB', 'https://drive.google.com/open?id=1vLjiiXbNrxjlSr1DHkt-M-qX2wa0oxJx'),
(2, 21, '21b', 1, '21b4', 'Keputusan tentang Penunjukan Pelaksana Pemantauan Intern', 'https://drive.google.com/file/d/1xBsTT52Ff6sbFzQ-oMIIWtlmzub21QfE/view?usp=drivesdk'),
(2, 21, '21b', 1, '21b5', 'Inovasi SOP', 'https://drive.google.com/drive/folders/1DHZCHy-9M850xnDsa8CB8XZlptXzH6TE'),
(2, 21, '21b', 1, '21b6', ' Pemantauan atas Pelaksanaan SOP (Laporan Bulanan)', 'https://drive.google.com/drive/u/2/folders/1RGSI8GAT2uOarIjuNdQyAug1YlaKvppd'),
(2, 21, '21c', 1, '21c1', 'Surat Penyampaian Hasil Reviu SOP sesuai KEP-287/PB/2015', 'https://drive.google.com/open?id=1WwIxeaYG95Ar-YwohFNPDFYr4PvgGUnI'),
(2, 21, '21c', 1, '21c2', 'Surat Permintaan Review SOP', 'https://drive.google.com/drive/folders/1k5qJUjXe57LHJIAgkt84pWQefGIVUyV7'),
(2, 22, '22a', 1, '22a1', 'KMK-467/KMK.01/2014 tentang Pengelolaan Kinerja di Lingkungan Kemenkeu', 'https://drive.google.com/open?id=1jOycO98L1c6abXCdUkXDABSrIHiJdTPX'),
(2, 22, '22a', 1, '22a2', 'Pengukuran kinerja melalui www.e-performance.depkeu.go.id (printscreen Aplikasi e-performance)', 'https://drive.google.com/open?id=1cJ36W3ZGBABHcuE05SEEFLmajlQDT-ZI'),
(2, 22, '22a', 1, '22a3', 'Printscreen PBNopen', 'https://drive.google.com/file/d/1-ezE5CxGHoEEIQnbnP0qFS0RedWVLLcM/view?usp=drivesdk'),
(2, 22, '22a', 1, '22a4', 'Inovasi-Integrasi web dengan PBNopen & e-performance', 'https://drive.google.com/open?id=1jqrTASG7DsLd_RI71cNzSCp-CN2TCfWr'),
(2, 22, '21a', 1, '22a5', 'Updating Data Pegawai', 'https://drive.google.com/open?id=1rCNUc8hb0o4ZW9sCmD0hMYYkmTxMqLrj'),
(2, 22, '22b', 1, '22b1', 'Sistem Informasi Kepegawaian (SIK) dikelola Setditjen, Ditjen Perbendaharaan dan terkoneksi dengan KPPN', 'https://drive.google.com/file/d/1jdzGmztqPgdOpJT38r0L6Tpy5UsMSQzr/view?usp=drivesdk'),
(2, 22, '22b', 1, '22b2', 'Simaster (Sistem Assesment Centre) dikelola Setditjen, Ditjen Perbendaharaan dan terkoneksi dengan KPPN', 'https://drive.google.com/file/d/1z3kaS7KBgqb0qE7eb7nY-MtT6nUTUwfi/view?usp=drivesdk'),
(2, 22, '22b', 1, '22b3', 'Sistem Suntara (Penyusunan dan Penataan Training) dikelola Setditjen, Ditjen Perbendaharaan dan terkoneksi dengan KPPN', 'https://drive.google.com/file/d/14eCewuv5ZenOzBkH2m9yIDl7-UzqcXUD/view?usp=drivesdk'),
(2, 22, '22b', 1, '22b4', 'Aplikasi SILAP (untuk administrasi absensi kehadiran pegawai)', 'https://drive.google.com/file/d/1jpTgBC1vb0ZUP-L4tBW2rvJwfTOmy283/view?usp=drivesdk'),
(2, 22, '22b', 1, '22b5', 'Inovasi-Integrasi web dengan PBNopen & e-performance', 'https://drive.google.com/open?id=1jqrTASG7DsLd_RI71cNzSCp-CN2TCfWr'),
(2, 22, '22c', 1, '22c1', 'Peraturan Direktur Jenderal Perbendaharaan Nomor : 41/PB/2014 tentang Penggunaan Aplikasi Online Monitoring Sistem Perbendaharaan dan Anggaran Negara (OM SPAN)', 'https://drive.google.com/open?id=1sZelJQSogU5dHi-dfTLThm3wN1V4tvmw'),
(2, 22, '22c', 1, '22c2', 'Printscreen OM SPAN', 'https://drive.google.com/file/d/1PRUpMKpjOEcx1nLgECv0tPoXigLqvGyx/view?usp=drivesdk'),
(2, 22, '22c', 1, '22c3', 'Printscreen Website KPPN', 'https://drive.google.com/file/d/16SzuE6E13yxRe1uwDxLj24HO5LgjVk8g/view?usp=drivesdk'),
(2, 22, '22c', 1, '22c4', 'SK tentang petugas pengelola informasi dan web KPPN', 'https://drive.google.com/drive/folders/1qTWVr0F8-eJhk8XyslNdgnhNbnsf18-5'),
(2, 22, '22c', 1, '22c5', 'Inovasi Layanan', 'https://drive.google.com/folderview?id=1qkq2hSh1jRGOv9VRotfgtMkXVUcm0NtH'),
(2, 22, '22c', 1, '22c6', 'Keputusan tentang Penunjukan Petugas Administrasi Email pada KPPN', 'https://drive.google.com/file/d/1yfMjlEuhV_vIUYpPrecSgjbf7vipxqUx/view?usp=drivesdk'),
(2, 22, '22c', 1, '22c7', 'Surat tentang Pemberitahuan Saran Informasi pada KPPN', 'https://drive.google.com/open?id=1-3oNw_oRibO6A4WyRv_c8NDNbvoBIaW9'),
(2, 22, '22d', 1, '22d1', 'ND hal Update data Aplikasi ASSIK, Aplikasi Arsip dan Digital Banner', 'https://drive.google.com/open?id=1Y2qoKffUtYXUqU2mg9taVv2zyWT1GFlv'),
(2, 22, '22d', 1, '22d2', 'ND hal Monev Pemanfaatan Teknologi Informasi pada KPPN', 'https://drive.google.com/open?id=1Vzcgg52jloZx56rBjfC0rD3hwzsw7-gh'),
(2, 23, '23a', 1, '23a1', 'UU 14 tahun 2008 tentang Keterbukaan Infromasi Publik', 'https://drive.google.com/open?id=1daCSCuRSGDbd2P7LcjDJa7wcixo3BE7w'),
(2, 23, '23a', 1, '23a10', 'Informasi Publik pada Papan Informasi KPPN', 'https://drive.google.com/open?id=17vlbnDN8ppEhqNhddyJU6ONBm5DdyC2P'),
(2, 23, '23a', 1, '23a11', 'KEP tentang SK Pengelola Website KPPN', 'https://drive.google.com/file/d/1HIYhbjfEfMJLylrR6-MgIiYU8r3_jIr2/view?usp=drivesdk'),
(2, 23, '23a', 1, '23a2', 'Peraturan MenPAN RB No.31 Tahun 2014 tentang pedoman inovasi pelayanan publik', 'https://drive.google.com/open?id=1YhOqRoftK09k8qlr0uU43_neJ2deltd5'),
(2, 23, '23a', 1, '23a3', 'KMK No.278/KMK.01/2012 tentang Pejabat Pengelola Informasi dan Dokumentasi dan Koordinator PPID di Lingkungan Kementerian Keuangan', 'https://drive.google.com/open?id=1Kl-ztVOz8c-4JuukSwOCO4P08rZiFU0s'),
(2, 23, '23a', 1, '23a4', 'PMK No.132/PMK.01/2012 tentang Pedoman Layanan Informasi Publik di Lingkungan Kementerian Keuangan', 'https://drive.google.com/open?id=1QSrW6hWJuBADQYLp00839LlHyqp_Ooy1'),
(2, 23, '23a', 1, '23a5', 'Surat Nomor : 2691/PB/2015 hal Percepatan Peningkatan Kualitas Pelayanan Publik di Lingkungan Ditjen Perbendaharaan', 'https://drive.google.com/open?id=1XZZsqMUvIvOBxq-Z_wNuQhYtYwSSBWQh'),
(2, 23, '23a', 1, '23a6', ' Surat hal Pemberitahuan Sarana Informasi Publik pada KPPN', 'https://drive.google.com/open?id=1bkYZ2oeHITV5dvCflf0shV5osJuu7-qU'),
(2, 23, '23a', 1, '23a7', 'SK tentang Petugas Pengelola Informasi dan Web KPPN', 'https://drive.google.com/file/d/1HIYhbjfEfMJLylrR6-MgIiYU8r3_jIr2/view?usp=drivesdk'),
(2, 23, '23a', 1, '23a8', 'Inovasi Layanan', 'https://drive.google.com/open?id=1qkq2hSh1jRGOv9VRotfgtMkXVUcm0NtH'),
(2, 23, '23a', 1, '23a9', 'Informasi Publik pada Web KPPN', 'https://drive.google.com/open?id=1YilKS9KRP6NN0VCNPLpCx9QF2X-8UcvU'),
(2, 23, '23b', 1, '23b1', 'Monev berupa Langkah-langkah Peningkatan Layanan Publik', 'https://drive.google.com/open?id=1GH0w0ayHYBUFImcBq6XdAKlR3WA-KCUS'),
(2, 23, '23b', 1, '23b2', 'ND tentang  Monev Pemanfaatan Teknologi Informasi pada KPPN', 'https://drive.google.com/open?id=1_M2FW1SMlOqyG0UEu9y94ggGIWPo1UWA'),
(2, 23, '23b', 1, '23b3', 'Monev berupa Langkah-langkah Peningkatan Kinerja Layanan Publik', 'https://drive.google.com/open?id=1pvZkkZFkVvj56IdZ48Ui4I9NpfV8Rl7w'),
(3, 31, '31a', 1, '31a1', 'KMK No.597/KMK.1/2013 tentang Uraian Jabatan Struktural Instansi Vertikal di Lingkungan DJPB', 'https://drive.google.com/open?id=138yQRV-zTrSlmxIStgvCxHuPDO8Dsyju'),
(3, 31, '31a', 1, '31a2', ' PMK No.169/PMK.01/2012 tentang Organisasi dan Tata Kerja Instansi Vertikal DJPB', 'https://drive.google.com/drive/folders/1w3KwgZ7cHi1itVMOlmQo9yJh-jxO8ap4'),
(3, 31, '31a', 1, '31a3', 'Perdirjen 43 tahun 2012 tentang Pola Mutasi DJPB', 'https://drive.google.com/open?id=18uqaHHx4iJhRYt0c7x-Et1xs23YcMwEM'),
(3, 31, '32a', 1, '31a4', ' Surat hal Laporan Analisis Beban Kerja DJPBN pada KPPN', 'https://drive.google.com/open?id=1t8LaH19EM46pfvlr6nrMLENh1ZB9tzX0'),
(3, 31, '31a', 1, '31a5', 'Data Bezzeting Pegawai KPPN', 'https://drive.google.com/drive/u/2/folders/1iMM1yUPs8KpslyFXxq0XqXHzaCE4N1Kf'),
(3, 31, '31b', 1, '31b1', 'PER-43/PB/2012 tgl 28 November Tentang Pola Mutasi Jabatan Karier di Lingkungan Ditjen Perbendaharaan', 'https://drive.google.com/open?id=1BY3YfdpKAcKgF5gy2-Z7977GFtCM6-Vp'),
(3, 31, '31b', 1, '31b2', 'Keputusan Kepala KPPN tentang Penetapan Hasil Penilaian Kinerja Pegawai di Lingkungan KPPN', 'https://drive.google.com/open?id=1Cb6MG64qAbiJP35bm-QsxwAKCXYh-4uY'),
(3, 31, '31b', 1, '31b3', 'Keputusan tentang Penetapan Jabatan dan Peringkat Bagi Pelaksana Umum Berdasarkan Hasil Penilaian di Lingkungan Kanwil DJPB', 'https://drive.google.com/open?id=1gcVPVNEl4r3MJ1vLHYHpq2MpCVtRhppI'),
(3, 31, '31b', 1, '31b4', 'Keputusan Tentang Mutasi Dalam Jabatan Eselon V di Lingkungan Ditjen Perbendaharaan ', 'https://drive.google.com/drive/folders/1KpPZcCZxwM8yHu_SX69F1PXon723URCm'),
(3, 31, '31b', 1, '31b5', 'Keputusan Tentang Penetapan Pelaksana Dalam Jabatan Peringkat di Lingkungan Kanwil DJPB', 'https://drive.google.com/open?id=1N63DCRtH5ANGeOYmGAauywpgBi_htYum'),
(3, 31, '31b', 1, '31b6', 'ND tentang Penempatan Pegawai dan Penunjukan Tugas', 'https://drive.google.com/open?id=12dYueLxMvizjQDKqYc9Rg55MqClK0Y-V'),
(3, 31, '31b', 1, '31b7', 'SR Tentang Rekomendasi Penetapan Pelaksana Jabatan dan Peringkat', 'https://drive.google.com/open?id=1wYq-wLI0rZxpB1Hio5xKev8RTqtzhxkm'),
(3, 31, '31c', 1, '31c1', 'Surat hal Laporan Analisis Beban Kerja DJPB pada KPPN', 'https://drive.google.com/open?id=1LwodgdkJT9GNEmssizF1wvKYAqrF6TO4'),
(3, 31, '31c', 1, '31c2', 'ND tentang Monev terhadap Rekrutmen Pegawai', 'https://drive.google.com/open?id=10JqPz8MUfLWECXWsHVY7_JJXjEpsCzwt'),
(3, 31, '31c', 1, '31c3', 'ND tentang Laporan Perfomance Dialogue Pembahasan Capaian Kinerja', 'https://drive.google.com/open?id=1CvbmuXofu-KWORAhYjGRODQkj5VBG0Nv'),
(3, 31, '31c', 1, '31c4', 'Statistik Pegawai KPPN melalui Aplikasi PbnOpen', 'https://drive.google.com/open?id=1JilcItMbKsiHGBeWyLmdvYFOQRN_dBg2'),
(3, 32, '32a', 1, '32a1', 'PER-43/PB/2012 tgl 28 November Tentang Pola Mutasi Jabatan Karier di Lingkungan Ditjen Perbendaharaan', 'https://drive.google.com/open?id=18uqaHHx4iJhRYt0c7x-Et1xs23YcMwEM'),
(3, 32, '32a', 1, '32a2', 'ND hal Penempatan Pegawai Pelaksana dan Penunjukkan Tugas', 'https://drive.google.com/open?id=1j5zXgqdVPTDzod6NOPnh8z2iw5bq9ZUw'),
(3, 32, '32a', 1, '32a3', ' Capture Aplikasi training DJPB', 'https://drive.google.com/open?id=1y76PgxljqksTn6GjZha502elaaer-hYw'),
(3, 32, '32b', 1, '32b1', 'PER-43/PB/2012 tgl 28 November Tentang Pola Mutasi Jabatan Karier di Lingkungan Ditjen Perbendaharaan', 'https://drive.google.com/open?id=18uqaHHx4iJhRYt0c7x-Et1xs23YcMwEM'),
(3, 32, '32b', 1, '32b2', 'ND hal Penempatan Pegawai Pelaksana dan Penunjukkan Tugas', 'https://drive.google.com/open?id=1S9quCkKyK5GQyoRDGF4LntwvQq21jPDu'),
(3, 32, '32b', 1, '32b3', 'Printscreen data JPM dari PBnOpen', 'https://drive.google.com/drive/folders/1swYDmKknYnszpg19SZUanzwmm5sW883D'),
(3, 32, '32b', 1, '32b4', 'Nilai Test Online Hard Competency', 'https://drive.google.com/drive/folders/1AQsXIEPW5nrUDbgLuy5oCdTFHN_knr33'),
(3, 32, '32b', 1, '32b5', 'Updating data pegawai', 'https://drive.google.com/drive/folders/1QeqE4wDq3qI5WzcA8GEAEzHeyLw-m49Q'),
(3, 32, '32c', 1, '32c1', 'ND Hal Monitoring dan Evaluasi terhadap Kegiatan Mutasi Pegawai', 'https://drive.google.com/open?id=1tYhTavDUk0Jbms21LJ68ZPzQhlJsueet'),
(3, 32, '32c', 1, '32c2', 'ND hal Laporan Performance Dialogue Pembahasan Progress Capaian Kinerja Kemenke-Three KPPN', 'https://drive.google.com/open?id=17T11JrJjXNrb2wkaNlHHgdjtox0lAPYM'),
(3, 33, '33c', 1, '32c3', 'Keputusan Kepala KPPN Tentang Penetapan Hasil Penilaia Kinerja di Lingkungan KPPN', 'https://drive.google.com/open?id=1XxfICQS90SY1yjRTn-oZACtDrSZpGthW'),
(3, 32, '33c', 1, '32c4', 'Capture Aplikasi Training DJPB', 'https://drive.google.com/open?id=1AYwh7cNnYjrTxTP7t5FoCSUDimlq8E9b'),
(3, 33, '33a', 1, '33a1', 'PMK No.37/PMK.012/2014 tanggal 14 februari 2014 tentang Pedoman Identifikas Kebutuhan Pendidikan dan Pelatihan Non Gelar di Lingkungan Kementerian Keuangan', 'https://drive.google.com/open?id=1Z5RmZtAI1eOqYlCBT238L4OHqa0A1s10'),
(3, 33, '33a', 1, '33a2', 'Capture Aplikasi training DJPBN (PBnOpen)', 'https://drive.google.com/open?id=17Ig-TgIS2oufr3Y6tnWumyGB6KFyG70H'),
(3, 33, '33b', 1, '33b1', 'PMK No.37/PMK.012/2014 tanggal 14 februari 2014 tentang Pedoman Identifikas Kebutuhan Pendidikan dan Pelatihan Non Gelar di Lingkungan Kementerian Keuangan', 'https://drive.google.com/open?id=1a4fnElS2C33eJ-JHBExuW33FFiaroruq'),
(3, 33, '33b', 1, '33b2', 'Capture Aplikasi training DJPBN (PBnOpen)', 'https://drive.google.com/open?id=1IC9A6uzb1xLZ-oDM93p4Z7z_lL73qNpB'),
(3, 33, '33b', 1, '33b3', 'Data Bezzeting Pegawai KPPN', 'https://drive.google.com/drive/u/2/folders/1iMM1yUPs8KpslyFXxq0XqXHzaCE4N1Kf'),
(3, 33, '33b', 1, '33b4', 'Keputusan tentang Penetapan Hasil Nilai Pegawai Berdasarkan K3', 'https://drive.google.com/open?id=1KEly9xWe1Sq7KwDKaC1dCrNq6uV9u9RL'),
(3, 33, '34c', 1, '33c1', ' Keputusan Kepala KPPN tentang Penetapan Hasil Penilaian Kinerja di Lingkungan KPPN', 'https://drive.google.com/open?id=1UourfpzzsyHM6SI8rQty259Y739nJJd_'),
(3, 33, '33c', 1, '33c2', 'Printscreen data JPM dari PBnOpen', 'https://drive.google.com/drive/u/2/folders/174Qd_IA17jQYeIovUYEjkuzMWxv-fj4b'),
(3, 33, '33c', 1, '33c3', 'Nilai Test Online Hard Competency', 'https://drive.google.com/drive/u/2/folders/1ZkyTggWHjn2OfnpPUezLKWSF1rLGM4HB'),
(3, 33, '34c', 1, '33c4', 'Keputusan tentang Penetapan Hasil Nilai Pegawai Berdasarkan K3', 'https://drive.google.com/open?id=1eMqTFEWHjV01oh4FTHA_9VWmaQucrIgk'),
(3, 33, '33c', 1, '33c5', 'Updating data pegawai', 'https://drive.google.com/drive/u/2/folders/1hWrYS8KK7Je2ZyFYpG4VBar-h3D5eKec'),
(3, 33, '33d', 1, '33d1', 'Capture Aplikasi Training DJPBN', 'https://drive.google.com/open?id=1p1U3mTV7Hck28uZxalMPEyngcTjocXee'),
(3, 33, '33d', 1, '33d2', 'Rekap Diklat Pejabat dan Pegawai', 'https://drive.google.com/drive/folders/1v7NC4-NZxI9NoDFhmmIWprD-9ZUiv_NX'),
(3, 33, '33d', 1, '33d3', 'Capture Aplikasi Training DJPBN semua Pegawai', 'https://drive.google.com/open?id=1G1mTYGpYEq_Alh9nPdHQ5jUFl3IpXWZO'),
(3, 33, '33e', 1, '33e1', 'Surat hal konfirmasi data penyuluh perbendaharaan', 'https://drive.google.com/open?id=1razoINSd7wd6cLoowGNKMpSoL3UUBjX8'),
(3, 33, '33e', 1, '33e2', 'Kegiatan Capacity Building dan Penajaman Visi Misi', 'https://drive.google.com/open?id=1T1i4kA0BNXMJJJKXIbiLb5KmGEs3jrsT'),
(3, 33, '33e', 1, '33e3', ' ND hal Pelatihan Service Excellent untuk para pegawai KPPN', 'https://drive.google.com/drive/folders/1B8T0Gpw6uR5FDTFDVL_FEoYMT1McEl2N'),
(3, 33, '33e', 1, '33e4', 'Rekap Diklat Pejabat dan Pegawai', 'https://drive.google.com/drive/folders/1CO9amyLZ_ypzJZwk-jYf4Q8qbLUUvX2K'),
(3, 33, '33e', 1, '33e5', 'Capacity Building-Kegiatan Achievement Motivation Training', 'https://drive.google.com/open?id=1T1i4kA0BNXMJJJKXIbiLb5KmGEs3jrsT'),
(3, 33, '33e', 1, '33e6', 'Kegiatan Pelatihan Service Excellent', 'https://drive.google.com/drive/folders/1-gsFdipGk2s0DUi3FOHegXIqZ8RFjntB'),
(3, 33, '33e', 1, '33e7', 'Laporan Capacity Building & Public Speaking Training', 'https://drive.google.com/drive/folders/1OSGuMmprIptW-4Bp3Y6RvXWl6Km2uyiD'),
(3, 33, '33f', 1, '33f1', 'Monev berupa NOTULEN pembahasan capaian IKU', 'https://drive.google.com/open?id=1a-cMe76PrrrP1damnKMzjMW47bYdj_yP'),
(3, 33, '33f', 1, '33f2', 'ND hal Monev Pengembangan Kompetensi', 'https://drive.google.com/open?id=1MQKN7-8n3hGKiLzZHxunBU-gWKaGoBtl'),
(3, 33, '33f', 1, '33f3', 'Undangan hal Pembahasan Peta Strategi dan IKU', 'https://drive.google.com/open?id=1JB-lsf7hyoI073UvXzRlrrufPn_qZF9M'),
(3, 33, '33f', 1, '33f4', 'Undangan dal Pembahasan Penilaian Perilaku Pegawai', 'https://drive.google.com/open?id=1OD9g3NkwO6IMJ3JAubNFHjIBipGYtUQD'),
(3, 34, '34a', 1, '34a1', 'KONTRAK KINERJA', 'https://drive.google.com/folderview?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(3, 34, '34a', 1, '34a2', 'Penetapan Manual IKU', 'https://drive.google.com/drive/u/2/folders/115JPKGk_SavtKeRDBNtTPsGrTk0ro-Ov'),
(3, 34, '34a', 1, '34a3', 'LAKIN KPPN', 'https://drive.google.com/open?id=1gCNpG9T--nFisbZ-ULMq0drjuKO8xzF8'),
(3, 34, '34a', 1, '34a4', 'Keputusan tentang Penetapan Hasil Nilai Pegawai Berdasarkan K3', 'https://drive.google.com/open?id=1LoscAW95FYB-jbXk2nYRoTpER28dC2sP'),
(3, 34, '34a', 1, '34a5', 'Rencana Kerja dan Evaluasi Kegiatan', 'https://drive.google.com/open?id=1PbBpyIkeFpjNVNys5JM64HP2wz8jHlZm'),
(3, 34, '34a', 1, '34a6', 'Rencana Kerja (berdasarkan DIPA)', 'https://drive.google.com/open?id=1_jyQJn9pL-ZusOGobsBS8ohBENDCnTDw'),
(3, 34, '34b', 1, '34b1', 'Penetapan Kinerja', 'https://drive.google.com/drive/u/2/folders/1NSKzLY4d7JM01jeRCjMc6SrBhDedMtXI'),
(3, 34, '34b', 1, '34b2', 'Surat hal Penyampaian Data Capaian IKU Kemenkeu Three s.d. Five', 'https://drive.google.com/open?id=1GZEZA-h0G-8_pmRPrT5EJskWbTjKlDLX'),
(3, 34, '34b', 1, '34b3', ' Laporan Capaian IKU', 'https://drive.google.com/open?id=1XTciJYoYYCv3cnNs9KMgkw7BFDw_JYX0'),
(3, 34, '34b', 1, '34b4', 'KONTRAK KINERJA', 'https://drive.google.com/folderview?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(3, 34, '34b', 1, '34b5', 'Keputusan tentang Penetapan Hasil Nilai Pegawai Berdasarkan K3', 'https://drive.google.com/open?id=1cesgL0OovwLnB81C7ld9x9TyfDKsEwr1'),
(3, 34, '34c', 1, '34c1', 'Surat hal Penyampaian Data Capaian IKU Kemenkeu Three s.d. Five', 'https://drive.google.com/open?id=1GZEZA-h0G-8_pmRPrT5EJskWbTjKlDLX'),
(3, 34, '34c', 1, '34c2', 'Laporan Capaian IKU', 'https://drive.google.com/open?id=1XTciJYoYYCv3cnNs9KMgkw7BFDw_JYX0'),
(3, 34, '34c', 1, '34c3', ' ND hal Laporan Monitoring capaian Kinerja Individu', 'https://drive.google.com/open?id=1zFVc0d4mHcj9xBqEOB5vn5MQFcT6wF2K'),
(3, 34, '34c', 1, '34c4', 'LAKIN KPPN', 'https://drive.google.com/open?id=1FOTXjgq3bGdNZOPRESSCqozCnLD8XSMv'),
(3, 34, '34c', 1, '34c5', 'Keputusan tentang Penetapan Hasil Nilai Pegawai Berdasarkan K3', 'https://drive.google.com/open?id=1nzQBPlzOR2FwY1WS-XNA3CokMeWneLHH'),
(3, 34, '34d', 1, '34d1', 'Keputusan tentang pegawai teladan KPPN', 'https://drive.google.com/open?id=1zdwK8ku4z4uyKIO1vilUyt-En-EbWsS6'),
(3, 34, '34d', 1, '34d2', 'Keputusan Tentang Penetapan Jabatan dan Peringkat Bagi Pelaksana Umum Berdasarkan Hasil Penilaian di Lingkungan Kanwil DJPB', 'https://drive.google.com/open?id=1N63DCRtH5ANGeOYmGAauywpgBi_htYum'),
(3, 34, '34d', 1, '34d3', 'Keputusan Tentang Penetapan Pelaksana Dalam Jabatan Peringkat di Lingkungan Kanwil DJPB', 'https://drive.google.com/open?id=1N63DCRtH5ANGeOYmGAauywpgBi_htYum'),
(3, 34, '34d', 1, '34d4', 'Surat Pengantar Laporan Pertanggungjawaban (LPP) Tunjangan Kinerja dan Tunjangan Tambahan KPPN', 'https://drive.google.com/open?id=1Mzk3XI-OJqZ6RurAVvh_3UOcBTDGfK_S'),
(3, 35, '35a', 1, '35a1', 'Kode etik pegawai DJPBN', 'https://drive.google.com/open?id=1X1X2JqCNz9Q8nLvcGLW00CwHTkL82-DS'),
(3, 35, '35a', 1, '35a2', 'Langkah-langkah Peningkatan Layanan Publik', 'https://drive.google.com/open?id=1XkgTAvGhpfn8EiLbzgHIwssTotE21d95'),
(3, 35, '35a', 1, '35a3', 'Penyampaian Updating Data kepegawaian (bulanan)', 'https://drive.google.com/open?id=1-Z1Zp9b_gxM1Xiho0gEjqrloCtDnb_sp'),
(3, 35, '35a', 1, '35a4', 'Laporan Penegakan Aturan Kode Etik (Dalam Laporan Pengaduan Bulanan)', 'https://drive.google.com/open?id=10SV-Xv4lVfyVttPdrltu2A_hE4uevdhe'),
(3, 35, '35a', 1, '35a5', 'GKM WISE, Penanganan Benturan Kepentingan', 'https://drive.google.com/drive/folders/1gIpA-qrQNKMV2Kijn_aWqoyBGFz0-dIV'),
(3, 35, '35a', 1, '35a6', ' Laporan Pengaduan (Bulanan)', 'https://drive.google.com/open?id=1MKrP8zQjjtGQdt8pnOmybq0m9i71kulO'),
(3, 35, '35a', 1, '35a7', ' Langkah-langkah Peningkatan Kinerja Layanan', 'https://drive.google.com/open?id=1Vdgeb2QwVyPZCEsTHEZrWj9M3McbojXr'),
(3, 35, '35a', 1, '35a8', 'Inovasi Penerapan Kode Etik', 'https://drive.google.com/open?id=1reeKc-ti2TlnwBu-BG3yOVJfK64zNhjK'),
(3, 36, '36a', 1, '36a1', 'Updating data pegawai secara bulanan', 'https://drive.google.com/open?id=1-Z1Zp9b_gxM1Xiho0gEjqrloCtDnb_sp'),
(3, 36, '36a', 1, '36a2', ' Struktur Organisasi KPPN', 'https://drive.google.com/file/d/1FIfea_cSrywjkoKWB9zv_blOLx5ELcNR/view?usp=drivesdk'),
(4, 41, '41a', 1, '41a1', 'Keterlibatan pimpinan dalam GkM Performance Dialogue dan rencana Penetapan IKU', 'https://drive.google.com/open?id=1HPGl37wl0AzQM-Of8u9G0-dGK7m_BAsB'),
(4, 41, '41a', 1, '41a2', 'Keterlibatan Pimpinan dalam Penandatanganan KK hal Penandatanganan Kontrak Kinerja dan Pakta Integritas', 'https://drive.google.com/open?id=1Xh__xcfr8Pc7paWtZoz8vHxVKzRb_rP2'),
(4, 41, '41a', 1, '41a3', 'Keterlibatan pimpinan dalam penetapan Manual IKU', 'https://drive.google.com/drive/folders/1_yEHMkSdVTvsI8vpxKirCoeJwZQUs9nc'),
(4, 41, '41a', 1, '41a4', 'Laporan dan Notulen rapat Penyusunan Renstra', ''),
(4, 41, '41a', 1, '41a5', 'Keterlibatan pimpinan tentang Sosialisasi Pengaduan Pengendalian Gratifikasi & Launching Pengaduan online', 'https://drive.google.com/drive/folders/1_7DpBgexKR0nmDpMYb9HgL4kqKEWJgQa'),
(4, 41, '41a', 1, '41a6', 'Keterrlibatan Pimpinan tentang Rencana kerja pembangunan ZI menuju WbK WBBM', 'https://drive.google.com/drive/folders/14Kdkb8ugJSwTRyXXFQYOhugfO1kpfu0d'),
(4, 41, '41a', 1, '41a7', 'Keterlibatan Pimpinan tentang SK Pembentukan Tim Pembangunan ZI', 'https://drive.google.com/drive/folders/1P-An6OE7AAiMkXGAc0NVuBRUg7DjNnFh'),
(4, 41, '41b', 1, '41b1', 'Keterlibatan pimpinan dalam GkM Performance Dialogue dan rencana Penetapan IKU', 'https://drive.google.com/open?id=1zHh8VNzDyg33xTJLPts9wPJZJq1E6KvB'),
(4, 41, '41b', 1, '41b2', 'Keterlibatan Pimpinan dalam Penandatanganan KK hal Penandatanganan Kontrak Kinerja dan Pakta Integritas', 'https://drive.google.com/open?id=10BeENcM3z171Q-VguNlfrutl1j9n_kvl'),
(4, 41, '41b', 1, '41b3', 'Keterlibatan pimpinan dalam penetapan Manual IKU', 'https://drive.google.com/drive/folders/1rzcbDXMv3hAwqHDY7Pw-Y1BMQ7IwFXAG'),
(4, 41, '41b', 1, '41b4', 'Laporan Kinerja', 'https://drive.google.com/open?id=1f4IOlnEkPfeCPQD0aMs5zj_Eyzu0lXUi'),
(4, 41, '41b', 1, '41b5', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 41, '41b', 1, '41b6', 'Keputusan Kepala KPPN Tentang Penetapan Hasil Penilaian Kinerja di Lingkungan KPPN', 'https://drive.google.com/open?id=1rmRa1RHtjloJBg_nvPYv32oMldlb5iuP'),
(4, 41, '41c', 1, '41c1', 'Laporan Kinerja', 'https://drive.google.com/open?id=1tBHvYILLHlzl1aqOR0RNiKy0-15izhJq'),
(4, 41, '41c', 1, '41c2', 'Monitoring Capaian Kinerja Pegawai melalui e-performance', 'https://drive.google.com/open?id=10PBIB-cn1ZuBgwbL62OywATG3qPvq_gJ'),
(4, 41, '41c', 1, '41c3', 'Notulen pembahasan capaian IKU', 'https://drive.google.com/open?id=1a-cMe76PrrrP1damnKMzjMW47bYdj_yP'),
(4, 41, '41c', 1, '41c4', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 41, '41c', 1, '41c5', 'Keterlibatan pimpinan Penetapan Manual IKU', 'https://drive.google.com/drive/folders/1rB2FCyEK6HXRYnpv_B_lVWXBi-SFL_L6'),
(4, 41, '41c', 1, '41c6', 'Keputusan tentang penetapan Penilaian kinerja berdasarkan K3', 'https://drive.google.com/open?id=1IS2fnl7obUkXQFk4G6ZSupcZqr1ebhw5'),
(4, 41, '41c', 1, '41c7', 'Printsreen Monitoring capaian Kinerja melaui e-performance oleh manajer Kinerja Organisasi', 'https://drive.google.com/open?id=1NBHqVL3THpQ30MSkshDS5ORvsL-hUgQn'),
(4, 42, '42a', 1, '42a1', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 42, '42a', 1, '42a2', 'Laporan dan notulen Rapat penyusunan Renstra', ''),
(4, 42, '42a', 1, '42a3', 'Notulen pembahasan capaian IKU', 'https://drive.google.com/open?id=1zuNmOom5AKIPBcFs3bVSv71MBrYcZPPT'),
(4, 42, '42a', 1, '42a4', 'Renstra KPPN 2015-2019', 'https://drive.google.com/open?id=1enjPIYZRPdJ58pIz1rqOx25N8ncx2K1x'),
(4, 42, '42a', 1, '42a5', 'Rencana Kerja', 'https://drive.google.com/open?id=13G3UrpDCnX70m8K-PTBe9D2KOIG8Ahub'),
(4, 42, '42a', 1, '42a6', 'Undangan hal Pembahasan capaian IKU', 'https://drive.google.com/open?id=1uTZmhs9IjYd-gPtOCVgI28z26JBFbrbo'),
(4, 42, '42a', 1, '42a7', 'Undangan hal pembahasan Peta strategis & IKU', 'https://drive.google.com/open?id=1K1YMfRDyuTWQPKKtYl6fyfFW0BUOqeES'),
(4, 42, '42b', 1, '42b1', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 42, '42b', 1, '42b2', 'LAKIN KPPN', 'https://drive.google.com/open?id=1docJKecem9NUJmAIpRynD2HAw0iSY6mW'),
(4, 42, '42b', 1, '42b3', 'Renstra KPPN 2015-2019', 'https://drive.google.com/open?id=1P20S9AS31Ujx_Dz85-HHgxGcEclxZXlP'),
(4, 42, '42b', 1, '42b4', 'Rencana Kerja', 'https://drive.google.com/open?id=1kAIPCWGOwew0gTqlIGiQyCqBi8N9r1c3'),
(4, 42, '42c', 1, '42c1', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 42, '42c', 1, '42c2', 'Surat hal Penyampaian data capaian IKU Kemenkeu Three s.d Five', 'https://drive.google.com/open?id=1LfX1gXRuHPYESQgagcFNNjHGiH8RO78V'),
(4, 42, '42c', 1, '42c3', 'Laporan Capaian IKU', 'https://drive.google.com/open?id=1q0SS5x-KvJhzCspdHJ4P00H3GsyuNSTe'),
(4, 42, '42c', 1, '42c4', 'Realisasi capaian IKU kemenkeu', 'https://drive.google.com/open?id=1X-kG-CXIkcR7APTzOnORsQi9Y-9NEvm4'),
(4, 42, '42c', 1, '42c5', 'LAKIN KPPN', 'https://drive.google.com/open?id=1K5Ov0YUBR8xqjfzbGNF-IMg0MRDwkV6q'),
(4, 42, '42d', 1, '42d1', 'Kontrak Kinerja', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 42, '42d', 1, '42d2', 'Surat hal Penyampaian data capaian IKU Kemenkeu Three s.d Five', 'https://drive.google.com/open?id=18BnfCjV4BCyzGdjLvuKXo99aSMcI-HvF'),
(4, 42, '42d', 1, '42d3', 'Laporan Capaian IKU', 'https://drive.google.com/open?id=1m-HwkbkNBTrFrWxVWqVfJTlz8uEfYHwX'),
(4, 42, '42d', 1, '42d4', 'Realisasi Capaian IKU kemenkeu', 'https://drive.google.com/open?id=1P4XHQ-aisJddr1Zj2s12yO-D89q99xNH'),
(4, 42, '42e', 1, '42e1', 'LAKIN KPPN', 'https://drive.google.com/open?id=15aBKyrMw5FUhbnNb7cYsc8R7q2lHay27'),
(4, 42, '42e', 1, '42e2', 'Surat hal Penyampaian data capaian IKU Kemenkeu Three s.d Five', 'https://drive.google.com/open?id=10-OWOTI1CrU3l0mmjg1LMlktjrvZZ4g-'),
(4, 42, '42e', 1, '42e3', 'Laporan Capaian IKU', 'https://drive.google.com/drive/u/1/folders/1W6mR9e3W0gDuIaRSbdtlvQ7qC9zJyY2J'),
(4, 42, '42e', 1, '42e4', 'Realisasi Capaian IKU kemenkeu', 'https://drive.google.com/open?id=1mGX-jav618LavVA7jHFNCiAKBweJi9eF'),
(4, 42, '42f', 1, '42f1', 'LAKIN KPPN', 'https://drive.google.com/open?id=1WxKSRtSqs4KRe997QNKD0udUfvOh14rB'),
(4, 42, '42f', 1, '42f2', 'Kontrak Kinerja pegawai KPPN', 'https://drive.google.com/open?id=1GBpClsSWZd0rohs8q-gny9KMBZB_1bbo'),
(4, 42, '42f', 1, '42f3', 'Surat hal Penyampaian data capaian IKU ', 'https://drive.google.com/open?id=1J5piDHFWYQg2aETZYPXarVbukALJVuoq'),
(4, 42, '42g', 1, '42g1', 'ST pada Forum Koordinasi dan workshop Pengelolaan SDM', 'https://drive.google.com/open?id=1ia-Vu5q4ef2hIiHfK9YolWB0G2OmBr5q'),
(4, 42, '42g', 1, '42g2', 'ST pada workshop Coaching and counseling', ''),
(4, 42, '42g', 1, '42g3', 'ST pada rakornas pengelolaan Kinerja', 'https://drive.google.com/open?id=18QcukP5m_eYkjov-J0eZtcy3OyI8uVB_'),
(4, 42, '42g', 1, '42g4', 'ND Hal GKM Pengelolaan SDM', 'https://drive.google.com/open?id=11vTnY_Y7KGZLR31evSIp3IMNOMlYbb17'),
(4, 42, '42g', 1, '42g5', 'ND hal Performance Dialogu pembahasan capaian IKU', 'https://drive.google.com/open?id=1deydB7bHFlEAjcoFQxuhW2BjIAle9HKj'),
(4, 42, '42g', 1, '42g6', 'Undangan tentang pelaksanaan workshop Coaching and Counceling Ditjen perbendaharaan', ''),
(4, 42, '42h', 1, '42h1', 'Keputusan tentang Penunjukan Pengelola kinerja di lingkungan Kanwil ', 'https://drive.google.com/open?id=10dgFZtWTdNy1DL93AqsC8DoOGirmWyw2'),
(4, 42, '42h', 1, '42h2', 'ND hal GKM pengelolaan SDM', 'https://drive.google.com/open?id=1O2i6ewGrmsL92zcNkKy14CqiTaBxjo7t'),
(4, 42, '42h', 1, '42h3', 'ST hal workshop Pengelolaan SDM', 'https://drive.google.com/open?id=1xTvKTmbboJpf-sPb0iUEEYy5TajrGop0'),
(4, 42, '42h', 1, '42h4', 'sT hal Rakornas Pengelolaan Kinerja', 'https://drive.google.com/open?id=1sjyPCtYnKMkDPY_de2WkviIj4JXSwM4V'),
(5, 51, '51a', 4, '51a1', ' Sosialisasi Pencanangan Zona Integritas menuju WBK WBBM dan sosiallisasi program anti korupsi ', 'https://drive.google.com/open?id=1URk3SOOEZ_XevmBXTfq37nOLRMFxAVJM'),
(5, 51, '51a', 4, '51a10', 'Pernyataan Komitmen Penerapan Program Pengendalian Gratifikasi ', 'https://drive.google.com/open?id=1jjA8k4ibb3UKzIaOkByocQer9YWE0eZp'),
(5, 51, '51a', 4, '51a2', 'Media Sosialisasi pembangunan wbk wbbm dan pengendalian gratifikasi baliho sosialisai program anti korupsi, papan informasi digital banner website', 'https://drive.google.com/open?id=17IB3-mMft-pBNFBn15S0sLaYJ1liYoqx'),
(5, 51, '51a', 4, '51a3', 'Slide sosialisasi Program antikorupsi ke satker', 'https://drive.google.com/open?id=1MUc9J7oIThciyi4M9j8a5W2rg7vQ5DM9'),
(5, 51, '51a', 4, '51a4', 'ND Hal Larangan Gratifikasi', 'https://drive.google.com/open?id=1Sc5Zd1IJ6ZbQPADh7_WropOC3OtqjmqP'),
(5, 51, '51a', 4, '51a5', 'Surat Hal Laporan Kegiatan Penandatanganan Pernyataan Komitmen Pengendalian Gratifikasi ', 'https://drive.google.com/open?id=1Q9P56kwgBccrhVD_VMnlyXlaHf5yMiWD'),
(5, 51, '51a', 4, '51a6', 'Pakta Integritas Internal', 'https://drive.google.com/open?id=1w4GL1pjuuZPSNe3jwR6i6RsUHfyJcOcG'),
(5, 51, '51a', 4, '51a7', 'surat sosialisasi Pengaduan Pengendalian Gratifikasi & Launching Pengaduan Online', 'https://drive.google.com/open?id=1DiN_HzK_T4yrbcjWE2CcYTQsRHE6mqyZ'),
(5, 51, '51a', 4, '51a8', 'ND hal perintah update data aplikasi ASSIK dan digital banner', 'https://drive.google.com/open?id=1XKR1tpv8kXS5PhlfKzlxECeHNobPcHd1'),
(5, 51, '51a', 4, '51a9', 'GKM Pengendalian gratifikasi dan kode etik pegawai', 'https://drive.google.com/open?id=14ui2gHCi3aZLNvBw_ZXhDdmpfADRRedS'),
(5, 51, '51b', 4, '51b1', 'Inovasi tentang Penetapan unit pengendalian Gratifikasi ', 'https://drive.google.com/open?id=1WWB-tOSXWYOrAQ4rExzFzg4rQ-cAueqY'),
(5, 51, '51b', 4, '51b2', 'Keputusan Tentang petugas pengelola pengaduan di lingkungan KPPN ', 'https://drive.google.com/open?id=10U3q6vS3vgfWDAz1vCGwsWr0cThoeaZz'),
(5, 51, '51b', 4, '51b3', 'Keputusan Tentang Petugas Pengelola Pengaduan di Lingkungan KPPN', 'https://drive.google.com/open?id=13Y2ru4DsO1vsyz4QTf-ecBDI7MnNTESJ'),
(5, 51, '51b', 4, '51b4', 'Laporan Keg Penandatanganan Pernyataan Pengendalian Gratifikasi', 'https://drive.google.com/open?id=1T1CDa_ar6yxNSIXQHnvrd7C50arf6zOd'),
(5, 51, '51b', 4, '51b5', 'Surat Hal Laporan Kegiatan Penandatanganan Pernyataan Komitmen Pengendalian Gratifikasi', 'https://drive.google.com/open?id=1chjY7Siy4CJS0xU_AOYVHOOUeY748zCd'),
(5, 51, '51b', 4, '51b6', 'Surat Hal Penandatanganan Kontrak Kinerja dan Pakta Integritas', 'https://drive.google.com/open?id=1Vhh7zePtQ5F_AS_XU8w4jUw-2H2k64xZ'),
(5, 51, '51b', 4, '51b7', 'Pakta Integritas Eksternal', 'https://drive.google.com/open?id=1I-0t3BEZHp8tc46W8kx-AKzPrDwgs6Jy'),
(5, 51, '51b', 4, '51b8', 'Pakta Integritas Pegawai', 'https://drive.google.com/open?id=1iUoxAjTlHatFq-aqenIcUryXd5kXf4Ja'),
(5, 51, '51b', 4, '51b9', 'Pernyataan Komitmen Penerapan Program Pengendalian Gratifikasi', 'https://drive.google.com/open?id=1rfx7lTDgPuO_kPs-dM99M7uZ5yo2cIhh'),
(5, 52, '52a', 4, '52a1', 'ND Hal Larangan Gratifikasi ', 'https://drive.google.com/open?id=19wZ12CusCmylVBFnYiemZoNjlJDWe0cB'),
(5, 52, '52a', 4, '52a10', 'Pernyataan Komitmen Penerapan Program Pengendalian Gratifikasi ', 'https://drive.google.com/open?id=1C3Rqluof4Kul6ZrmyIAUtCKVZdQtRZCU'),
(5, 52, '52a', 4, '52a2', 'Pakta Integritas Eksternal', 'https://drive.google.com/open?id=1sJ0CrCZSXpY5mGk16yDVWAYTLSdOZWQI'),
(5, 52, '52a', 4, '52a3', 'Pakta Integritas Pegawai', 'https://drive.google.com/open?id=1GQj8obN2M0-kiMse2pNeBTpbPEISZrAR'),
(5, 52, '52a', 4, '52a4', 'Keputusan tentang penunjukan pelaksanan pemantauan Tingkat KPPN pada KPPN', 'https://drive.google.com/open?id=1YxWQDTqGBYg_BjeYSluMvuMbBGiMxI16'),
(5, 52, '52a', 4, '52a5', 'Keputusan Tentang petugas pengelola pengaduan di lingkungan KPPN', 'https://drive.google.com/open?id=1Ue731_X3nTiMi57dBvx-_p0VdJ65eIFc'),
(5, 52, '52a', 4, '52a6', ' Keputusan Tentang penunjukan pelaksana Pemantauan Tingkat KPPN pada KPPN', 'https://drive.google.com/open?id=1ZcOqKZXSBxGO8PSc-bGEoG5ZY88XM_fu'),
(5, 52, '52a', 4, '52a7', 'Keputusan tentang pengelola pengaduan di lingkungan KPPN', 'https://drive.google.com/open?id=16gHwP3t48jjLK8YWhs9Aa8PcdnXOEBw2'),
(5, 52, '52a', 4, '52a8', 'Keputusan tentang pembentukan TIM Pengelola Risiko', 'https://drive.google.com/open?id=1VAz2iuT_9QohlY697j6t3Czql4lwyGEE'),
(5, 52, '52a', 4, '52a9', 'Pemantauan atas SOP (Laporan Bulanan)', 'https://drive.google.com/open?id=1vGISlpIX4BhgJZN_DFQDCBZA9u0wKaGc'),
(5, 52, '52b', 4, '52b1', 'Surat Hal Penyampaian Mitigasi Risiko dan Profil Risiko', 'https://drive.google.com/open?id=16O-OKc4_Cjx8ZrF7Eg9_Hu2xptLF9zh9'),
(5, 52, '52b', 4, '52b2', 'Surat Hal Penyampaian Profil Risiko dan Monitoring Reviu', 'https://drive.google.com/open?id=1Wbb9RphSUcM7JSV9htffu1HVlDEoTOHE'),
(5, 52, '52b', 4, '52b3', 'Monev Risiko dan Profil Risiko', 'https://drive.google.com/open?id=1g07kQAH_z_7Zxb1yxoRCh-_Adfr5el5g'),
(5, 52, '52b', 4, '52b4', 'Keputusan tentang pembentukan TIM Pengelola Risiko', 'https://drive.google.com/open?id=1wiNm65oDF0wpo1mMGQhCzCfafrza6xTW'),
(5, 52, '52c', 4, '52c1', 'Surat Hal Penyampaian Mitigasi Risiko dan Profil Risiko', 'https://drive.google.com/open?id=1aq6IPg92siKuZfouxTUfmhZAfUubeWaA'),
(5, 52, '52c', 4, '52c10', 'Monev risiko dan profil risiko', 'https://drive.google.com/open?id=13agzoJec5i28D8Q8Y3M_X1PpcwkqfXjI'),
(5, 52, '52a', 4, '52c11', 'ND Hal Larangan Menerima  Gratifikasi', 'https://drive.google.com/open?id=1dH_QBrcoRDF0Fb1nc0heDuRcPvRdqiaV'),
(5, 52, '52c', 4, '52c2', 'ND Hal Larangan Gratifikasi', 'https://drive.google.com/open?id=1E9TM3SoLP0W-g4qNDnAIRtRy_Heyv4ny'),
(5, 52, '52c', 4, '52c3', 'Pakta Integritas Eksternal', 'https://drive.google.com/open?id=1CMSqy9PxYyjHWeg7cuSuhuEm9ucw4mWr'),
(5, 52, '52c', 4, '52c4', 'Pakta Integritas pegawai', 'https://drive.google.com/open?id=1lu5RnzjUSPtI70FCkl5TeplFk873T7DT'),
(5, 52, '52c', 4, '52c5', 'Surat  Hal Permintaan Profil Risiko dan Monitoring Reviu', 'https://drive.google.com/open?id=1iXU8_bno_ohnqWXZV9te8B-VogfchpJX'),
(5, 52, '52c', 4, '52c6', 'Keputusan Tentang penunjukan pelaksana Pemantauan Tingkat KPPN pada KPPN', 'https://drive.google.com/open?id=1fRWaC6FOiZh5WooX5UOx1uWfvWeur945'),
(5, 52, '52c', 4, '52c7', 'Keputusan tentang pengelola pengaduan di lingkungan KPPN', 'https://drive.google.com/open?id=12Xu6BbVARunAm2nI--LYpFIBZqWa2oyg'),
(5, 52, '52c', 4, '52c8', 'Keputusan tentang Penunjukan Pelaksana Pemantauan Tingkat KPPN ', 'https://drive.google.com/open?id=18eMPrQqteBbiSYIo60bA6ijnnUF8FyOa'),
(5, 52, '52c', 4, '52c9', 'Keputusan tentang Petugas Pengelola Pengaduan di Lingkungan KPPN', 'https://drive.google.com/open?id=1IXi9qv-3w0gJhk-W7Gcczm142OBtMmbx'),
(5, 52, '52c', 4, '52d1', 'GKM Pelaksanaan Tugas Kepatuhan Internal', 'https://drive.google.com/open?id=1lEhZ6SfPw120g0MLwlMNoYmGaIL8aMMM'),
(5, 52, '52d', 4, '52d2', 'ND Hal Larangan Gratifikasi', 'https://drive.google.com/open?id=19MP4sXN0YiRE09fHPO4q-TYRaJ5FGQ3h'),
(5, 52, '52d', 4, '52d3', 'SK Pengelolaan Pengaduan', 'https://drive.google.com/open?id=1RMDnqf5FIvLE56-qMMSUzwHWupl48Dbw'),
(5, 52, '52d', 4, '52d4', 'Laporan Pemantauan (bulanan)', 'https://drive.google.com/open?id=11xcb4UE50CnZGTysEuFo4POeNVNpOcU0'),
(5, 52, '52a', 4, '52d5', 'Laporan Pemantauan Pengendalian Internal (bulanan)', 'https://drive.google.com/open?id=1exf_sNBl_cPTQkR7h1gBFthilA3BGf_p'),
(5, 52, '52d', 4, '52d6', 'Pakta Integritas Pegawai', 'https://drive.google.com/open?id=1MqkB93XBM3Vs757zHAAse2PiSu50sifg'),
(5, 52, '52d', 4, '52d7', 'Laporan Sosialisasi JKN Standar Layanan & Pengendalian Gratifikasi', 'https://drive.google.com/open?id=1hSmXGXxBz7JzCVpoT-b1SFmAjM_Kgsh0'),
(5, 52, '52d', 4, '52d8', 'Surat Sos Pengaduan Pengendalian Gratifikasi & Launching Pengaduan Online', 'https://drive.google.com/open?id=1UR9c-TedK8IGDMw6QmmfKl2X5zbZc3O8'),
(5, 53, '52a', 4, '53a1', 'Penerapan Tugas Kepatuhan Internal Terintegrasi', 'https://drive.google.com/open?id=1sQz5bU-ckzo_0cVNgQghoBeKD4UdRcRT'),
(5, 53, '52a', 4, '53a2', 'SK Pengelola Pengaduan', 'https://drive.google.com/open?id=1SjqV5b-t_p_KN0YHmtEtLKtqmh8qFb1w'),
(5, 53, '53a', 4, '53a3', 'Surat Sosialisasi Pengaduan Pengendalian Gratifikasi & Launching Pengaduan Online', 'https://drive.google.com/open?id=1b9UiER5rGEeSWLypAdvLS53csYR6pXP6'),
(5, 53, '52a', 4, '53a4', 'Inovasi pengelolaan Pengaduan Printscreen pengaduan Online Via Website', 'https://drive.google.com/open?id=1CjxQCDUw3fBgqtYeiNbQiSs_7usn5iai'),
(5, 53, '53a', 4, '53a5', 'Inovasi Pengelolaan Pengaduan printscreen pengendalian gratifikasi pada aplikasi ASIKK', 'https://drive.google.com/open?id=1MjmcQuzB_-RU_FjxZqaEcEwL8FR2hl1r'),
(5, 53, '52b', 4, '53b1', ' Laporan pengaduan bulanan', 'https://drive.google.com/open?id=1tnVVLfM9B42cQGaii8P99A7rPI9X4CdU'),
(5, 53, '52c', 4, '53c1', 'Laporan Pengaduan Bulanan', 'https://drive.google.com/open?id=1RsKzqusH4FUCbuByQR4OxG3qYfbP_nHw'),
(5, 53, '52c', 4, '53c2', 'Monev Penanganan Pengaduan masyarakat (bulanan)', 'https://drive.google.com/open?id=1P65LtKOqtzh5XdJ6kiRm1PHMyJt4dKcX'),
(5, 53, '52c', 4, '53c3', 'Monev peningkatan Budaya kerja bebas dari korupsi (bulanan)', 'https://drive.google.com/open?id=13KDLC39CVwlixgLy95xZ539BSrTsddS3'),
(5, 53, '52d', 4, '53d1', ' Laporan pengaduan bulanan', 'https://drive.google.com/open?id=1Aj08KqSdYMvYzF9fz2GiIrLo7ibST1kG'),
(5, 53, '52d', 4, '53d2', 'MONEV Penanganan Pengaduan masyarakat (bulanan)', 'https://drive.google.com/open?id=1SvX257U0cg3plkHD-Y7OJaf4w6VDDBk7'),
(5, 53, '52d', 4, '53d3', 'Monev peningkatan Budaya kerja bebas dari korupsi (bulanan)', 'https://drive.google.com/open?id=1IZevS1yg2tuxHEvVhK7uJElpAK77MGai'),
(5, 54, '52a', 4, '54a1', 'GKM Pelaksanaan Tugas Kepatuhan Internal', 'https://drive.google.com/open?id=1bxeeaB0Ti2hKxTn5K8Ofuh9MgWXJCaAy'),
(5, 54, '54a', 4, '54a2', 'GKM dan Internalisasi WBS', 'https://drive.google.com/open?id=1PsXVnIRJbE7kHOZ5Hb0yvaytyNYKYRFz'),
(5, 54, '52a', 4, '54a3', 'Printscreen Website WBS', 'https://drive.google.com/open?id=1Tug3PS7gUN9D5-uEDQ5pB4Hqs2uV8aEj'),
(5, 54, '52a', 4, '54a4', 'Inovasi link ke WISE Kemenkeu melalui web KPPN', 'https://drive.google.com/open?id=18YcYdXY6YcIymcdpoYOjM9Q--7Y9AwIw'),
(5, 54, '52b', 4, '54b1', 'Per 3/ pb/2013 TENTANG PENGELOLAAN PENGADUAN', 'https://drive.google.com/open?id=1aM246IRtg0CB-vaqHYlrZ-87vzLAB2K2'),
(5, 54, '52b', 4, '54b2', 'KMK no 149/KMK.09/2011 tentang tata cara pengelolaan dan tindak lanjut pelaporan pelanggaran  WBS', 'https://drive.google.com/open?id=16UHdm8spGZI7TIQ1tLzXaRiOuPgfOd2Q'),
(5, 54, '52b', 4, '54b3', 'Inovasi Wise_Link Kemenkeu pada  Web KPPN', 'https://drive.google.com/open?id=1MYJxQYhHXTmLgmBFG2lEcBshc8HYDj0J'),
(5, 54, '52b', 4, '54b4', 'Printscreen tampilan website WISE Kemenkeu', 'https://drive.google.com/open?id=1c3mY_XkNHLitFJQFLDAbqAeg8Dn5DOwb'),
(5, 54, '52c', 4, '54c1', ' Laporan Pengaduan Bulanan', 'https://drive.google.com/open?id=1l5_tqpKuIX7WM0pYyK2eVl6yn1Plmb_h'),
(5, 54, '52c', 4, '54c2', 'ND hal Monev penanganan pengaduan masyarakat(bulanan)', 'https://drive.google.com/open?id=19QH6NrAfFJKvXmTz2jAq8JVK0UKJPMJz'),
(5, 54, '52c', 4, '54c3', 'Monev peningkatan Budaya kerja bebas dari korupsi (bulanan)', 'https://drive.google.com/open?id=1rjcL7AwW4O_60nXiZsk22Ue0R6yQDhd3'),
(5, 54, '52c', 4, '54c4', 'Laporan Evaluasi WISE BLN (bulanan)', 'https://drive.google.com/open?id=1Gtlre5-wsdpHfVA7_rUhiItZtxqpDgG5'),
(5, 54, '52c', 4, '54c5', 'Surat pernyataan Kepala Kantor mengenai pengaduan melalui WISE', 'https://drive.google.com/open?id=1IVQSgIEvRKM3rT0Nlo6psQEsrXY3-Pqm'),
(5, 55, '52c', 4, '54c6', 'Monev peningkatan Budaya Kerja Bebas Korupsi', 'https://drive.google.com/open?id=16pvxXAhaZFIV0T1y9fYJmvnshmb6mN-y'),
(5, 54, '52d', 4, '54d1', 'Laporan pengaduan bulanan', 'https://drive.google.com/open?id=1C6a26rJjx58KYguybHp1gHlWTO7JtCcN'),
(5, 54, '52d', 4, '54d2', ' ND hal Penanganan Pengaduan Masyarakat (bulanan)', 'https://drive.google.com/open?id=1rId5boI71TJC0rQ5Yq4LykOx-tC_CaNu'),
(5, 54, '52d', 4, '54d3', 'Monev peningkatan Budaya kerja bebas dari korupsi (bulanan)', 'https://drive.google.com/open?id=1xQrYP61sWPL728zlcioAOHh6HcNctDkM'),
(5, 54, '52d', 4, '54d4', ' Laporan Evaluasi WISE BLN (bulanan)', 'https://drive.google.com/open?id=1sgxAZgX2u_nXxrlVHkDBEAHMLVHs9X4B'),
(5, 54, '52d', 4, '54d5', 'Surat pernyataan Kepala Kantor mengenai pengaduan melalui WISE', 'https://drive.google.com/open?id=1dHRw5kpeG8NUyQqzVc2vdEHMvAkTJQEi'),
(5, 54, '52d', 4, '54d6', 'Monev peningkatan Budaya Kerja Bebas Korupsi', 'https://drive.google.com/open?id=19gqo1SB7KgmRZqTOG6wInuQTpObj-rba'),
(5, 55, '55a', 4, '55a1', 'Surat Hal Penyampaian titik Rawan Terjadinya Fraud dan Potensi Benturan Kepentingan ( Conflict of Interest) pada Instansi Vertikal di Lingkungan Ditjen Perbendaharaan', 'https://drive.google.com/open?id=1DojdJ1zQDY7wH1Vnoyu1yuP_o1OVmp_7'),
(5, 55, '55a', 4, '55a2', 'Undangan Pelaksanaan Mapping Benturan Kepentingan dan Penanganannya', 'https://drive.google.com/open?id=113X-hQ5LtX8scUyrJjB_QDBXRV0Wv9uG'),
(5, 55, '55a', 4, '55a3', 'Data pegawai KPPN dan pasangannya', 'https://drive.google.com/open?id=1Z21S_8FnsmS_mAjPpXQZ_ZeSP6fJcFc0'),
(5, 55, '55b', 4, '55b1', 'GKM Penanganan Benturan Kepentingan ', 'https://drive.google.com/open?id=1IqAOMOxyVz6v4gXm078dHwyQXkjSSbUw'),
(5, 55, '55b', 4, '55b2', 'Data pegawai KPPN dan Pasangannya', 'https://drive.google.com/open?id=1KPh5CLCFHyqNl8CqScyOwp9AAwMzda50'),
(5, 55, '55b', 4, '55b3', 'Pakta Integritas Eksternal', 'https://drive.google.com/open?id=1nzCe3hu26WTybu4xUOsoFKeeckv0-iCj'),
(5, 55, '55b', 4, '55b4', 'Laporan Perencanaan ZI dan Sosialisasi Program Anti Korupsi', 'https://drive.google.com/open?id=1RPjz3lsAucwOI8piE5m7eJGgkwScnKmS'),
(5, 55, '55b', 4, '55b5', 'Surat Sos Pengaduan Pengendalian Gratifikasi & Launching Pengaduan Online', 'https://drive.google.com/open?id=13VxCoXgoW48-rRQWhCD68Hwd-jQQOfDL');
INSERT INTO `t_datawbkwbbm` (`idkomp`, `idbagkomp`, `idkeg`, `idpic`, `idoutput`, `outputkeg`, `filedok`) VALUES
(5, 55, '55b', 4, '55b6', 'Keputusan tentang Penetapan unit Pengendalian Gratifikasi', 'https://drive.google.com/open?id=1rj0-TYUTTYZvBEzho-rIqeIv1pIvryc_'),
(5, 55, '55c', 4, '55c1', ' ND Larangan Gratifikasi', 'https://drive.google.com/open?id=1fl0yVvyRVvUtEdlaerljYY1KxTWHPHsT'),
(5, 55, '55c', 4, '55c2', 'Pakta Integritas Eksternal', 'https://drive.google.com/open?id=1uO-7Ce-WkOx94_28tOXJlBwheI47XSdp'),
(5, 55, '55c', 4, '55c3', 'Keputusan tentang Penetapan Pengendalian Gratifikasi ', 'https://drive.google.com/open?id=1BxlWRx-pED6oA8Ura8yPQziL_1e4GTZN'),
(5, 55, '55c', 4, '55c4', ' ND hal Larangan Menerima Gratifikasi', 'https://drive.google.com/open?id=1XGWVlWE4iFJDjPl77ssMFxLxTIH9JU9j'),
(5, 55, '55c', 4, '55c5', 'Laporan Penanganan Benturan Kepentingan', 'https://drive.google.com/open?id=1wRoVbZxgr0AAGQCdsX70kQo0vAGoigDN'),
(5, 55, '55e', 4, '55d1', 'Monev peningkatan budaya kerja bebas dan korupsi (bulanan)', 'https://drive.google.com/open?id=1geoxUyjww7hrkYv0s3HZrrYXENnpwJGG'),
(5, 55, '55d', 4, '55d2', ' Lap Monev penanganan benturan Kepentingan (bulanan)', 'https://drive.google.com/open?id=1eB6ivds614rvqDufn-kW43rBgtKN6hq4'),
(5, 55, '55d', 4, '55d3', 'Surat pernyataan KK-Evaluasi Tindak Lanjut (Benturan Kepentingan)', 'https://drive.google.com/open?id=1v1q5oe-2a88g4GJp7ZqR7bf-EzgG_mss'),
(5, 55, '55d', 4, '55d4', 'Laporan Penanganan Benturan Kepentingan (bulanan)', 'https://drive.google.com/open?id=1axwst0LRLn8j0mWHQYBVUlT9kFNP2oOQ'),
(5, 55, '55e', 4, '55e1', 'Surat Pernyataan KK-Evaluasi Tindak Lanjut', 'https://drive.google.com/open?id=1RKiw5TJm0Ba64B5BPdQQ_Rr8cCL2RVKu'),
(5, 55, '55e', 4, '55e2', 'lap. Monev Penanganan Benturan Kepentingan (Bulanan)', 'https://drive.google.com/open?id=1lgO4SwJAqYnqHJEJnKb0g4EXtbf7YGSc'),
(5, 55, '55e', 4, '55e3', 'Laporan Penanganan Benturan Kepentingan (bulanan)', 'https://drive.google.com/open?id=1n5v9aSuKmTSlZKvFv9mtYa88-MdypXlw'),
(6, 61, '61a', 2, '61a1', 'Keputusan tentang penetapan pelaksanaan standar pelayanan KPPN', 'https://drive.google.com/open?id=1E3FPsQs1S_qXJkbm1W61I0nfwK-AJihg'),
(6, 61, '61a', 2, '61a2', 'Dokumen Lainnya', 'https://drive.google.com/open?id=1j01U6dKZZpxcnbxTdCU61TGgXsAp4sg7'),
(6, 61, '61b', 2, '61b1', 'Keputusan tentang penetapan pelaksanaan standar pelayanan KPPN', 'https://drive.google.com/open?id=1E3FPsQs1S_qXJkbm1W61I0nfwK-AJihg'),
(6, 61, '61b', 2, '61b2', 'Foto-foto tempat ditampilkan maklumat layanan', 'https://drive.google.com/open?id=1luxOIlA1gCt5WIniutb2FAdZeK9aTzdg'),
(6, 61, '61c', 2, '61c1', 'Keputusan tentang Standar Operasional Prosedur pada KPPN', 'https://drive.google.com/open?id=0ByO-2Bmo9pnbOVVNdnZTTnFSNDg'),
(6, 61, '61c', 2, '61c2', 'Standar Pelayanan Minimum Kantor Vertikal DJPBN', 'https://drive.google.com/open?id=1QA-tcI7kmOkhK6f2YOIOSvt1IVdHSykO'),
(6, 61, '61d', 2, '61d1', 'Surat hal Penyampaian Hasil reviu SOP sesuai KEP-287/PB/2015', 'https://drive.google.com/open?id=1bASWJxGMnlGvhHHH3rpfOFmLHGWolmdm'),
(6, 61, '61d', 2, '61d2', 'Surat Permintaan Reviu SOP KPPN', ''),
(6, 61, '61d', 2, '61d3', 'Langkah-langkah peningkatan kinerja layanan publik', 'https://drive.google.com/open?id=1uAA1wBlleuWc3ZCA-Ujye4E1mX1Oj2hU'),
(6, 62, '62a', 2, '62a1', 'Foto-foto penerapan budaya pelayanan prima', 'https://drive.google.com/open?id=11GVkPGzRNZ9jcoSm0JPqfwdRgRo8UeyC'),
(6, 62, '62a', 2, '62a2', 'Laporan Pelaksanaan Kegiatan Capacity Building dan Sosialisasi Penajaman Visi, Misi, Moto, Janji Layanan, dan Maklumat KPPN', 'https://drive.google.com/open?id=1XP4HuhNoyfDDIqEGRRccQrteAwmY8dmH'),
(6, 62, '62a', 2, '62a3', 'ND hal perintah mengikuti kegiatan Capacity Building', 'https://drive.google.com/open?id=1bmFjsXfPyuY649S9XppvnQf4f3WtoX8I'),
(6, 62, '62a', 2, '62a4', 'ND hal pelatihan Service Excellent para pegawai KPPN', 'https://drive.google.com/folderview?id=1zUmQl2pwibq5NClb8TT8wDFR667m7hkl'),
(6, 62, '62a', 2, '62a5', 'Surat Laporan Kegiatan Change Agent', 'https://drive.google.com/open?id=1X3GrsSteDt4tYHHJeE3zIixVwTs7ZoBz'),
(6, 62, '62b', 2, '62b1', 'Foto media sosialisasi layanan publik', 'https://drive.google.com/open?id=1_O2AiNBUW6PtoU3dg5kPI21e9gdfc_JY'),
(6, 62, '62b', 2, '62b2', 'KEP tentang SK pengelola website', 'https://drive.google.com/open?id=1NIU4QhnnZRTebUmlEzsE1irDatd3vOZM'),
(6, 62, '62c', 2, '62c1', 'Penyampaian usul kandidat penerima service excellent award', 'https://drive.google.com/open?id=1JlHguTHgAX6bcM2myTPbmAQmH50BG-lo'),
(6, 62, '62c', 2, '62c2', 'pemilihan satker berprestasi', 'https://drive.google.com/open?id=19LcSrG_-iDiieh98dbtGUvFwd9MNxmhC'),
(6, 62, '62c', 2, '62c3', 'Foto satker penerima penghargaaan', 'https://drive.google.com/open?id=1Qy0bfMbfxtmnVIh5V4IKhprET6MpQSkm'),
(6, 62, '62c', 2, '62c4', 'Surat upaya peningkatan pelayanan KPPN (Reward and Punishment)', 'https://drive.google.com/open?id=1snec2B7DhRP1tbyFX3kRxl0119HxYmIG'),
(6, 62, '62d', 2, '62d1', 'Perjanjian kerjasama KPPN dan Kantor Pelayanan Lain', 'https://drive.google.com/folderview?id=1QoQYtdcJwfp78m2RZeMptadKYdMjRroe'),
(6, 62, '62d', 2, '62d2', 'Layanan Terpadu', 'https://drive.google.com/open?id=1jIQuvycq9CkWsJketseQjexGPDPzTW8e'),
(6, 62, '62d', 2, '62d3', 'Ruang layanan terpadu', 'https://drive.google.com/open?id=1CqdgVGTQcXq4yTptHFJLHaswL5-XgwLq'),
(6, 62, '62e', 2, '62e1', 'Keputusan tentang pelaksanaan program inovasi', 'https://drive.google.com/open?id=1VGzi-VzmKRDXRX5yEEuqGf8NbXWWDWOf'),
(6, 62, '62e', 2, '62e2', 'Inovasi standar layanan', 'https://drive.google.com/open?id=1bLGUFW9cufupXDqwAoN0aioxAiJbygRe'),
(6, 63, '63a', 2, '63a1', 'Laporan Hal Laporan Penilaian Kinerja (LPK) pada KPPN', 'https://drive.google.com/folderview?id=1W2mg7PTNoVg9sHHRWJFIAwqOIVDA_0-h'),
(6, 63, '63a', 2, '63a2', 'Survei IKM dari Laporan Penilaian Kinerja', 'https://drive.google.com/open?id=1oXeyXLJlb-2ofXAiaMYQErjdnjWQy0YN'),
(6, 63, '63a', 2, '63a3', 'Laporan hasil pembinaan', 'https://drive.google.com/folderview?id=1KLtdafj5FlJRvpLZR52ndkXXe-e1SiJB'),
(6, 63, '63b', 2, '63b1', 'Laporan Hal Laporan Penilaian Kinerja (LPK) pada KPPN', 'https://drive.google.com/folderview?id=1munCXtNO89aw7t_7ww9cw21LAI3ZjZQL'),
(6, 63, '63b', 2, '63b2', 'Survei IKM dari Laporan Penilaian Kinerja', 'https://drive.google.com/folderview?id=1a6ctcdPPpAzjcJoZY4ZRHSN-nHfFQ8-G'),
(6, 63, '63b', 2, '63b3', 'Laporan hasil pembinaan', 'https://drive.google.com/open?id=1uYBRgPxFb8iGQlRyLgVpDonwnEaZRClQ'),
(6, 63, '63b', 2, '63b4', 'Printscren tampilan survey IKM di website', 'https://drive.google.com/open?id=1Bj8_Ij5zQLu0jwYuykmUBcLbG7EvKDxX'),
(6, 63, '63c', 2, '63c1', 'Laporan peningkatan pengelolaan kinerja', 'https://drive.google.com/open?id=1Gd-AHVl5F-2GUhA4dcWdgcZxxAHpJyGa'),
(6, 63, '63c', 2, '63c2', 'Langkah-langkah peningkatan kinerja Layanan', 'https://drive.google.com/open?id=1tvfy3W4g7I0_4Kr05MmeA6dbYiBA2jC5'),
(6, 63, '63c', 2, '63c3', 'Laporan hasil pembinaan', 'https://drive.google.com/open?id=1cEDy-12iah_oIq2lsyaj8sTUK0umICwb'),
(6, 63, '63c', 2, '63c4', 'Laporan Briefing pagi (morning call)- tindak lanjut survey IKM', 'https://drive.google.com/open?id=1Dnp0TNJHF5hARjVSDb_7v8-H4DeUUwjq');

-- --------------------------------------------------------

--
-- Table structure for table `t_gabungan`
--

CREATE TABLE `t_gabungan` (
  `idData` int(11) NOT NULL,
  `timestamp` varchar(18) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `kodesatker` char(6) DEFAULT NULL,
  `namasatker` varchar(255) DEFAULT NULL,
  `prov` varchar(60) DEFAULT NULL,
  `kppn` varchar(60) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `jenissatker` varchar(20) DEFAULT NULL,
  `namapejabat` varchar(60) DEFAULT NULL,
  `tgllahir` varchar(30) DEFAULT NULL,
  `jeniskelamin` varchar(12) DEFAULT NULL,
  `pendidikan` varchar(60) DEFAULT NULL,
  `jenispegawai` varchar(60) DEFAULT NULL,
  `nip` varchar(60) DEFAULT NULL,
  `gol` varchar(4) DEFAULT NULL,
  `rangkapjab` varchar(20) DEFAULT NULL,
  `jabstr` varchar(100) DEFAULT NULL,
  `nmrsk` varchar(60) DEFAULT NULL,
  `tglsk` varchar(10) DEFAULT NULL,
  `tmtsk` varchar(10) DEFAULT NULL,
  `jabperbend` varchar(60) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_gabungan`
--

INSERT INTO `t_gabungan` (`idData`, `timestamp`, `email`, `kodesatker`, `namasatker`, `prov`, `kppn`, `alamat`, `telepon`, `jenissatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `jenispegawai`, `nip`, `gol`, `rangkapjab`, `jabstr`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`, `status`) VALUES
(1, '1/17/2018 14:49:34', 'bapassumbawa@gmail.com', '653182', 'Balai Pemasyarakatan Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jalan jurusan sumbawa bima km. 07 Sumbawa Besar', '0371-2629132', 'Non-BLU', 'ARYA SUTHA NARWADI', '4/3/1992', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '199203042010121002', 'IIB', 'Tidak', '', 'W21.EBSB.KU.03.03-02', '4/1/2018', '4/1/2018', 'Bendahara Pengeluaran', NULL),
(2, '1/17/2018 14:54:24', 'adrian.kreston@gmail.com', '528608', 'KPPN SUMBAWA BESAR', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Garuda No.107', '0371-21224', 'Non-BLU', 'Andrian Maulana', '9/22/1991', 'Laki-laki', 'Diploma I/II/III', 'PNS', '199109222013101002', 'IID', 'Tidak', '', 'KEP-29/WPB.22/2015', '2/26/2015', '9/15/2014', 'Bendahara Pengeluaran', NULL),
(3, '1/17/2018 15:44:50', 'etrilestari@gmail.com', '528608', 'Kantor Pelayanan Perbendaharaan Negara Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda no. 107, Sumbawa Besar 84351', '0371-21224', 'Non-BLU', 'Ermina Tri Lestari', '4/24/1966', 'Perempuan', 'Magister', 'PNS', '196604241988032001', 'IVA', 'Ya', 'Kepala Kantor', 'KEP-001/WPB.22/KP.04/2018', '1/11/2018', '8/1/2017', 'KPA merangkap PPK', NULL),
(4, '1/17/2018 15:50:12', 'gdeadnyana@gmail.com', '668601', 'Bps kab. Sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan telaga bertong', '0372-81813', 'Non-BLU', 'I gde adnyana', '8/18/1980', 'Laki-laki', 'Magister', 'PNS', '198018182003121001', 'IVA', 'Ya', 'Kasubbag Tata Usaha', '1', '1/2/2018', '4/1/2016', 'PPSPM', NULL),
(5, '1/17/2018 15:50:21', 'abie@bps.go.id', '668601', 'Bps kab. Sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 269 Kel. Telaga Bertong - Taliwang - Sumbawa Barat', '0372-81813', 'Non-BLU', 'Zaenal Abidin', '2/22/1981', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198102222006041006', 'IIC', 'Tidak', '', '001/KPG Tahun 2018', '1/2/2018', '7/1/2011', 'Bendahara Pengeluaran', NULL),
(6, '1/17/2018 15:57:15', 'ziadirahman95@gmail.com', '411404', 'KPPBC SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan pelabuhan badas sumbawa besar', '0371-2629123', 'Non-BLU', 'Ziadi Rahman', '3/15/1995', 'Laki-laki', 'Diploma I/II/III', 'PNS', '199503152015021006', 'IIA', 'Tidak', '', 'Kep-01/WBC.13/KPP.MP.04/2018', '1/4/2018', '1/1/2017', 'Bendahara Pengeluaran', NULL),
(7, '1/17/2018 16:10:25', 'hndry99@gmail.com', '658241', 'KPU Kabupaten Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Telaga Bertong Kelurahan Telaga Bertong Kec. Taliwang Kab. Sumbawa Barat', '0372-81788', 'Non-BLU', 'Hendry Bantara', '8/25/1985', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198508252010011005', 'IIIB', 'Tidak', '', '01/HK.03.2-Kpt/5207/Sek-Kab/I/2018', '1/10/2018', '1/14/2012', 'Bendahara Pengeluaran', NULL),
(8, '1/17/2018 16:22:50', 'vina.in69@gmail.com', '528608', 'Kantor Pelayanan Perbendaharaan Negara Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 107 Sumbawa Besar', '0371-22296', 'Non-BLU', 'Iin Sojuscha Vinantie', '2/1/1969', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196902011989122001', 'IIID', 'Ya', 'Kepala Subag Umum', 'KEP-01/WPB.22/KP.04/2018', '1/11/2018', '7/31/2017', 'PPSPM', NULL),
(9, '1/17/2018 16:46:43', 'angga.boy.21@gmail.com', '288482', 'Bandar udara sultan muhammad kaharuddin di kabupaten sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Garuda no.41', '0371-21792', 'Non-BLU', 'Airlangga Tisna Wijaya', '12/14/1982', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198212142008121002', 'IIIC', 'Ya', 'Kepala Urusan Tata Usaha', 'KP.004/672/XIISWQ-2017', '12/22/2017', '1/2/2018', 'PPSPM', NULL),
(10, '1/18/2018 7:50:27', 'sucian4@gmail.com', '418324', 'Badan Narkotika Nasional Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 23 Sumbawa Besar', '0371-2620594', 'Non-BLU', 'Suciana', '23/03/1980', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '198003232008012028', 'IIC', 'Tidak', '', 'KEP/1/I/2018/BNNK', '02/01/2018', '03/01/2017', 'Bendahara Pengeluaran', NULL),
(11, '1/18/2018 8:22:30', 'ardhy.tenga@gmail.com', '288482', 'BANDAR UDARA SULTAN MUHAMMAD KAHARUDDIN', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JLN. GARUDA NO. 41 SUMBAWA BESAR', '0371-21792', 'Non-BLU', 'HETI KUSENDANG', '28/02/1978', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197802282006042001', 'IIC', 'Tidak', '', 'KP.004/673/XII/SWQ-2017', '22/12/2017', '01/01/2017', 'Bendahara Pengeluaran', NULL),
(12, '1/18/2018 9:17:35', 'ariefrahman1080@gmail.com', '288482', 'Bandar udara sultan m kaharuddin', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda no 41', '0371 21792', 'Non-BLU', 'Arif rahman', '10/10/1980', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198010012009121002', 'IIB', 'Tidak', '', 'Ku.004/673/XII/SWQ-2017', '22/12/2017', '02/01/2018', 'Bendahara Penerimaan', NULL),
(13, '1/18/2018 9:18:27', 'bag.umumkpusbw@gmail.com', '658220', 'KPU KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. GARUDA NO. 109 SUMBAWA BESAR', '0371-626401', 'Non-BLU', 'MOH. ATHAR', '24/02/1983', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198302242010121002', 'IIIB', 'Ya', 'KASUBBAG UMUM, KEUANGAN DAN LOGISTIK', '04/HK.03.1-Kpt/5204/02/Sek-Kab/I/2018', '04/01/2018', '02/08/2017', 'PPK', NULL),
(14, '1/18/2018 9:37:47', 'bag.umumkpusbw@gmail.com', '658220', 'KPU KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. GARUDA NO. 109 SUBAWA BESAR', '0371-626401', 'Non-BLU', 'ITRUN', '13/10/1970', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19701013 200811 1 001', 'IIIC', 'Ya', 'KASUBBAG PROGRAM', '01/HK.03.1-Kpt/5204/02/Sek-Kab/I/2018', '04/01/2018', '02/08/2017', 'PPSPM', NULL),
(15, '1/18/2018 14:06:06', 'kantor.upp.bnt@gmail.com', '652559', 'Kantor UUP Benete', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pelabuhan Benete Kec. Maluk Sumbawa Barat', '0372-6700100', 'Non-BLU', 'Anwar', '15/07/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197307151994031003', 'IID', 'Tidak', '', 'Ku. 706/12/Upp.Bnt.17', '12/10/2017', '03/01/2013', 'Bendahara Pengeluaran', NULL),
(16, '1/18/2018 14:51:11', 'nursyafruddinnoers@gmail.com', '418324', 'Badan Narkotika Nasional Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 23 Sumbawa Besar', '0371-2620594', 'Non-BLU', 'Nursyafruddin', '04/04/1970', 'Laki-laki', 'Diploma I/II/III', 'PNS', '197004041990031006', 'IIIC', 'Ya', 'Kasi Pencegahan dan Pemberdayaan Masyarakat', 'KEP/1/I/2018/BNNK', '02/01/2018', '03/01/2017', 'PPSPM', NULL),
(17, '1/19/2018 7:36:57', 'man1sumbawa@yahoo.co.id', '307871', 'Madrasah Aliyah Negeri Sumbawa Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Kepiting Gang Santri No.33 Sumbawa Besar', '0371-21185', 'Non-BLU', 'FATHURRAHMAN', '1/23/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196801231994021001', 'IVA', 'Tidak', '', 'Kw.19.1/2/Kp.07.6/08/2015', '1/20/2015', '1/21/2015', 'KPA', NULL),
(18, '1/19/2018 7:49:16', 'suprihatin.man1sbw@gmail.com', '307871', 'Madrasah Aliyah Negeri Sumbawa Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Kepiting Gang Santri No.33 Sumbawa Besar', '0371-21185', 'Non-BLU', 'SUPRIHATIN', '6/26/1973', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197306262007012021', 'IIIA', 'Tidak', '', 'B-01.a/Ma.19.07/KP.00.3/01/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran', NULL),
(19, '1/19/2018 8:09:19', 'jpitoyo069@gmail.com', '307871', 'Madrasah Aliyah Negeri Sumbawa Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Kepiting Gang Santri No.33 Sumbawa Besar', '0371-21185', 'Non-BLU', 'DJOKO PITOYO', '4/30/1963', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196304301987031001', 'IIID', 'Ya', 'Kaur Tata Usaha', 'Kw.19.1/2/240/2011', '2/10/2011', '2/24/2011', 'PPSPM', NULL),
(20, '1/19/2018 8:37:49', 'mschaidir@gmail.com', '307871', 'Madrasah Aliyah Negeri Sumbawa Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Kepiting Gang Santri No.33 Sumbawa Besar', '0371-21185', 'Non-BLU', 'MS. KHAIDIR', '11/18/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197511181998031001', 'IID', 'Tidak', '', 'b-02.a/Ma.19.07/KP.00.3/01/2018', '1/2/2018', '1/2/2018', 'PPK', NULL),
(21, '1/19/2018 8:39:41', 'bnnksumbawa2016@gmail.com', '418324', 'Badan Narkotika Nasional Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 23 Sumbawa Besar', '0371-2620594', 'Non-BLU', 'Ahmady', '2/27/1972', 'Laki-laki', 'Diploma I/II/III', 'PNS', '197202271994031004', 'IIIC', 'Ya', 'Kepala Sub Bagian Umum', 'KEP/1/I/2018/BNNK', '1/2/2018', '10/6/2017', 'PPK', NULL),
(22, '1/19/2018 8:53:54', 'bnnksumbawa2016@gmail.com', '418324', 'Badan Narkotika Nasional Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 23 Sumbawa Besar', '0371-2620594', 'Non-BLU', 'Syirajuddin Mahmud', '11/11/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'TNI/POLRI', '61110230', 'IVB', 'Ya', 'Kepala Badan Narkotika Nasional Kabupaten Sumbawa', 'KEP/1/I/2018/BNNK', '1/2/2018', '1/3/2017', 'KPA', NULL),
(23, '1/20/2018 8:05:16', 'mtsnsumbawabesar@gmail.com', '553612', 'MTsN Sumbawa Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln Durian Kel Uma Sima Kab. Sumbawa', '0371 2629137', 'Non-BLU', 'adiat S.Ag', '5/20/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197205201999031005', 'IVD', 'Tidak', '', '69/KK.19.04/01/2018', '1/8/2018', '3/1/2012', 'KPA merangkap PPK', NULL),
(24, '1/20/2018 8:32:14', 'mtsnsumbawabesar@gmail.com', '553612', 'MTsN Sumbawa Kab Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Kel Uma Sima Kec Sumbawa', '0371 2629137', 'Non-BLU', 'AINI HAYATI', '8/31/1964', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196408311989022001', 'IIIC', 'Ya', 'KEPALA TATA USAHA MTsN SUMBAWA', '69/Kk.19.04/01/2018', '1/8/2018', '1/1/2010', 'PPSPM', NULL),
(25, '1/20/2018 11:54:07', 'mtsnsumbawabesar@gmail.com', '553612', 'MTsN Sumbawa kab. Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Kel Uma Sima Kec Sumbawa Besar', '0371 2629137', 'Non-BLU', 'SUHARTINI', '10/25/1976', 'Perempuan', 'Sekolah Menegah Pertama/Sederajat dan lebih rendah', 'PNS', '197611252007012028', 'IIB', 'Ya', 'BENDAHARA PENGELUARAN', '69/Kk.19.04/01/2018', '1/8/2018', '12/1/2017', 'Bendahara Pengeluaran', NULL),
(26, '1/22/2018 13:19:53', 'man3.sumbawa@yahoo.co.id', '603870', 'MAN 3 Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Merdeka Empang', '0371-6191085', 'Non-BLU', 'AKHYAR', '12/31/1967', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196712311993031024', 'IVA', 'Tidak', '', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '1/1/2018', 'KPA', NULL),
(27, '1/22/2018 13:23:33', 'bps5204@bps.go.id', '429326', 'Badan Pusat statistik Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jl durian no 70 sumbawa besar', '0371-21047', 'Non-BLU', 'kunibadi\'ah khuliyati', '10/10/1987', 'Perempuan', 'Diploma I/II/III', 'PNS', '198710102009022005', 'IIIA', 'Tidak', '', '001/KPA/2018', '2/1/2018', '1/1/2015', 'Bendahara Pengeluaran', NULL),
(28, '1/22/2018 13:47:13', 'man3.sumbawa@yahoo.co.id', '603870', 'MAN 3 Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Merdeka Empang', '0371-6191085', 'Non-BLU', 'HERMANSYAH', '2/21/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196102211987031002', 'IIIB', 'Ya', 'Kepala Tata Usaha', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '8/23/2007', 'PPSPM', NULL),
(29, '1/22/2018 13:50:22', 'bps5204@bps.go.id', '429326', 'BADAN PUSAT STATISTIK KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No 70 Sumbawa Besar', '0371-21047', 'Non-BLU', 'Ir I Gusti Lanang Putra', '8/17/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19680817 199212 1 001', 'IVA', 'Ya', 'Kepala', '370 / PA / 2017', '11/27/2017', '11/27/2016', 'KPA', NULL),
(30, '1/22/2018 13:52:03', 'rauhunman3@gmail.com', '603870', 'MAN 3 Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Merdeka Empang', '0371-6191085', 'Non-BLU', 'SITI RAUHUN', '5/28/1972', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197205282007012013', 'IIC', 'Tidak', '', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '1/1/2011', 'Bendahara Pengeluaran', NULL),
(31, '1/22/2018 16:36:13', 'ahamid@bps.go.id', '429326', 'Badan Pusat Statistik Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 70 Sumbawa Besar', '0371 21047', 'Non-BLU', 'A. Hamid', '1/2/1962', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196201021981031002', 'IIID', 'Ya', 'Kepala Sub Bagian Tata Usaha', '001/KPA/2018', '1/2/2018', '1/2/2018', 'PPSPM', NULL),
(32, '1/23/2018 7:48:24', 'kokomalik180288@gmail.com', '432181', 'Kantor Pertanahan Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 89 Sumbawa Besar', '0371-21227', 'Non-BLU', 'Joko Malik', '2/18/1988', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198802182014021003', 'IIIA', 'Ya', 'Kepala Urusan Keuangan dan BMN', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'PPK', NULL),
(33, '1/23/2018 7:58:31', 'nurhassumiarti978@gmail.com', '432181', 'Kantor Pertanahan Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 89 Sumbawa Besar', '0371-21227', 'Non-BLU', 'NURHASSUMIARTI', '3/11/1978', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197803112012122001', 'IIB', 'Tidak', '', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'Bendahara Pengeluaran', NULL),
(34, '1/23/2018 8:07:58', 'kantah.sbw@gmail.com', '432181', 'Kantor Pertanahan Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 89 Sumbawa Besar', '0371-21227', 'Non-BLU', 'Ketut Diptasari', '12/31/1960', 'Laki-laki', 'Magister', 'PNS', '196012311985031022', 'IVB', 'Ya', 'Kepala Kantor Pertanahan', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'KPA', NULL),
(35, '1/23/2018 8:13:51', 'kantah.sbw@gmail.com', '432181', 'Kantor Pertanahan Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 89 Sumbawa Besar', '0371-21227', 'Non-BLU', 'SITI AISYAH', '8/29/1961', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196108291984032014', 'IIID', 'Ya', 'Kepala Sub Bagian Tata Usaha', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'PPSPM', NULL),
(36, '1/23/2018 8:27:24', 'bag.umumkpusbw@gmail.com', '658220', 'KPU KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. GARUDA NO. 109 SUMBAWA BESAR', '0371-626400', 'Non-BLU', 'LAHMUDDIN', '5/22/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197205221992031004', 'IVA', 'Ya', 'SEKRETARIS KPU KABUPATEN SUMBAWA', '17/KU.05-SD/02/SJ/I/2018', '1/9/2018', '11/5/2014', 'KPA', NULL),
(37, '1/23/2018 9:00:57', 'bag.umumkpusbw@gmail.com', '658220', 'KPU KABUPATEN SUMBAWA BESAR', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. GARUDA NO. 109 SUMBAWA BESAR', '0371-626401', 'Non-BLU', 'EWY ELVIA MARLIANA', '3/24/1983', 'Perempuan', 'Diploma I/II/III', 'PNS', '198303242010122001', 'IID', 'Tidak', '', '02/HK/03.1-Kpts/5204/02/Sek-Kab/I/2018', '1/4/2018', '1/5/2017', 'Bendahara Pengeluaran', NULL),
(38, '1/23/2018 10:20:41', 'mtsnegerialas@gmail.com', '603845', 'MTs Negeri Alas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pahlawan Desa Dalam Kecamatan Alas Kabupaten Sumbawa', '0372-9291715', 'Non-BLU', 'Kamariah', '11/1/2018', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198211012007102002', 'IIB', 'Tidak', '', '69/Kk.19.04/01/2018', '1/8/2018', '6/20/2018', 'Bendahara Pengeluaran', NULL),
(39, '1/23/2018 10:35:27', 'neksaammar@gmail.com', '603845', 'MTs Negeri Alas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pahlawan Desa Dalam Kecamatan Alas Kabupaten Sumbawa', '0372-9291715', 'Non-BLU', 'Siran', '12/31/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196812311988031005', 'IIID', 'Ya', 'Kepala Tata Usaha', '69/Kk.19.04/01/2018', '1/8/2018', '12/31/2014', 'PPSPM', NULL),
(40, '1/23/2018 11:18:57', 'laluustad@gmail.com', '603845', 'MTs Negeri Alas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pahlawan Desa Dalam Kecamatan Alas', '0372-9291715', 'Non-BLU', 'Lalu Istiqlal', '8/17/1974', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197408172003121002', 'IVA', 'Ya', 'Kepala Madrasah', '69/Kk.19.04/01/2018', '1/8/2018', '12/31/2014', 'KPA merangkap PPK', NULL),
(41, '1/23/2018 12:46:20', 'ismukuncoro73@gmail.com', '652559', 'Kantor Upp Benete', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pelabuhan Benete kec. Maluk', '0372-6700100', 'Non-BLU', 'Sentot ismudiyanto k', '5/26/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197305261999031003', 'IIID', 'Ya', 'Kepala Kantor', 'SK. 969 tahun 2017', '9/27/2017', '7/7/2010', 'KPA merangkap PPK', NULL),
(42, '1/23/2018 14:30:20', 'mulawansari168@gmail.com', '008800', 'Kejaksaan Negeri Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jalan manggis no 7', '0371-21014', 'Non-BLU', 'LIS MULAWANSARI', '3/16/1979', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197903161999032001', 'IIIB', 'Tidak', '', 'KEP-IV-418/C.4/07/2016', '7/11/2016', '7/11/2016', 'Bendahara Pengeluaran', NULL),
(43, '1/23/2018 14:38:43', 'elvira.herman@yahoo.co.id', '008800', 'KEJAKSAAN NEGERI SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan manggis no 7', '0371-21014', 'Non-BLU', 'ELVIRA HERMAN', '4/14/1995', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '199504142014032001', 'IIA', 'Tidak', '', 'KEP-IV-418/C.4/07/2016', '7/11/2016', '7/11/2016', 'Bendahara Penerimaan', NULL),
(44, '1/23/2018 14:57:48', 'davitmaro@gmail.com', '008800', 'KEJAKSAAN NEGERI SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan manggis No 7', '0371-21014', 'Non-BLU', 'GERMAN DAVIT KAPITAN', '12/30/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196512301992031003', 'IIIB', 'Ya', 'KAUR PERLENGKAPAN', 'KEP-04/P.2.13/Cp.2/01/2018', '1/2/2018', '1/2/2018', 'PPK', NULL),
(45, '1/23/2018 15:10:43', 'kejarisbw@yahoo.com', '008800', 'KEJAKSAAN NEGERI SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Manggis no 7', '0371-21014', 'Non-BLU', 'PARYONO', '7/21/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196506211991031002', 'IVA', 'Ya', 'KEPALA KEJAKSAAN NEGERI SUMBAWA', 'KEP-IV-352/C/06/2016', '6/15/2016', '6/15/2016', 'KPA merangkap PPSPM', NULL),
(46, '1/24/2018 8:52:28', 'kantor.upp.bnt.@gmail.com', '652559', 'Kantor upp benete', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pelabuhan benete kec. Maluk', '0372-6700100', 'Non-BLU', 'Sentot ismudiyanto k', '5/26/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197307261999031003', 'IIID', 'Ya', 'Kepala kantor', 'Kp. 37 tahun 2017', '9/22/2017', '2/11/2010', 'KPA merangkap PPK', NULL),
(47, '1/24/2018 8:56:31', 'stakabadas@gmail.com', '567741', 'Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Pelabuhan Badas No 1 Sumbawa Besar', '0371-2629152', 'Non-BLU', 'Darsiah', '10/9/1983', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198309102005012001', 'IIC', 'Tidak', '', '467/Kpts/KU.010/8/2017', '3/8/2017', '1/1/2013', 'Bendahara Pengeluaran', NULL),
(48, '1/24/2018 13:12:35', 'dmpdksb@gmail.com', '350342', 'Dinas Pembnerdayaan Masyarakat dan Desa Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Bungkarno Komplek Kemutar Telu Center Taliwang', '0372-8281829', 'Non-BLU', 'Saripudin', '3/11/1937', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197303112007011023', 'IIIA', 'Tidak', '', 'Nomor 16.1', '4/17/2017', '1/1/2013', 'Bendahara Pengeluaran', NULL),
(49, '1/24/2018 14:27:26', 'ariefrahman1080@gmail.com', '288482', 'bandar udara sultan m kaharuddin', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jl.garuda no 41', '0371 21792', 'Non-BLU', 'ARIF RAHMAN', '10/1/1980', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198010012009121002', 'IIB', 'Tidak', '', 'KU.004/673/XII/SWQ-2017', '12/22/2017', '1/2/2018', 'Bendahara Penerimaan', NULL),
(50, '1/24/2018 15:02:33', 'rupbasansumbawa@gmail.com', '653417', 'Rumah penyimpanan benda sitaan negara sumbawa besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Ki Hajar Dewantara No.12 Sumbawa Besar', '0371-625109', 'Non-BLU', 'Sudirman, A.Md.IP.,SH', '5/3/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197305031996031001', 'IIID', 'Ya', 'Kepala Rupbasan Sumbawa Besar', 'M.HH-162.KU.03.03 Tahun 2016', '12/7/2016', '10/16/2015', 'KPA', NULL),
(51, '1/24/2018 15:11:54', 'rupbasansumbawa@gmail.com', '653417', 'Rupbasan Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Ki Hajar Dewantara No.12 Sumbawa Besar', '0372-625109', 'Non-BLU', 'Moh. Zainul Ahzan', '1/29/1984', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198401292010121001', 'IIIA', 'Tidak', '', 'W21.ERSB-149-KU.03.03 TAHUN 2017', '12/29/2017', '12/29/2017', 'PPK', NULL),
(52, '1/24/2018 15:18:27', 'rupbasansumbawa@gmail.com', '653417', 'Rupbasan Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Ki Hajar Dewantara No.12 Sumbawa Besar', '0371-625109', 'Non-BLU', 'Pancawati, SH', '9/28/1972', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197209291994032001', 'IIIC', 'Ya', 'Kasubsi Administrasi dan Perawatan', 'W21.ERSB-149-KU.03.03 TAHUN 2017', '12/29/2017', '8/21/2014', 'PPSPM', NULL),
(53, '1/24/2018 15:24:14', 'adiekeputran@gmail.com', '655530', 'KPP Pratama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 70-72', '0371 626393', 'Non-BLU', 'Fan Adie Keputran', '8/29/1991', 'Laki-laki', 'Diploma I/II/III', 'PNS', '199108292014111001', 'IIC', 'Tidak', '', 'KEP-41/WPJ.31/KP.05/2017', '2/6/2017', '2/1/2017', 'Bendahara Pengeluaran', NULL),
(54, '1/24/2018 15:25:35', 'rupbasansumbawa@gmail.com', '653417', 'Rupbasan Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Ki Hajar Dewantara No.12 Sumbawa Besar', '0371-625109', 'Non-BLU', 'I Wayan Suryanita', '6/24/1981', 'Laki-laki', 'Diploma I/II/III', 'PNS', '198106242009121004', 'IID', 'Tidak', '', 'W21.ERSB-149.KU.03.03 TAHUN 2017', '12/29/2017', '11/1/2011', 'Bendahara Pengeluaran', NULL),
(55, '1/24/2018 15:39:37', 'glassfatah@gmail.com', '636249', 'KP2KP Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl Sutan Syahrir no.46 taliwang', '08221000121', 'Non-BLU', 'Irwan Fatahillah', '7/14/1985', 'Laki-laki', 'Diploma I/II/III', 'PNS', '198507142006021002', 'IIC', 'Tidak', '', 'Bnt-00444/038/2016', '4/1/2016', '5/8/2017', 'Bendahara Pengeluaran', NULL),
(56, '1/24/2018 15:55:27', 'syamsi07triputra@gmail.com', '689838', 'Badan Narkotika Nasional Kabupaten Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Tenaga Bertong Taliwang', '0372-82541', 'Non-BLU', 'Eka sari dewi', '7/8/1987', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198707082006042005', 'IIC', 'Tidak', '', 'Kep/03/I/2018/BNNK-SB', '1/3/2018', '3/1/2017', 'Bendahara Pengeluaran', NULL),
(57, '1/24/2018 16:40:54', 'humaskpuksb@gmail.com', '658241', 'Kpu kabupaten sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan raya telaga bertong', '0372-81788', 'Non-BLU', 'Iwan kurniawan', '7/13/1976', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197607132009021003', 'IIIC', 'Ya', 'Kasubbag teknis penyelenggara & hupmas', '01/HK.03.2-Kpt/5207/I/2018', '1/10/2018', '1/10/2018', 'PPK', NULL),
(58, '1/24/2018 16:44:44', 'umumksb2016@gmail.com', '658241', 'KPU KABUPATEN SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Taliwang', '0372-81788', 'Non-BLU', 'Suraiyah', '8/28/1960', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196008281984032007', 'IVB', 'Ya', 'Kuasa pengguna Anggaran /sekretaris', '01/HK.03.2/Kpt/5207/Sek-Kab/I/2018', '1/10/2018', '1/1/2018', 'KPA', NULL),
(59, '1/24/2018 16:46:22', 'nonk.fiky@gmail.com', '099883', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Garuda, No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Husnul Fikri', '6/25/1987', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198706252011011006', 'IIIB', 'Tidak', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran', NULL),
(60, '1/24/2018 16:49:57', 'bps5204@bps.go.id', '429326', 'Badan pusat statistik kab. sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jl. durian no 70', '0371-21047', 'Non-BLU', 'yudi wahyudin', '4/15/1980', 'Laki-laki', 'Magister', 'PNS', '198004152003121001', 'IVA', 'Ya', 'kepala seksi statistik sosial', '001/KPA/2018', '1/2/2018', '5/1/2017', 'PPK', NULL),
(61, '1/24/2018 16:52:57', 'novanputra@gmail.com', '099883', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Garuda, No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Novan Pujimahaputra', '11/18/1985', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198511182015031001', 'IIIA', 'Tidak', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Penerimaan', NULL),
(62, '1/24/2018 16:55:45', 'nonk.fiky@gmail.com', '099884', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Husnul Fikri', '6/25/1987', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198706252011011006', 'IIIB', 'Tidak', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Pengeluaran', NULL),
(63, '1/24/2018 16:57:06', 'pnsumbawabesar13@gmail.com', '099883', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Garuda, No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196512311987031006', 'IIID', 'Ya', 'Sekretaris', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK', NULL),
(64, '1/24/2018 16:59:12', 'novanputra@gmail.com', '099884', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda No. 105 Sumbawa Besar', '0371-21531', 'Non-BLU', 'Novan Puji Mahaputra', '11/18/1985', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198511182015031001', 'IIIA', 'Tidak', '', 'W25-U2/17/KU.01/I/2018', '1/2/2018', '1/2/2018', 'Bendahara Penerimaan', NULL),
(65, '1/24/2018 17:01:05', 'pnsumbawabesar13@gmail.com', '099883', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Garuda, No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Amran', '2/23/1964', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196402231985031005', 'IIIC', 'Ya', 'Kepala Sub Bagian Umum dan Keuangan', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'PPSPM', NULL),
(66, '1/24/2018 17:03:46', 'pnsumbawabesar13@gmail.com', '099884', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196512311987031006', 'IIID', 'Ya', 'Sekretaris', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK', NULL),
(67, '1/24/2018 17:06:43', 'pnsumbawabesar13@gmail.com', '099884', 'Pengadilan Negeri Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda No. 105, Sumbawa Besar', '0371-21531', 'Non-BLU', 'Amran', '2/23/1964', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196402231985031005', 'IIIC', 'Ya', 'Kasubag Umum dan Keuangan', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'PPSPM', NULL),
(68, '1/24/2018 17:38:25', 'suffochurt@gmail.com', '287651', 'Kantor Kesyahbandaran dan Otoritas pelabuhan Badas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pelabuhan Badas', '0371-2629106', 'Non-BLU', 'Fitriyadi Prasong', '06/05/1989', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198905062010121008', 'IIB', 'Tidak', '', 'KU. 706/1/2/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'Bendahara Pengeluaran', NULL),
(69, '1/24/2018 19:54:51', 'herlinsamallo83@gmail.com', '437350', 'Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln.Garuda no.43 Sumbawa Besar', '0371-21859', 'Non-BLU', 'Herlinna Navatilova Samallo', '30/11/2018', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198311302012122004', 'IID', 'Tidak', '', 'KU.403/322/SBW/XII/2017', '20/12/2018', '01/01/2014', 'Bendahara Pengeluaran', NULL),
(70, '1/25/2018 9:07:00', 'stakabas@gmail.com', '567741', 'Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pelabuhan Laut Badas No.1 Sumbawa Besar', '0371-2629152', 'Non-BLU', 'Muhammad Ridwan', '06/07/1960', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196007061983021001', 'IIIC', 'Ya', 'Kepala Urusan Tata Usaha', '467/Kpts/KU.010/8/2017', '03/08/2017', '27/07/2008', 'PPSPM', NULL),
(71, '1/25/2018 9:22:01', 'stakabadas@gmail.com', '567741', 'SKP Kelas I Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln.Pelabuhan laut badas No.01', '0371-2629152', 'Non-BLU', 'Harniwati', '21/08/1985', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198508212005012002', 'IIC', 'Tidak', '', 'Nomor:09/Kpts/KU.010/01/2018', '02/01/2018', '01/01/2013', 'Bendahara Penerimaan', NULL),
(72, '1/25/2018 9:23:12', 'stakabadas@gmail.com', '567741', 'Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pelabuhan Laut Badas No. 1 Sumbawa Besar', '0371-2629151', 'Non-BLU', 'Ida Bagus Putu Raka Ariana', '25/12/1966', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196612251993031001', 'IVA', 'Ya', 'Kepala Stasiun Karantina Pertanian Kelas I Sumbawa Besar', '467/Kpts/KU.010/8/2017', '03/08/2017', '03/07/2017', 'KPA merangkap PPK', NULL),
(73, '1/25/2018 13:53:01', 'spanntb.420001@gmail.com', '420001', 'Dipa dirjen bimas islam kemenag sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan durian no. 72 kel. Umasima kec. Sumbawa kab. Sumbawa', '0371-21299', 'Non-BLU', 'Muhammad firdaua', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9C/KK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2016', 'PPK', NULL),
(74, '1/25/2018 15:24:10', 'spanntb_420001@gmail.com', '420001', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Kepala Kantor', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA', NULL),
(75, '1/25/2018 15:27:48', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Durian 72', '0371-22524', 'Non-BLU', 'Taufikurrahman', '01/04/1972', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197204012007011026', 'IIC', 'Tidak', '', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '01/01/2014', 'Bendahara Pengeluaran', NULL),
(76, '1/25/2018 15:32:12', 'spanntb.420001@gmail.com', '420000', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK', NULL),
(77, '1/25/2018 15:38:42', 'spanntb.420001@gmail.com', '420001', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubbag TU', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'PPSPM', NULL),
(78, '1/25/2018 15:43:52', 'spanntb.420001@gmail.com', '420001', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Ardi Suzami', '29/03/1982', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198203292006041002', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2014', 'Bendahara Pengeluaran', NULL),
(79, '1/25/2018 15:46:15', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Durian 72', '0371-22524', 'Non-BLU', 'Drs. H. Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Kepala Kantor Agama Kab. Sumbawa', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '30/08/2017', 'KPA', NULL),
(80, '1/25/2018 15:52:30', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Durian72', '0371-22524', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubag TU', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '30/08/2017', 'PPSPM', NULL),
(81, '1/25/2018 15:54:33', 'spanntb.420000@gmail.com', '420000', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa Besar', '0371-21299', 'Non-BLU', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Drs. H. Sukri', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA', NULL),
(82, '1/25/2018 16:04:35', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Durian 72', '0371-22524', 'Non-BLU', 'Abdul Kadir', '09/02/1974', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197402092007101001', 'IIIB', 'Tidak', '', 'B.9/Kk.19.04/KP.00/1/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran Pembantu', NULL),
(83, '1/25/2018 16:06:16', 'spanntb.420000@gmail.com', '420000', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa Besar', '0371-21299', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubag TU', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM', NULL),
(84, '1/25/2018 16:22:02', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Durian 72', '0371-22524', 'Non-BLU', 'Emi Wasiati', '19/05/1969', 'Perempuan', 'Diploma I/II/III', 'PNS', '196905192005012002', 'IIIA', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/1/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran Pembantu', NULL),
(85, '1/25/2018 16:28:37', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Durian 72', '0371-22524', 'Non-BLU', 'Fadlun', '02/02/1973', 'Laki-laki', 'Diploma I/II/III', 'PNS', '197302021997031005', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/1/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran Pembantu', NULL),
(86, '1/25/2018 16:32:38', 'spanntb.420000@gmail.com', '420000', 'Kantor Kementerian Agama Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197506062005011002', 'IID', 'Tidak', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2010', 'Bendahara Pengeluaran', NULL),
(87, '1/25/2018 16:32:38', 'spanntb.420005@gmail.com', '420005', 'Kantor Kementerian Agama Kab.Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197506062005011002', 'IID', 'Tidak', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2010', 'Bendahara Pengeluaran', NULL),
(88, '1/25/2018 16:35:56', 'kemenagsumbawa@yahoo.co.id', '420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Durian 72', '0371-22524', 'Non-BLU', 'Samsudin Jabar', '31/12/1967', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196731121993031028', 'IIIB', 'Ya', 'Pelaksana', 'B.9/Kk.19.04/KP.00/1/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran Pembantu', NULL),
(89, '1/25/2018 17:09:07', 'spanntb.420005@gmail.com', '420005', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Kepala kantor kementerian agama kab. Sumbawa', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA', NULL),
(90, '1/25/2018 17:22:10', 'spanntb.420005@gmail.com', '420005', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubag TU', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/01/2017', 'PPSPM', NULL),
(91, '1/25/2018 18:23:54', 'spanntb.420004@gmail.com', '420004', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197506062005011002', 'IID', 'Tidak', '', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2010', 'Bendahara Pengeluaran', NULL),
(92, '1/25/2018 18:35:07', 'spanntb.420004@gmail.com', '420004', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Kepala kantor kementerian agama kab. Sumbawa', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2016', 'KPA', NULL),
(93, '1/25/2018 18:45:19', 'spanntb.420004@gmail.com', '420004', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubag TU', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM', NULL),
(94, '1/25/2018 18:53:42', 'spanntb.420003@gmail.com', '420003', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197506062005011002', 'IID', 'Tidak', '', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2010', 'Bendahara Pengeluaran', NULL),
(95, '1/25/2018 19:52:34', 'spanntb.420003@gmail.com', '420003', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196009241998031001', 'IIID', 'Ya', 'Kepala kantor kementerian agama kab. Sumbawa', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA', NULL),
(96, '1/25/2018 20:02:13', 'spanntb.420003@gmail.com', '420003', 'Kantor Kementerian Agama kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian No. 72 Sumbawa besar', '0371-21299', 'Non-BLU', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196010281983031004', 'IIID', 'Ya', 'Kasubag TU', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM', NULL),
(97, '1/26/2018 7:11:32', 'abdullatief100668@gmail.com', '553629', 'Madrasah Tsanawiyah Negeri Empang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Desa Bunga Eja', '0371-6191031', 'Non-BLU', 'ABDUL LATIEF', '10/06/1968', 'Laki-laki', 'Magister', 'PNS', '196806101997031003', 'IVA', 'Tidak', '', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'KPA', NULL),
(98, '1/26/2018 7:31:43', 'muksinshien8@gmail.com', '553629', 'Madrasah Tsanawiyah Negeri Empang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Desa Bunga Eja', '0371-6191031', 'Non-BLU', 'MUKSIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196812311993031031', 'IIIC', 'Ya', 'PPSPM', '69/Kk.19.04/01/2018', '08/01/2018', '08/01/2018', 'PPSPM', NULL),
(99, '1/26/2018 7:39:26', 'mtsnempang_01@yahoo.co.id', '553629', 'Madrasah Tsanawiyah Negeri Empang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Desa Bunga Eja', '0371-6191031', 'Non-BLU', 'NURHIDAYATI', '03/06/1982', 'Perempuan', 'Diploma I/II/III', 'PNS', '198206032005012003', 'IID', 'Ya', 'Bendahara Pengeluaran', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(100, '1/26/2018 8:55:47', 'stamet_sbw@yahoo.co.id', '437350', 'STASIUN METEOROLOGI SULTAN MUHAMMAD KAHARUDDIN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda No. 43 Sumbawa Besar NTB', '0371-21859', 'Non-BLU', 'Umam Syifaul qolby', '13/04/1993', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '199304132013121001', 'IIA', 'Tidak', '', 'No.SK.01/KP.021/KB/BMKG-2016', '01/01/2018', '01/01/2018', 'PPSPM', NULL),
(101, '1/26/2018 8:56:49', 'polresksb@yahoo.co.id', '665400', 'Polres Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Telaga Bertong Taliwang', '0372-81007', 'TNI/POLRI', 'DWI SETIONO', '23/12/1976', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'TNI/POLRI', '76120526', 'IIF', 'Ya', 'KASI KEU', 'Sprin/ 40 / I / 2018', '09/01/2018', '28/12/2015', 'Bendahara Pengeluaran', NULL),
(102, '1/26/2018 9:05:13', 'kupp_benete@dephub.go.id', '652559', 'UNIT PENYELENGGARA PELABUHAN BENETE', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pelabuhan Benete, Kecamatan Maluk - NTB', '0372-6700100', 'Non-BLU', 'FRENGKY MULOKO', '12/09/1990', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '199009122010121002', 'IIB', 'Tidak', '', 'KU. 706/5/9/UPP.BNT-17', '20/12/2017', '01/01/2018', 'PPSPM', NULL),
(103, '1/26/2018 9:49:07', 'man3.sumbawa@yahoo.co.id', '603870', 'MAN 3 Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Merdeka Empang', '0371-6191085', 'Non-BLU', 'Drs. AKHYAR', '31/12/1967', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196712311993031024', 'IVA', 'Tidak', '', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '02/01/2018', '13/11/2017', 'PPK', NULL),
(104, '1/26/2018 13:20:59', 'bnnk.sumbawabarat@gmail.com', '689838', 'Badan Narkotika Nasional Kabupaten Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan telaga bertong taliwang', '0372-82541', 'Non-BLU', 'Mairudin', '08/05/1974', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197405081996031003', 'IIIC', 'Ya', 'Kasubbag Umum', 'KEP/004/I/2018/BNNK', '02/01/2018', '01/03/2017', 'PPSPM', NULL),
(105, '1/26/2018 13:53:11', 'bps5207@bps.go.id', '668601', 'BADAN PUSAT STATISTIK KABUPATEN SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. PENDIDIKAN NO,- TELAGA BERTONG TALIWANG', '0372-81813', 'Non-BLU', 'I Gusti Ayu Nyoman Sawitri', '07/04/1987', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '198704072009122004', 'IIIC', 'Ya', 'Kepala Seksi Statistik Produksi', '001/KPG Tahun 2018', '02/01/2018', '16/01/2017', 'PPK', NULL),
(106, '1/26/2018 14:18:40', 'umumksb2016@gmail.com', '658241', 'Kpu Kabupaten Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Taliwang Sumbawa Barat', '0372-81788', 'Non-BLU', 'Eva Febriany', '01/02/1981', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '198102012009122004', 'IIIC', 'Ya', 'Kasubbag umum keuangan dan logistik', '01/HM.03.2-Kpt/5207/Sek-Kab/I/2018', '10/01/2018', '01/01/2015', 'PPSPM', NULL),
(107, '1/26/2018 14:19:38', 'bnnk.sumbawabarat@gmail.com', '689838', 'Badan Narkotika Nasional Kabupaten Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '0372-82541', 'Non-BLU', 'Jolmadi', '09/07/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'TNI/POLRI', '72070730', 'IVB', 'Ya', 'Kepala BNNK SB', 'KEP/308/X/Ka/KU/2016/BNN', '11/10/2016', '11/10/2016', 'KPA merangkap PPK', NULL),
(108, '1/26/2018 14:30:59', 'mtsnempang_01@yahoo.co.id', '553629', 'Madrasah Tsanawiyah Negeri Empang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Desa Bunga Eja Kec.Empang', '0371-6191031', 'Non-BLU', 'ABDUL LATIEF', '10/06/1968', 'Laki-laki', 'Magister', 'PNS', '196806101997031003', 'IVA', 'Tidak', '', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'PPK', NULL),
(109, '1/26/2018 14:37:42', 'etrilestari@gmail.com', '403664', 'KPPN SUMBAWA BESAR PENGELOLA PENYALURAN DANA ALOKASI KHUSUS FISIK DAN DANA DESA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No 107', '0371-21224', 'Non-BLU', 'Ermina Tri Lestari', '24/04/1966', 'Perempuan', 'Magister', 'PNS', '196604241988032001', 'IVA', 'Ya', 'Kepala Kantor', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'KPA', NULL),
(110, '1/26/2018 14:42:55', 'wiraewi@gmail.com', '403664', 'KPPN SUMBAWA BESAR PENGELOLA PENYALURAN DANA ALOKASI KHUSUS FISIK DAN DANA DESA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No 107', '0371-21224', 'Non-BLU', 'I Nengah Putu Wiranata', '25/01/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196501251985031004', 'IIID', 'Ya', 'Kepala Seksi Bank', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'PPK', NULL),
(111, '1/26/2018 14:44:28', 'kabsumbawabarat@kemenag.go.id', '664077', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan Telaga Bertong', '0372-81193', 'Non-BLU', 'Lalu Suhaili Fathnah', '31/12/2018', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197112311997031006', 'IIID', 'Ya', 'Kepala Sub Bagian Tata Usaha', '02/2018', '02/01/2018', '02/01/2018', 'PPSPM', NULL),
(112, '1/26/2018 14:46:13', 'pudienkick@gmail.com', '403664', 'KPPN SUMBAWA BESAR PENGELOLA PENYALURAN DANA ALOKASI KHUSUS FISIK DAN DANA DESA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No 107', '0371-21224', 'Non-BLU', 'Saripudin', '28/02/1980', 'Laki-laki', 'Magister', 'PNS', '198002282001121003', 'IIIC', 'Ya', 'Kepala Seksi Vera & KI', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'PPSPM', NULL),
(113, '1/26/2018 15:00:23', 'kabsumbawabarat@kemenag.go.id', '664077', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan Telaga Bertong Taliwang', '0372-81193', 'Non-BLU', 'Igfar', '04/11/1969', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196904112002121002', 'IIID', 'Ya', 'Penyelenggara Syariah', '01/2018', '02/01/2018', '02/01/2018', 'PPK', NULL),
(114, '1/26/2018 15:09:28', 'kabsumbawabarat@kemenag.go.id', '664077', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan Telaga Bertong Taliwang', '0372-81193', 'Non-BLU', 'Mardiana', '10/01/1974', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197401102006042001', 'IIC', 'Tidak', '', '03/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(115, '1/26/2018 15:17:15', 'kabsumbawabarat@kemenag.go.id', '664078', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan Telaga Bertong', '0372-81193', 'Non-BLU', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', 'PNS', '196010271990031002', 'IVB', 'Ya', 'Kepala Kantor', '20/2014', '21/01/2014', '01/01/2005', 'KPA', NULL),
(116, '1/26/2018 15:22:34', 'kabsumbawabarat@kemenag.go.id', '664078', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan Telaga Bertong Taliwang', '0372-81193', 'Non-BLU', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197112311990031006', 'IIID', 'Ya', 'kepala Sub Bagian Tata Usaha', '05/2018', '02/01/2018', '02/01/2018', 'PPSPM', NULL),
(117, '2/7/2018 8:16:04', 'mtsn.taliwang@yahoo.com', '575087', 'Madrasah Tsanawiyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pondok Pesantren no. 28 Menala, Taliwang, Sumbawa Barat', '0372 8283002', 'Non-BLU', 'Wahyuni Utami', '05/11/1981', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198111052009012004', 'IIB', 'Tidak', '', 'B-004/MTs.19.24/PP.00.05/01/2018', '04/01/2018', '02/01/2012', 'Bendahara Pengeluaran', NULL),
(118, '2/7/2018 8:16:23', 'bps5207@bps.go.id', '668601', 'BPS KAB. SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. PENDIDIKAN NO.269 KEL. TELAGA BERTONG TLIWANG', '0372-81813', 'Non-BLU', 'Muhammad Ahyar', '31/12/1966', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19661231 199212 1 001', 'IVB', 'Ya', 'Kepala BPS Kabupaten Sumbawa Barat', '370/PA/2017', '27/11/2017', '01/02/2009', 'KPA', NULL),
(119, '2/7/2018 8:18:12', 'keuangan.kp2kptaliwang@gmail.com', '636249', 'KP2KP TALIWANG', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. SUTAN SYAHRIR NO.46 TALIWANG SUMBAWA BARAT', '3728283211', 'Non-BLU', 'Tony ARyanto', '17/09/1977', 'Laki-laki', 'Magister', 'PNS', '197709171997031001', 'IIIC', 'Ya', 'Kepala Kantor', '-', '01/02/2017', '01/02/2017', 'KPA merangkap PPK', NULL),
(120, '2/7/2018 8:19:08', 'bapassumbawa@gmail.com', '653182', 'Balai Pemasyarakatan Kelas II Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Jurusan Sumbawa-Bima KM.07 Sumbawa Besar', '3712629132', 'Non-BLU', 'M. Saleh', '31/12/1964', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196412311987031001', 'IIID', 'Ya', 'Kepala Balai Pemasyarakatan Kelas II Sumbawa Besar', 'W21.EBSB.KU.03.03-05', '02/01/2018', '06/01/2017', 'KPA merangkap PPK', NULL),
(121, '2/7/2018 8:19:41', 'adpelbadas@yahoo.co.id', '287651', 'Kantor Kesyahbandaran dan Otoritas Pelabuhan Badas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pelabuhan Badas', '0371-2629106', 'Non-BLU', 'Evi Susanti', '30/01/1972', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197201301997032002', 'IIIB', 'Tidak', '', 'KU.706/1/1/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'PPSPM', NULL),
(122, '2/7/2018 8:24:01', 'keuangan.kp2kptaliwang@gmai.com', '636249', 'KP2KP TALIWANG', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL SUTAN SYAHRIR NO.46 TALIWANG SUMBAWA BARAT', '3728283211', 'Non-BLU', 'Sulistiyono', '02/04/1983', 'Laki-laki', 'Diploma I/II/III', 'PNS', '198304022003121006', 'IID', 'Tidak', '', '-', '01/01/2017', '01/01/2017', 'PPSPM', NULL);
INSERT INTO `t_gabungan` (`idData`, `timestamp`, `email`, `kodesatker`, `namasatker`, `prov`, `kppn`, `alamat`, `telepon`, `jenissatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `jenispegawai`, `nip`, `gol`, `rangkapjab`, `jabstr`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`, `status`) VALUES
(123, '2/7/2018 8:26:40', 'mtsn.taliwang@yahoo.com', '575087', 'Madrasah Tsanawiyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pondok Pesantren no. 28 Menala, Taliwang, Sumbawa Barat', '0372 8283002', 'Non-BLU', 'Budi Syarkoni', '26/05/1977', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197705262006041002', 'IIIC', 'Ya', 'Kepala Tata Usaha', 'B-003/MTs.19.24/PP.00.05/01/2018', '03/01/2018', '01/02/2015', 'PPSPM', NULL),
(124, '2/7/2018 8:29:40', 'bapassumbawa@gmail.com', '653182', 'Balai Pemasyarakatan Kelas II Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Jurusan Sumbawa-Bima KM.07 Sumbawa Besar', '371262913', 'Non-BLU', 'Eliya Syam', '21/01/1972', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197201211990032001', 'IIIB', 'Ya', 'Kepala Urusan Tata Usaha', 'W21.EBSB.KU.03.03-05', '02/01/2018', '06/01/2017', 'PPSPM', NULL),
(125, '2/7/2018 8:35:23', 'mtsn.taliwang@yahoo.com', '575087', 'Madrasah Tsanawiyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pondok Pesantren no. 28 Menala, Taliwang, Sumbawa Barat', '0372 8283002', 'Non-BLU', 'Jalaludin', '31/12/1978', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197812312002121002', 'IVA', 'Ya', 'Kepala Madrasah', 'B-003/MTs.19.24/PP.00.05/01/2018', '03/01/2018', '01/09/2017', 'KPA merangkap PPK', NULL),
(126, '2/7/2018 8:41:53', 'adpelbadas@yahoo.co.id', '287651', 'Kantor Kesyahbandaran dan Otoritas Pelabuhan Badas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pelabuhan Badas', '0371-2629106', 'Non-BLU', 'Suaib Laudu', '23/05/1986', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198605232006041001', 'IIB', 'Tidak', '', 'KU.706/1/2/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'Bendahara Penerimaan', NULL),
(127, '2/7/2018 8:44:31', 'kantah_ksb@yahoo.co.id', '667016', 'KANTOR PERTANAHAN KABUPATEN SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. TELAGA BERTONG TALIWANG - KSB', '0372-81859', 'Non-BLU', 'IWAN PURNAWAN', '12/09/1970', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197009121997031002', 'IIID', 'Ya', 'PPSPM', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'PPSPM', NULL),
(128, '2/7/2018 8:50:00', 'kantah_ksb@yahoo.co.id', '667016', 'KANTOR PERTANAHAN KABUPATEN SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. TELAGA BERTONG TALIWANG - KSB', '0372-81859', 'Non-BLU', 'I NYOMAN NELSON GIRI', '14/04/1966', 'Laki-laki', 'Magister', 'PNS', '196604141992031014', 'IVA', 'Ya', 'KPA', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'KPA merangkap PPK', NULL),
(129, '2/7/2018 8:51:09', 'kantah_ksb@yahoo.co.id', '667016', 'KANTOR PERTANAHAN KABUPATEN SUMBAWA BARAT', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Telaga Bertong Taliwang-KSB', '0372-81859', 'Non-BLU', 'FERDIAN SETYO WIBOWO', '31/01/1984', 'Laki-laki', 'Diploma I/II/III', 'PNS', '198401312009031002', 'IIIA', 'Ya', 'BENDAHARA PENGELUARAN', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(130, '2/7/2018 15:27:28', 'pataliwanginfo@gmail.com', '682274', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283189', 'Non-BLU', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196912311995031003', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK', NULL),
(131, '2/7/2018 15:27:28', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283189', 'Non-BLU', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196912311995031003', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK', NULL),
(132, '2/7/2018 15:33:34', 'pataliwanginfo@gmail.com', '682274', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang', '8283190', 'Non-BLU', 'SARUI', '31/12/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197212312001121006', 'IIID', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'PPSPM', NULL),
(133, '2/7/2018 15:33:34', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang', '8283190', 'Non-BLU', 'SARUI', '31/12/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197212312001121006', 'IIID', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'PPSPM', NULL),
(134, '2/7/2018 15:41:04', 'pataliwanginfo@gmail.com', '682274', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283190', 'Non-BLU', 'SYAHABUDDIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196812311993031007', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'Bendahara Pengeluaran', NULL),
(135, '2/7/2018 15:41:04', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283190', 'Non-BLU', 'SYAHABUDDIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196812311993031007', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'Bendahara Pengeluaran', NULL),
(136, '2/8/2018 6:47:15', 'muhammadsubhan84@yahoo.co.id', '664078', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Udin. Syafruddin', '05/03/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197203052005011004', 'IIID', 'Ya', 'Kepala Seksi Bimbingan Masyarakat Islam', '04/2018', '02/01/2018', '02/01/2018', 'PPK', NULL),
(137, '2/8/2018 6:53:19', 'muhammadsubhan84@yahoo.co.id', '664078', 'Kantor Kementerian Agama Kab. Sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Sahrul', '01/01/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196801012008011053', 'IIIB', 'Tidak', '', '06/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(138, '2/8/2018 6:58:18', 'muhammadsubhan84@yahoo.co.id', '664079', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', 'PNS', '196010271990031002', 'IVB', 'Ya', 'Kepala Kantor', '20/2014', '21/01/2018', '01/02/2018', 'KPA', NULL),
(139, '2/8/2018 7:03:32', 'muhammadsubhan84@yahoo.co.id', '664079', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197112311997031006', 'IIID', 'Ya', 'Kepala Sub Bagian Tata Usaha', '08/2018', '02/01/2018', '02/01/2018', 'PPSPM', NULL),
(140, '2/8/2018 7:07:56', 'muhammadsubhan84@yahoo.co.id', '664079', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Ahmad Rusli', '05/10/1966', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196610051997031001', 'IIID', 'Ya', 'Kepala Seksi Pendidikan Agama Islam', '07/2018', '02/01/2018', '02/01/2018', 'PPK', NULL),
(141, '2/8/2018 7:11:52', 'muhammadsubhan84@yahoo.co.id', '664079', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Muh. Haromain', '16/09/1985', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198509162011011011', 'IIIB', 'Tidak', '', '09/2018', '01/02/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(142, '2/8/2018 7:15:52', 'muhammadsubhan84@yahoo.co.id', '664080', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', 'PNS', '196010271990031002', 'IVB', 'Ya', 'Kepala Kantor', '20/2014', '21/01/2014', '02/01/2018', 'KPA', NULL),
(143, '2/8/2018 7:20:01', 'muhammadsubhan84@yahoo.co.id', '664080', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197112311997031006', 'IIID', 'Ya', 'Kepala Sub Bagian Tata Usaha', '011/2018', '02/01/2018', '02/01/2018', 'PPSPM', NULL),
(144, '2/8/2018 7:24:18', 'muhammadsubhan84@yahoo.co.id', '664080', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'A. Rahman Hs', '31/12/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196512311993031028', 'IIID', 'Ya', 'Kepala Seksi Penyelenggaraan Haji dan Umrah', '010/2018', '02/01/2018', '02/01/2018', 'PPK', NULL),
(145, '2/8/2018 7:27:35', 'muhammadsubhan84@yahoo.co.id', '664080', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Muh Haromain', '16/09/1985', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198509162011011011', 'IIIB', 'Tidak', '', '013/2018', '02/01/2018', '02/01/2018', 'Bendahara Pengeluaran', NULL),
(146, '2/8/2018 15:54:27', 'gscsumbawa@gmail.com', '350339', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Bungur Nomor 3 Sumbawa Besar', '0371-625004', 'Non-BLU', 'MARIYATIL', '25/03/1975', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197503252008012009', 'IIIC', 'Tidak', '', 'Bendahara Pengeluaran', '17/04/2017', '01/01/2017', 'Bendahara Pengeluaran', NULL),
(147, '2/8/2018 16:05:01', 'gscsumbawa@gmail.com', '350339', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Bungur Nomor 3 Sumbawa Besar', '0371-625004', 'Non-BLU', 'SYAMSUL BAHRI', '06/11/1971', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '197111061995031002', 'IIIC', 'Tidak', '', '20', '03/04/2017', '01/01/2017', 'PPK', NULL),
(148, '2/8/2018 16:11:50', 'gscsumbawa@gmail.com', '350339', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Bungur Nomor 3 Sumbawa Besar', '0371-625004', 'Non-BLU', 'NASRUL ANWAR', '10/10/1962', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196210101986111001', 'IIID', 'Ya', 'Kasi Pengembangan Kehidupan Sosial Budaya Masyarakat', '20', '03/04/2017', '01/01/2017', 'PPSPM', NULL),
(149, '2/8/2018 16:17:33', 'gscsumbawa@gmail.com', '350339', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Bungur Nomor 3 Sumbawa Besar', '0371-625004', 'Non-BLU', 'M IKHSAN SAFITRI', '03/06/1964', 'Laki-laki', 'Doktoral', 'PNS', '196406031987031017', 'IVC', 'Ya', 'Kepala Dinas PMD Kabupaten Sumbawa', '16,1', '17/04/2017', '01/01/2017', 'KPA', NULL),
(150, '2/8/2018 16:24:45', 'yayanmuslimin@gmail.com', '350342', 'Dinas Pemberdayaan Masyarakat dan Desa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln.bungkarno komplek kemutar telu center taliwang', '(0372)8281829', 'Non-BLU', 'Mulyadi', '31/12/1965', 'Laki-laki', 'Magister', 'PNS', '196512311986081006', 'IVC', 'Ya', 'Kepala Dinas Pemberdayaan Masyarakat dan Desa Kab. Sumbawa Barat', '16', '17/04/2017', '17/04/2017', 'KPA merangkap PPK', NULL),
(151, '2/9/2018 8:53:17', 'tukimanman19@gmail.com', '287651', 'Kantor Kesyahbandaran dan Otoritas Pelabuhan Badas', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pelabuhan Badas, Sumbawa', '0371-2629106', 'Non-BLU', 'Tukiman', '19/05/1961', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196105191987031001', 'IIID', 'Ya', 'Kepala Kantor Kesyahbandaran dan Otoritas Pelabuhan Kelas V', 'KU.706/1/1/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'KPA merangkap PPK', NULL),
(152, '2/9/2018 9:45:40', 'man2samawa@gmail.com', '603866', 'MADRASAH ALIYAH NEGERI 2 SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan 1/5 Moyo', '625250', 'Non-BLU', 'MUHAMMAD FARID WAJEDI', '19/09/1982', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '198209192005011005', 'IIC', 'Tidak', '', '440 TAHUN 2017', '30/12/2017', '01/01/2017', 'Bendahara Pengeluaran', NULL),
(153, '2/9/2018 9:52:10', 'man2samawa@gmail.com', '603866', 'MADRASAH ALIYAH NEGERI 2 SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan 1/ 5 Moyo', '625250', 'Non-BLU', 'SYAHABUDDIN', '01/06/1974', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197406011999031006', 'IVA', 'Tidak', '', '440 TAHUN 2017', '30/12/2017', '01/01/2015', 'KPA', NULL),
(154, '2/9/2018 11:01:00', 'man2samawa@gmail.com', '603866', 'MADRASAH ALIYAH NEGERI 2 SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan 1/5 Moyo', '625250', 'Non-BLU', 'H. Muhammad Jabal', '03/01/1961', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196101031994031001', 'IIIC', 'Tidak', '', '440 TAHUN 2017', '30/12/2017', '01/01/2010', 'PPSPM', NULL),
(155, '2/9/2018 13:31:42', 'man2samawa@gmail.com', '603866', 'MADRASAH ALIYAH NEGERI 2 SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pendidikan 1/5 Moyo', '625250', 'Non-BLU', 'SYAHABUDDIN', '01/06/1974', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197406011999031006', 'IVA', 'Tidak', '', '440 TAHUN 2017', '30/12/2017', '01/01/2015', 'PPK', NULL),
(156, '2/9/2018 17:52:58', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'Madrasah Aliyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pondok Pesantren No. 28 Taliwang', '3728283001', 'Non-BLU', 'Irfansyah, SE', '02/08/1982', 'Laki-laki', 'Sarjana/Diploma IV', 'Non PNS', '', '', '', 'Operator SAI', '1 TAHUN 2018', '04/06/2018', '02/06/2010', 'Bendahara Pengeluaran', NULL),
(157, '2/12/2018 12:48:34', 'yayanmuslimin@gmail.com', '350342', 'Dinas Pemberdayaan Masyarakat dan Desa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln Bung Karno Komplek KTC', '(0372)8281829', 'Non-BLU', 'Slamet Riadi', '28/04/1975', 'Laki-laki', 'Magister', 'PNS', '1975042819990211002', 'IIID', 'Ya', 'Kepala Bidang Pengembangan Partisipasi dan Kehidupan sosial budaya masyarakat', '10', '04/03/2017', '01/10/2014', 'PPSPM', NULL),
(158, '2/13/2018 9:05:28', 'bensat_ressbw@yahoo.co.id', '644946', 'Satker Polres Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Hasanuddin 105 Sumbawa Besar', '22142', 'TNI/POLRI', 'I Made Sumendra', '16/08/1961', 'Laki-laki', 'Sekolah Menegah Pertama/Sederajat dan lebih rendah', 'TNI/POLRI', '61080146', 'IIF', 'Tidak', '', 'KEP/3/I/2017', '04/01/2017', '01/05/2008', 'Bendahara Pengeluaran', NULL),
(159, '2/13/2018 9:21:15', 'ahmad_mansur78@yahoo.co.id', '644946', 'Satker Polres Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Hasanuddin 105 sumbawa Besar', '21142', 'TNI/POLRI', 'Ahmad Mansur, S.Ag', '10/12/1978', 'Laki-laki', 'Sarjana/Diploma IV', 'TNI/POLRI', '78121247', 'IVA', 'Ya', 'WAKA POLRES SUMBAWA', 'kep/3901/XI/2017', '01/11/2017', '01/11/2017', 'PPSPM', NULL),
(160, '2/13/2018 9:41:03', 'bensat_ressbw@yahoo.co.id', '644946', 'Satker Polres Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. hasanuddin 105 Sumbawa Besar', '41124', 'TNI/POLRI', 'YUSUF SUTEJO, S.ik. MT', '05/08/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'TNI/POLRI', '73080753', 'IVB', 'Ya', 'KAPOLRES SUMBAWA', 'Kep/17/III/2017', '01/03/2017', '01/03/2017', 'KPA merangkap PPK', NULL),
(161, '2/14/2018 13:58:35', 'bensa_ressbw@yahoo.co.id', '644946', 'Polres Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Hasanuddin No. 105 Sumbawa Besar', '0371-22110', 'TNI/POLRI', 'Ivan Sukamdany', '16/02/1985', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'TNI/POLRI', '85020185', 'IID', 'Tidak', '', 'KEP/04/I/2017', '04/01/2017', '12/01/2015', 'Bendahara Penerimaan', NULL),
(162, '2/20/2018 9:42:18', 'spanntb.420001@gmail.com', '420002', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK', NULL),
(163, '2/20/2018 9:42:18', 'spanntb.420001@gmail.com', '420003', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK', NULL),
(164, '2/20/2018 9:42:18', 'spanntb.420001@gmail.com', '420004', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK', NULL),
(165, '2/20/2018 9:42:18', 'spanntb.420001@gmail.com', '420005', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Durian Nomor 72', '0371-22524', 'Non-BLU', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', 'PNS', '197802232009011004', 'IIIC', 'Tidak', '', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK', NULL),
(166, '2/20/2018 9:42:18', 'muhammadsubhan84@yahoo.co.id', '664077', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan Telaga Bertong Taliwang', '37281193', 'Non-BLU', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', 'PNS', '196010271990031002', 'IVB', 'Ya', 'Kepala Kantor', '20/2014', '21/01/2018', '01/02/2018', 'KPA', NULL),
(167, '2/20/2018 10:39:44', 'swqairport@gmail.com', '288482', 'sultan m kaharuddin', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jl. garuda no 41', '0371 21792', 'Non-BLU', 'I KADEK YULI SASTRAWAN', '04/07/1976', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197607041998031001', 'IIID', 'Ya', 'kepala bandar udara', 'kp.004/673/xii/swq-2017', '31/12/2017', '02/01/2018', 'KPA', NULL),
(168, '2/20/2018 10:53:02', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'MAN TALIWANG', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pondok Pesantren No. 28 Taliwang', '3,73E+09', 'Non-BLU', 'NURHASANAH', '19/06/1974', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197406192006042001', 'IIIA', 'Tidak', 'Operator SAI', 'NOMOR 1 TAHUN 2018', '04/01/2018', '02/06/2010', 'Bendahara Pengeluaran', NULL),
(169, '2/20/2018 10:57:52', 'keuangan913@gmail.com', '655530', 'KPP Pratama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 70-72', '3,72E+08', 'Non-BLU', 'I Made Winastra', '31/12/1962', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196212311986031008', 'IIID', 'Ya', 'Kepala Sub Bagian Umum dan Kepatuhan Internal', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'PPSPM', NULL),
(170, '2/20/2018 12:43:12', 'dislutkan_kabsumbawa@gmail.com', '239055', 'Dinas Kelautan dan Perikanan Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Ki Hajar Dewantara No. 1 Sumbawa Besar', '0371-21144', 'Non-BLU', 'Muhammad Ghazali', '21/03/1982', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198203212010011017', 'IIIB', 'Ya', 'Kepala Seksi Pelestarian Sumber Daya Perikanan', '144/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'Bendahara Pengeluaran', NULL),
(171, '2/21/2018 7:01:42', 'spanntb.665400@gmail.com', '665400', 'Polres Sumbawa Barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jalan telaga bertong ksb', '37281007', 'TNI/POLRI', 'ANDY HERMAWAN', '01/06/1976', 'Laki-laki', 'Sarjana/Diploma IV', 'TNI/POLRI', '76080589', 'IVB', 'Ya', 'KAPOLRES SUMBAWA BARAT', 'Sprin/37/I/2018', '09/01/2018', '01/04/2016', 'KPA merangkap PPSPM', NULL),
(172, '2/21/2018 7:08:24', 'spanntb.665400@gmail.com', '665400', 'Polres sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jalan telaga bertong taliwang', '37281007', 'TNI/POLRI', 'ISMUDIANTO', '01/05/1969', 'Laki-laki', 'Magister', 'TNI/POLRI', '69050177', 'IVA', 'Ya', 'WAKA POLRES', 'Sprin/39/I/2018', '09/01/2018', '01/12/2017', 'PPK', NULL),
(173, '2/21/2018 7:18:32', 'spanntb.665400@gmail.com', '665400', 'Polres sumbawa barat', 'Nusa Tenggara Barat', 'Sumbawa Besar', '', '37281007', 'TNI/POLRI', 'I MADE SASTRAWAN', '31/08/1986', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'TNI/POLRI', '86080047', 'IID', 'Tidak', '', 'sprin/20/II/2018', '20/02/2018', '01/01/2018', 'Bendahara Penerimaan', NULL),
(174, '2/21/2018 11:03:06', 'keuangan913@gmail.com', '655530', 'KPP PRATAMA SUMBAWA BESAR', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JALAN GARUDA NO 70-72 KAB.SUMBAWA', '371626393', 'Non-BLU', 'DIAN AGUNG SUSANTO', '19/03/1977', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197703192002121001', 'IIID', 'Ya', 'KEPALA SEKSI PENGAWASAN DAN KONSULTASI IV', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'PPK', NULL),
(175, '2/21/2018 11:05:19', 'spanntb.498651@gmail.com', '498651', 'pelaksanaan jalan nasional wilayah 2 provinsi NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'jalan garuda no. 247 km. 7 sumbawa besar', '37122655', 'Non-BLU', 'Sudirman', '05/10/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196510052007011008', 'IIIB', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'Bendahara Pengeluaran', NULL),
(176, '2/21/2018 11:39:51', 'disos.sbw@gmail.com', '230574', 'DINAS SOSIAL KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. KEBAYAN N0 3 KEL. UMA SIMA SUMBAWA BESAR', '0371-21219', 'Non-BLU', 'TRIKARYATI', '06/11/1962', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196211061982052001', 'IVC', 'Ya', 'KEPALA DINAS SOSIAL KABUPATEN SUMBAWA', '26/HUK/2018', '08/02/2018', '27/01/2017', 'KPA', NULL),
(177, '2/21/2018 11:42:11', 'misrolia291165@gmail.com', '498651', 'Pelaksanaan jalan nasional nasional wilayah 2 provinsi NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 247 KM. 7 sumbawa besar', '37122655', 'Non-BLU', 'Misrolia', '29/11/1965', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196511292007012002', 'IIIB', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPSPM', NULL),
(178, '2/21/2018 13:14:32', 'keuangan913@gmail.com', '655530', 'KPP Pratama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No.70-72 Sumbawa', '0371-626393', 'Non-BLU', 'Janita Sunarsasi', '23/02/1969', 'Perempuan', 'Magister', 'PNS', '196902231995032001', 'IVB', 'Ya', 'Kepala Kantor', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'KPA', NULL),
(179, '2/21/2018 14:21:29', 'dislutkan_kabsumbawa@yahoo.co.id', '239055', 'Dinas Kelautan dan Perikanan Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Ki Hajar Dewantara No. 1 Sumbawa Besar', '0371-21144', 'Non-BLU', 'Dirmawan', '04/09/1965', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196509041990031012', 'IVC', 'Ya', 'Kepala Dinas Kelautan dan Perikanan Kab Sumbawa', '114/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'KPA', NULL),
(180, '2/21/2018 14:29:26', 'dislutkan_kabsumbawa@yahoo.co.id', '239055', 'Dinas Kelautan dan Perikanan Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Ki Hajar Dewantara No. 1 Sumbawa Besar', '0371-21144', 'Non-BLU', 'Rahmat Hidayat', '18/04/1973', 'Laki-laki', 'Magister', 'PNS', '197304182000031004', 'IVA', 'Ya', 'Kepala Bidang Pengembangan Sumberdaya Perikanan', '114/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'PPK', NULL),
(181, '2/21/2018 14:35:29', 'dislutkan_kabsumbawa@yahoo.co.id', '239055', 'Dinas Kelautan dan Perikanan Kabupaten Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Ki Hajar Dewantara No. 1 Sumbawa Besar', '0371-21144', 'Non-BLU', 'syahafuddin', '08/02/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '196102081988031006', 'IIIB', 'Ya', 'Kepala Seksi Jasa Kelautan', '144/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'PPSPM', NULL),
(182, '2/21/2018 14:43:17', 'imigrasi.sumbawabesar@gmail.com', '652412', 'Kantor Imigrasi Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No.131 Sumbawa Besar', '3712629050', 'Non-BLU', 'Andy Cahyono Bayuadi', '16/07/1979', 'Laki-laki', 'Magister', 'PNS', '197907162000121001', 'IIIC', 'Ya', 'Kepala Kantor Imigrasi Kelas II Sumbawa Besar', 'SEK-33.KP.03.03 TAHUN 2017', '31/08/2017', '31/08/2017', 'KPA', NULL),
(183, '2/21/2018 15:07:07', 'imigrasi.sumbawabesar@gmail.com', '652412', 'Kantor imigrasi kelas II sumbawa besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan garuda no 131 sumbawa besar', '3712619050', 'Non-BLU', 'Sulaiman', '05/08/1971', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197108051991031001', 'IIIC', 'Ya', 'Kepala urusan umum', 'No. W21.IMI.IMI.2-6794 Tahun 2017', '29/12/2017', '01/01/2018', 'PPK', NULL),
(184, '2/21/2018 15:16:45', 'imigrasi.sumbawabesar@gmail.com', '652412', 'Kantor Imigrasi Kelas II Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 131 Sumbawa Besar', '0371 6266641', 'Non-BLU', 'Edi sukriawan', '22/02/1980', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198002222000031001', 'IIIC', 'Ya', 'Kepala Urusan Keuangan', 'W21.IMI.IMI.1. 6794 -KU.03.03 TH 2017', '29/12/2017', '01/01/2016', 'PPSPM', NULL),
(185, '2/21/2018 15:23:13', 'imigrasi.sumbawabesar@gmail.com', '652412', 'Kantor imigrasi kelas II sumbawa besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan garuda no. 131 sumbawa besar', '3712629050', 'Non-BLU', 'Sulaiman', '05/08/1971', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197108051991031001', 'IIIC', 'Ya', 'Kepala urusan umum', 'No. W21.IMI.IMI.2-6794.KU.03.03 Tahun 2017', '29/12/2017', '01/01/2018', 'PPK', NULL),
(186, '2/21/2018 15:41:26', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'MAN Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pondok Pesantren No. 28 Taliwang', '3728283001', 'Non-BLU', 'Irfansyah, SE', '02/08/1982', 'Perempuan', 'Sarjana/Diploma IV', 'Non PNS', '', '', '', 'Operator SAI', '1 TAHUN 2018', '04/01/2018', '02/06/2010', 'Bendahara Pengeluaran', NULL),
(187, '2/21/2018 16:09:52', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'Madrasah Aliyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pondok Pesantren No. 28 Taliwang', '3728283001', 'Non-BLU', 'Nurhasanah, S. AP', '19/06/1974', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197406192006042001', 'IIIA', 'Ya', 'Bendahara', '1 TAHUN 2018', '04/01/2018', '02/06/2010', 'Bendahara Pengeluaran', NULL),
(188, '2/21/2018 16:11:16', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'Madrasah Aliyah Negeri Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Pondok Pesantren No. 28 Taliwang', '3728283001', 'Non-BLU', 'Zainuddin, S. Ag., M. Pd', '25/05/1974', 'Laki-laki', 'Magister', 'PNS', '197405252005011004', 'IIID', 'Ya', 'Kepala Madrasah', '1 TAHUN 2018', '04/01/2018', '21/08/2017', 'KPA merangkap PPK', NULL),
(189, '2/22/2018 8:09:57', 'imigrasi.sumbawabesar@gmail.com', '652412', 'Kantor Imigrasi Kelas II Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Garuda No.131', '3712629050', 'Non-BLU', 'Maulana Malik', '16/05/1987', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198705162009121005', 'IID', 'Tidak', '', 'W21.IMI.IMI.2-6794.KU.03.03 Tahun 2017', '29/12/2017', '04/11/2011', 'Bendahara Pengeluaran', NULL),
(190, '2/22/2018 8:45:29', 'disos.sbw@gmail.com', '230574', 'DINAS SOSIAL KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. KEBAYAN NO. 3 SUMBAWA', '0371-21219', 'Non-BLU', 'MUHAMMAD FAUZI, S.Ap', '08/01/1978', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197801082002121006', 'IIIC', 'Ya', 'KASI PENGEMBANGAN NILAI KEPAHLAWANAN', '36 TAHUN 2018', '12/02/2018', '20/02/2017', 'PPK', NULL),
(191, '2/22/2018 10:32:44', 'bc.sumbawa@gmail.com', '411404', 'KPPBC Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pelabuhan Badas, Sumbawa Besar', '2629123', 'Non-BLU', 'Rudie Bayu Widjatnoko', '19/01/1969', 'Laki-laki', 'Magister', 'PNS', '196901191989121001', 'IVA', 'Ya', 'Kepala Kantor', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'KPA', NULL),
(192, '2/22/2018 10:45:26', 'bc.sumbawa@gmail.com', '411404', 'KPPBC Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pelabuhan Badas, Sumbawa', '2629123', 'Non-BLU', 'Irwan RIyadi', '20/03/1977', 'Laki-laki', 'Magister', 'PNS', '197703201999031001', 'IIIB', 'Ya', 'Kepala Subbagian Umum', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'PPSPM', NULL),
(193, '2/22/2018 10:49:40', 'bc.sumbawa@gmail.com', '411404', 'KPPBC Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Pelabuhan Badas, Sumbawa', '2629123', 'Non-BLU', 'Arief Ferdian Syah', '16/08/1975', 'Laki-laki', 'Magister', 'PNS', '197508161996021001', 'IIIC', 'Ya', 'Kepal Seksi Penindakan dan Penyidikan', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'PPK', NULL),
(194, '2/22/2018 11:10:09', 'pjnwil2ntb@gmail.com', '498651', 'Pelaksanaan Jalan Nasional Wilayah II Provinsi NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Garuda No. 247 Km 7 Sumbawa Besar', '0371 2629330', 'Non-BLU', 'MUSTAFA', '22/09/1972', 'Laki-laki', 'Magister', 'PNS', '197209222007101001', 'IIIB', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPK', NULL),
(195, '2/22/2018 11:21:57', 'pjnwil2ntb@gmail.com', '498651', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JALAN GARUDA 247 KM 7 SUMBAWA BESAR', '0371 2629330', 'Non-BLU', 'SUPRAPTO', '06/08/1970', 'Laki-laki', 'Magister', 'PNS', '197008062005021001', 'IIIC', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPK', NULL),
(196, '2/22/2018 11:25:33', 'pjnwil2ntb@gmail.com', '498651', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JALAN GARUDA NO 247 KM 7 SUMBAWA BESAR', '0371 2629330', 'Non-BLU', 'DENY PURWA INDARSA', '24/12/1984', 'Laki-laki', 'Magister', 'PNS', '198412242010121004', 'IIIB', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPK', NULL),
(197, '2/22/2018 12:13:57', 'mantaliwangsumbawabarat@yahoo.com', '675467', 'MAN TALIWANG', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. PONDOK PESANTREN NO. 28 TALIWANG', '3728283001', 'Non-BLU', 'mastar', '22/09/1961', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196109221987031006', 'IIIC', 'Tidak', '', 'NOMOR 1 TAHUN 2018', '04/01/2018', '20/01/2015', 'PPSPM', NULL),
(198, '2/22/2018 12:18:45', 'disos.sbw@gmail.com', '230574', 'DINAS SOSIAL KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. KEBAYAN NO. 3 KEL. UMA SIMA SUMBAWA', '0371-21219', 'Non-BLU', 'ABDUL SALAM', '20/02/1961', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196102201988031009', 'IVB', 'Ya', 'kABID PEMBERDAYAAN DAN KELEMBAGAAN SOSIAL', '36 TAHUN 2018', '12/02/2018', '20/02/2017', 'PPSPM', NULL),
(199, '2/22/2018 15:09:45', 'pjnwil2ntb@gmail.com', '498651', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JALAN GARUDA 247 KM 7 SUMBAWA BESAR', '0371 2629330', 'Non-BLU', 'ANNOVIATA ROBIE JAMIN', '28/11/1966', 'Laki-laki', 'Magister', 'PNS', '196611281997031005', 'IVA', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'KPA', NULL),
(200, '2/22/2018 22:37:41', 'lapassbw@yahoo.com', '407644', 'Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Jurusan Bima, KM.07, Sumbawa Besar', '(0371)2629688', 'Non-BLU', 'I Dewa Nyoman Ari Oka', '26/05/1992', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'PNS', '199205262010121002', 'IIB', 'Tidak', '', 'W21.ESB-1325-KU.03.03 TAHUN 2017', '30/12/2018', '01/01/2018', 'Bendahara Pengeluaran', NULL),
(201, '2/23/2018 10:51:31', 'pjnwil2ntb@gmail.com', '498651', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI NTB', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JALAN GARUDA 247 KM 7 SUMBAWA BESAR', '0371 2629330', 'Non-BLU', 'ANNOVIATA ROBIE JAMIN', '28/11/1966', 'Laki-laki', 'Magister', 'PNS', '196611281997031005', 'IVA', 'Tidak', '', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'KPA', NULL),
(202, '2/23/2018 16:18:05', 'disos.sbw@gmail.com', '230574', 'DINAS SOSIAL KABUPATEN SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. KEBAYAN NO.3 KEL. UMA SIMA', '0371-21219', 'Non-BLU', 'jawariah', '27/04/1978', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197904272007012015', 'IIIB', 'Tidak', '', '36 TAHUN 2018', '12/02/2018', '04/02/2013', 'Bendahara Pengeluaran', NULL),
(203, '3/1/2018 13:18:48', 'lapassbw@yahoo.com', '407644', 'Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Jurusan Bima, KM.07, Sumbawa Besar', '(0371)2629688', 'Non-BLU', 'Sartono', '02/05/1960', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196005021985031001', 'IVB', 'Ya', 'Kepala Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'W21.ESB-1325-KU.03.03 Tahun 2017', '30/12/2017', '05/01/2017', 'KPA', NULL),
(204, '3/1/2018 14:04:00', 'lapassbw@yahoo.com', '407644', 'Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jalan Jurusan Bima, KM.07 Sumbawa Besar', '(0371)2629688', 'Non-BLU', 'Edi Sukriawan', '22/02/1988', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '198002222000031001', 'IIIC', 'Ya', 'Kepala Urusan Keuangan', 'W21.ESB-1325-KU.03.03 Tahun 2017', '30/12/2017', '01/02/2017', 'PPK', NULL),
(205, '3/1/2018 14:48:21', 'lapassbw@yahoo.com', '407644', 'Lembaga Pemasyarakatan Klas IIA Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jln. Jurusan Bima Km 07 Sumbawa Besar', '(0371)2629680', 'Non-BLU', 'Sri Nuryanti', '27/09/1967', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196709271986031001', 'IIID', 'Ya', 'Kaur Kepegawaian dan Keuangan', 'W21.ESB-1325-KU.03.03 Tahun 2017', '01/01/2018', '01/01/2008', 'PPSPM', NULL),
(206, '3/2/2018 8:51:17', 'pa_sumbawabesar@yahoo.co.id', '307892', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Bungur No. 4b', '0371-21866', 'Non-BLU', 'Lalu Surnarijal.S.H.', '31/12/2018', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19631231.198803.1.019', 'IVA', 'Tidak', '', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK', NULL),
(207, '3/2/2018 9:16:26', 'pa_sumbawabesar@yahoo.co.id', '307892', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Bungur No.4b', '0371-21866', 'Non-BLU', 'MUNAJAH.S.H.', '29/01/1979', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19790129.201101.1.006', 'IIIB', 'Tidak', '', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'PPSPM', NULL),
(208, '3/2/2018 9:33:03', 'pa_sumbawabesar@yahoo.co.id', '307892', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl.Bungur No.4b', '0371-21866', 'Non-BLU', 'PUJI DWI SAPUTRO. AMd.', '26/08/1988', 'Laki-laki', 'Diploma I/II/III', 'PNS', '19880826.201503.1.001', 'IIC', 'Tidak', '', 'W22-A7/0017/KU.00.1/I/2018', '02/01/2018', '02/01/2017', 'Bendahara Pengeluaran', NULL),
(209, '3/2/2018 9:44:54', 'pa_sumbawabesar@yahoo.co.id', '307892', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. Bungur No. 4b', '0371-21866', 'Non-BLU', 'MUHAMMAD SYAPIUN', '05/07/1980', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19800705.200912..1.002', 'IIIB', 'Ya', 'Kasubbag IT , Perencanaan dan Pelaporan', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'Bendahara Penerimaan', NULL),
(210, '3/2/2018 10:01:42', 'pa_sumbawabesar@yahoo.co.id', '309109', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. Bungur No. 4b', '0371-21866', 'Non-BLU', 'LALU SURNARIJAL', '31/12/1963', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19631231.198803.1.019', 'IVA', 'Tidak', '', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK', NULL),
(211, '3/2/2018 10:09:22', 'pa_sumbawabesar@yahoo.co.id', '309109', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. Bungur No.4b', '0371-21866', 'Non-BLU', 'MUNAJAH', '29/01/1979', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19790129.201101.1.006', 'IIIB', 'Ya', 'KASUBBAG UMUM dan KEUANGAN', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'PPSPM', NULL),
(212, '3/2/2018 10:16:14', 'pa_sumbawabesar@yahoo.co.id', '309109', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. Bungur No.4b', '0371-21866', 'Non-BLU', 'PUJI DWI SAPUTRO', '26/08/1988', 'Laki-laki', 'Diploma I/II/III', 'PNS', '19880826.201503.1.001', 'IIC', 'Tidak', '', 'W22-A7/0017/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'Bendahara Pengeluaran', NULL),
(213, '3/2/2018 10:22:42', 'pa_sumbawabesar@yahoo.co.id', '309109', 'Pengadilan Agama Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JL. Bungur No.4b', '0371-21866', 'Non-BLU', 'MUHAMMAD SYAPIUN', '07/05/1980', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '19800705.200912.1.002', 'IIIB', 'Ya', 'KASUBAG PERENCANAAN,IT dan Pelaporan', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'Bendahara Penerimaan', NULL),
(214, '3/8/2018 11:22:03', 'bensat_ressbw@yahoo.co.id', '644946', 'POLRES SUMBAWA', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'JLN HASANUDDIN NO 105 SUMBAWA', '0371-22110', 'TNI/POLRI', 'WAHYU NADI', '12/07/1983', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', 'TNI/POLRI', '83120620', 'IID', 'Tidak', '', 'Sprin/231/II/HUK.6.6/2018', '15/02/2018', '15/02/2018', 'Bendahara Penerimaan', NULL),
(215, '3/13/2018 10:24:06', 'stamet_sbw@yahoo.co.id', '437350', 'Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa Besar', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Garuda no.43 sumbawa besar', '37121859', 'Non-BLU', 'Endriyono', '17/09/1975', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197509171998031001', 'IIIC', 'Ya', 'Kepala Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa', 'SK.01/KP.021/KB/BMKG-2016', '09/02/2016', '01/03/2016', 'KPA merangkap PPK', NULL),
(216, '3/15/2018 8:54:17', 'dinas.pertanian.tph@gmail.com', '230576', 'Dinas Pertanian Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Diponegoro No. 36 Sumbawa', '(0371)21146', 'Non-BLU', 'Tarunawan', '21/10/1964', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196410211988031010', 'IVC', 'Tidak', '', 'Nomor 268 Tahun 2018', '15/01/2018', '05/01/2017', 'KPA', NULL),
(217, '3/15/2018 9:07:23', 'dinas.pertanian.tph@gmail.com', '230576', 'Dinas Pertanian Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Diponegoro No. 36 Sumbawa', '(0371)21146', 'Non-BLU', 'Rahma', '07/09/1966', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '196607091987032004', 'IIID', 'Tidak', '', 'Nomor 103 tahun 2018', '18/01/2018', '05/01/2017', 'PPSPM', NULL),
(218, '3/15/2018 9:08:22', 'dinas.pertanian.tph@gmail.com', '230576', 'Dinas Pertanian Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Diponegoro No. 36 Sumbawa', '(0371)21146', 'Non-BLU', 'Mukhlis', '14/04/1973', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197304142000031007', 'IVB', 'Tidak', '', 'Nomor 103 tahun 2018', '18/01/2018', '05/01/2017', 'PPK', NULL),
(219, '3/15/2018 9:13:06', 'dinas.pertanian.tph@gmai.com', '230576', 'Dinas Pertanian Kab. Sumbawa', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Diponegoro No. 36 Kab. Sumbawa', '(0371)21146', 'Non-BLU', 'Rismawanti', '19/06/1973', 'Perempuan', 'Sarjana/Diploma IV', 'PNS', '197306192014062004', 'IIIA', 'Tidak', '', 'Nomor 104 tahun 2018', '18/01/2018', '05/01/2017', 'Bendahara Pengeluaran', NULL),
(220, '3/16/2018 15:01:36', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283189', 'Non-BLU', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196912311995031003', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK', NULL),
(221, '3/16/2018 15:03:51', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang', '8283190', 'Non-BLU', 'SARUI', '31/12/1972', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '197212312001121006', 'IIID', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'PPSPM', NULL),
(222, '3/16/2018 15:07:01', 'pataliwanginfo@gmail.com', '690154', 'Pengadilan Agama Taliwang', 'Nusa Tenggara Barat', 'Sumbawa Besar', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '8283190', 'Non-BLU', 'SYAHABUDDIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', 'PNS', '196812311993031007', 'IIIC', 'Tidak', '', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'Bendahara Pengeluaran', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_kegiatan`
--

CREATE TABLE `t_kegiatan` (
  `idkeg` char(3) NOT NULL,
  `uraiandetilkomp` varchar(366) DEFAULT NULL,
  `kegiatan` varchar(366) DEFAULT NULL,
  `idbagkomp` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kegiatan`
--

INSERT INTO `t_kegiatan` (`idkeg`, `uraiandetilkomp`, `kegiatan`, `idbagkomp`) VALUES
('11a', 'Tim Pembangunan ZI', 'Membentuk Tim untuk melakukan pembangunan Zona integritas', 11),
('11b', 'Penentuan Anggota Tim melalui prosedur', 'Melakukan Penentuan Anggota Tim selain Pimpinan dipilih melalui prosedur/mekanisme yang jelas', 11),
('12a', 'Dokumen Rencana Kerja Pembangunan ZI menuju WBK WBBM', 'Membuat dokumen rencana kerja pembangunan ZI menuju WBK/WBBM', 12),
('12b', 'Dokumen Pembangunan memuat target target prioritas', 'Membuat target-target prioritas yang relevan dalam dokumen pembangunan dengan tujuan pembangunan WBK/WBBM', 12),
('12c', 'Terdapat media mensosialisasikan pembangunan WBK WBBM', 'Membuat mekanisme atau media untuk mensosialisasikan pembangunan WBK/WBBM', 12),
('13a', 'Kegiatan pembangunan sudah dilaksanakan sesuai dengan rencana', 'Memastikan seluruh kegiatan pembangunan sudah dilaksanakan sesuai dengan rencana ', 13),
('13b', 'Terdapat monitoring dan evaluasi terhadap pembangunan ZI', 'Membuat monitoring dan evaluasi terhadap pembangunan ZI', 13),
('13c', 'Hasil monitoring dan evaluasi telah ditindaklanjuti', 'Menindaklanjuti laporan hasil monitoring dan evaluasi pembangunan WBK WBBM', 13),
('14a', 'Peranan pimpinan sebagai role model dalam pelaksanaan pembangunan WBK WBBM', 'Melaksanakan kegiatan role model pimpinan dalam pelaksanaan pembangunan WBK/WBBM', 14),
('14b', 'Dokumen agen perubahan', 'Menetapkan agen perubahan', 14),
('14c', 'Pembangunan budaya kerja dan pola pikir di organisasi', 'Membangun dan membentuk budaya kerja dan pola pikir di lingkungan organisasi ', 14),
('14d', 'Keterlibatan anggota dalam pembangunan ZI menuju WBKWBBM', 'Melibatkan pegawai dalam pembangunan ZI menuju WBK WBBM', 14),
('21a', 'SOP Mengacu peta proses bisnis instansi', 'Menyediakan SOP yang mengacu pada peta proses bisnis instansi di tempat kerja', 21),
('21b', 'SOP telah diterapkan', 'Menerapkan Prosedur operasional tetap (SOP)', 21),
('21c', 'SOP telah dievaluasi', 'Mengevaluasi atas Prosedur Operasional tetap (SOP)', 21),
('22a', 'Pengukuran Kinerja menggunakan TI', 'Mengelola sistem pengukuran kinerja unit dengan menggunakan teknologi', 22),
('22b', 'Operasionalisasi manajemen SDM sudah menggunakan TI', 'Mengoperasionalisasi manajemen SDM dengan menggunakan teknologi informasi', 22),
('22c', 'pemberian pelayanan publik sudah menggunakan TI', 'Memberikan pelayanan kepada publik dengan menggunakan teknologi informasi', 22),
('22d', 'Monitoring dan Evaluasi terhadap pemanfaatan TI dalam pengukuran Kinerja, SDM dan Layanan publik', 'Melakukan monitoring dan evaluasi terhadap pemanfaatan teknologi informasi dalam pengukuran kinerja unit operasionalisasi SDM, dan pemberian pelayanan kepada publik', 22),
('23a', 'Penerapan Kebijakan tentang informasi Publik', 'Menerapkan kebijakan tentang keterbukaan informasi publik', 23),
('23b', 'Monev pelaksanaan kebijakan informasi publik', 'Melakukan monitoring dan evaluasi pelaksanaan kebijakan keterbukaan informasi publik', 23),
('31a', 'Kebutuhan Pegawai disusun oleh unit kerja mengacu kepada peta jabatan', 'Melakukan monitoring dan evaluasi terhadap penempatan pegawai rekrutmen untuk memenuhi kebutuhan jabatan dalam organisasi', 31),
('31b', 'Penempatan pegawai mengacu kepada kebutuhan pegawai', 'Menempatkan Pegawai yang mengacu kepada kebutuhan pegawai', 31),
('31c', 'Monev penempatan pegawai', 'Melakukan Monev penempatan pegawai', 31),
('32a', 'Pengembangan karir pegawai telah dilakukan mutasi pegawai', 'Mengembangkan karir pegawai melalui mutasi pegawai', 32),
('32b', 'Mutasi Pegawai antar jabatan telah memperhatikan kompetensi jabatan dan mengikuti pola mutasi yang ditetapkan', 'Menjalankan mutasi pegawai antar jabatan dengan memperhatikan kompetensi jabatan dan mengikuti pola mutasi yang ditetapkan', 32),
('32c', 'Telah melakukan monev terhadap kegiatan mutasi dalam kaitannya dengan perbaikan kinerja', 'Melakukan monitoring dan evaluasi terhadap kegiatan mutasi yang telah dilakukan dalam kaitannya dengan perbaikan kinerja', 32),
('33a', 'KPPN telah melakukan TNA untuk pengembangan kompetensi', 'Melakukan training need analysis untuk pengembangan kompetensi', 33),
('33b', 'Menyusun rencana pengembangan kompetensi pegawai telah mempertimbangkan hasil kinerja', 'Mempertimbangkan hasil pengelolaan kinerja pegawai dalam menyusun rencana pengembangan kompetensi pegawai', 33),
('33c', 'Presentasi kesenjangan kompetensi pegawai yang ada dengan standar kompetensi', 'Mempertimbangkan presentase kesenjangan kompetensi pegawai yang ada dengan standar kompetensi yang ditetapkan untuk masing-masing jabatan', 33),
('33d', 'Pegawai KPPN memperoleh hak diklat', 'Mengikutkan Pegawai di unit kerja untuk memperoleh kesempatan/hak mengikuti diklat maupun pengembangan kompetensi lainnya', 33),
('33e', 'Dokumen pengembangan kompetensi', 'Melakukan upaya pengembangan kompetensi kepada pegawai (dapat melalui pengikutsertaan pada lembaga pelatihan, in house training, atau melalui coaching, atau mentoring, dll)', 33),
('33f', 'Monev terhadap pengembangan kompetensi', 'Melakukan monitoring dan evaluasi terhadap hasil pengembangan kompetensi dalam kaitannya dengan perbaikan kinerja', 33),
('34a', 'Terdapat penetapan kinerja individu yang terkait dengan kinerja organisasi', 'Menetapkan kinerja individu yang terkait dengan kinerja organisasi', 34),
('34b', 'ukuran Kinerja individu telah memiliki kesesuaian dengan indikator kinerja', 'Menyesuaikan Ukuran Kinerja individu dengan indikator kinerja individu level diatasnya', 34),
('34c', 'Pengukuran kinerja individu dilakukan secara periodik', 'Melakukan Pengukuran Kinerja Individu Secara Periodik', 34),
('34d', 'Pemberian reward kinerja individu', 'Memberikan reward (pengembangan karir individu, penghargaan,dll) berdasarkan hasil penilaian kinerja individu', 34),
('35a', '-', 'Melaksanakan aturan disiplin/kode etik/kode perilaku', 35),
('36a', '-', 'Memutakhirkan data informasi kepegawaian unit kerja secara berkala', 36),
('41a', 'pimpinan Terlibat secara langsung pada saat penyusunan perencanaan', 'Melibatkan pimpinan secara langsung pada saat penyusunan Perencanaan', 41),
('41b', 'Pimpinan terlibat secara langsung pada saat penyusunan penetapan kinerja', 'melibatkan pimpinan secara langsung pada saat penyusunan Penetapan Kinerja', 41),
('41c', 'Pimpinan memantau pencapaian kinerja', 'melibatkan pimpinan dalam memantau Pencapaian Kinerja secaera berkala', 41),
('42a', 'dokumen perencanaan kinerja', 'membuat dan mengelola dokumen perencanaan kinerja', 42),
('42b', 'Dokumen perencanaan telah berorientasi hasil', 'membuat dokumen perencanaan yang berorintasi hasil', 42),
('42c', 'Dokumen IKU', 'Mendokumentasikan Indikator Kinerja Utama (IKU)', 42),
('42d', 'indikator kinerja SmART', 'Mendokumentasikan indikator kinerja denga SMART', 42),
('42e', 'Laporan Kinerja disusun tepat waktu', 'membuat laporan Kinerja secara tepat waktu', 42),
('42f', 'Pelaporan kinerja memberikan informasi tentang kinerja', 'Membuat dan mendokumentasikan pelaporan kinerja dengan memberikan informasi tentang kinerja', 42),
('42g', 'Peningkatan kapasitas SDM yang menangani akuntabilitas kinerja', 'Melakukan upaya peningkatan kapasitas SDM yang menagani akuntabilitas kinerja', 42),
('42h', 'Pengelolaan akuntabilitas kinerja dilaksanakan oleh SDM yang kompeten', 'mengelola akuntabilitas kinerja melalui SDM yang kompeten', 42),
('51a', 'Public Campaign tentang pengendalian Gratifikasi ', 'Melaksanakan public campaign tentang pengendalian gratifikasi (10 %)', 51),
('51b', 'Pengendalian Gratifikasi telah diimplementasikan ', 'Mengimplementasikan Pengendalian Gratifikasi (10%)', 51),
('52a', 'Telah dibangun lingkungan Pengendalian', 'Membangun dan membentuk lingkungan pengendalian (5%)', 52),
('52b', 'Telah dilakukan penilaian risiko atas pelaksanaan kegiatan', 'Melakukan penilaian risiko atas pelaksanaan kebijakan (5%)', 52),
('52c', 'Telah dilakukan kegiatan pengendalian untuk meminimalisir risiko', 'Melakukan kegiatan pengendalian untuk meminimalisir risiko yang telah diidentifikasi (5%)', 52),
('52d', 'SPI telah diinformasikan dan dikomunikasikan dan dikomunikasikan kepada seluruh pihak terkait', 'Menginformasikan dan mengkomunikasikan SPI kepada seluruh pihak terkait (5%)', 52),
('53a', 'Kebijakan pengaduan masyarakat telah diimplementasikan', 'Membentuk dan mengelola kebijakan pengaduan masyarakat (5%)', 53),
('53b', 'Hasil Penanganan Pengaduan masyarakat telah ditindaklanjuti', 'Menindaklanjuti hasil penanganan pengaduan masyarakat (5%)', 53),
('53c', 'Monev Penanganan Pengaduan Masyarakat', 'Melakukan Monitoring dan evaluasi atas penanganan pengaduan masyarakat (5%)', 53),
('53d', 'Hasil Evaluasi Pengaduan Telah Ditindaklanjuti ', 'Menindaklanjuti hail evaluasi atas penanganan pengaduan masyarakat (5%)', 53),
('54a', 'WBS Sudah diinternalisasi ', 'Menginternalisasikan WBS (5%)', 54),
('54b', 'WBS telah diterapkan ', 'Menerapkan WBS (5%)', 54),
('54c', 'WBS telah dievaluasi ', 'Melakukan evaluasi ats penerapan WBS (5%)', 54),
('54d', 'Evaluasi WBS telah ditindaklanjuti', 'Menindaklanjuti hasil evaluasi atas penerapan WBS (5%)', 54),
('55a', 'Identifikasi pemetaan benturan kepentingan ', 'Melakukan identifikasi /pemetaan benturan kepentingan dalam tugas fungsi utama (4%)', 55),
('55b', 'Penanganan benturan kepentingan telah disosialisasikan', 'Mensosialisasikan mengenai penanganan Benturan Kepentingan (4%)', 55),
('55c', 'Penanganan benturan kepentingan telah diimplementasikan ', 'Mengimplementasikan Penanganan Benturan Kepentingan (4%)', 55),
('55d', 'Telah dilakukan evaluasi atas penanganan benturan kepentingan ', 'Melakukan evaluasi atas penanganan benturan kepentingan (4%)', 55),
('55e', 'Evaluasi penanganan telah ditindaklanjuti ', 'Menindaklanjuti hasil evaluasi atas penanganan benturan kepentingan (4%)', 55),
('61a', 'Terdapat Kebijakan standar Pelayanan ', 'Terdapat Kebijakan standar Pelayanan ', 61),
('61b', 'Standar Pelayanan telah dimaklumatkan', 'Standar Pelayanan telah dimaklumatkan', 61),
('61c', 'Terdapat SOP bagi pelaksanaan standar pelayanan', 'Terdapat SOP bagi pelaksanaan standar pelayanan', 61),
('61d', 'Dilakukan reviu dan perbaikan atas pelayanan dan SOP', 'Dilakukan reviu dan perbaikan atas pelayanan dan SOP', 61),
('62a', 'Sosialisasi penerapan budaya pelayanan prima', 'Sosialisasi penerapan budaya pelayanan prima', 62),
('62b', 'Informasi tentang pelayanan mudah diakses melalui berbagai media', 'Informasi tentang pelayanan mudah diakses melalui berbagai media', 62),
('62c', 'Telah terdapat pelayanan mudah diakses melalui berbagai media', 'Telah terdapat pelayanan mudah diakses melalui berbagai media', 62),
('62d', 'Terdapat sarana layanan terpadu terintegrasi', 'Terdapat sarana layanan terpadu terintegrasi', 62),
('62e', 'Terdapat inovasi pelayanan', 'Terdapat inovasi pelayanan', 62),
('63a', 'Survey kepuasan masyarakat terhadap pelayanan', 'Survey kepuasan masyarakat terhadap pelayanan', 63),
('63b', 'Hasil survey kepuasan masyarakat dapat diakses secara terbuka', 'Hasil survey kepuasan masyarakat dapat diakses secara terbuka', 63),
('63c', 'Dilakukan tindak lanjut atas survey kepuasan masyarakat', 'Dilakukan tindak lanjut atas survey kepuasan masyarakat', 63);

-- --------------------------------------------------------

--
-- Table structure for table `t_komponen`
--

CREATE TABLE `t_komponen` (
  `idkomp` int(1) NOT NULL,
  `uraiankomp` varchar(366) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_komponen`
--

INSERT INTO `t_komponen` (`idkomp`, `uraiankomp`) VALUES
(1, 'Manajemen Perubahan'),
(2, 'Penataan Tata Laksana'),
(3, 'Penataan Sistem Manajemen SDM'),
(4, 'Penguatan Akuntabilitas'),
(5, 'Penguatan Pengawasan'),
(6, 'Peningkatan Kualitas Pelayanan Publik');

-- --------------------------------------------------------

--
-- Table structure for table `t_kpa`
--

CREATE TABLE `t_kpa` (
  `kodesatker` char(6) CHARACTER SET utf8 DEFAULT NULL,
  `namapejabat` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tgllahir` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jeniskelamin` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `pendidikan` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `nip` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `gol` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jabstr` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rangkapjab` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nmrsk` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tglsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tmtsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `jabperbend` varchar(60) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kpa`
--

INSERT INTO `t_kpa` (`kodesatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `nip`, `gol`, `jabstr`, `rangkapjab`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`) VALUES
('008800', 'PARYONO', '7/21/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196506211991031002', 'IVA', 'KEPALA KEJAKSAAN NEGERI SUMBAWA', 'Ya', 'KEP-IV-352/C/06/2016', '6/15/2016', '6/15/2016', 'KPA merangkap PPSPM'),
('099883', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512311987031006', 'IIID', 'Sekretaris', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK'),
('099884', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512311987031006', 'IIID', 'Sekretaris', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK'),
('230574', 'TRIKARYATI', '06/11/1962', 'Perempuan', 'Sarjana/Diploma IV', '196211061982052001', 'IVC', 'KEPALA DINAS SOSIAL KABUPATEN SUMBAWA', 'Ya', '26/HUK/2018', '08/02/2018', '27/01/2017', 'KPA'),
('230576', 'Tarunawan', '21/10/1964', 'Laki-laki', 'Sarjana/Diploma IV', '196410211988031010', 'IVC', '', 'Tidak', 'Nomor 268 Tahun 2018', '15/01/2018', '05/01/2017', 'KPA'),
('239055', 'Dirmawan', '04/09/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196509041990031012', 'IVC', 'Kepala Dinas Kelautan dan Perikanan Kab Sumbawa', 'Ya', '114/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'KPA'),
('287651', 'Tukiman', '19/05/1961', 'Laki-laki', 'Sarjana/Diploma IV', '196105191987031001', 'IIID', 'Kepala Kantor Kesyahbandaran dan Otoritas Pelabuhan Kelas V', 'Ya', 'KU.706/1/1/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'KPA merangkap PPK'),
('288482', 'I KADEK YULI SASTRAWAN', '04/07/1976', 'Laki-laki', 'Sarjana/Diploma IV', '197607041998031001', 'IIID', 'kepala bandar udara', 'Ya', 'kp.004/673/xii/swq-2017', '31/12/2017', '02/01/2018', 'KPA'),
('307871', 'FATHURRAHMAN', '1/23/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196801231994021001', 'IVA', '', 'Tidak', 'Kw.19.1/2/Kp.07.6/08/2015', '1/20/2015', '1/21/2015', 'KPA'),
('307892', 'Lalu Surnarijal.S.H.', '31/12/2018', 'Laki-laki', 'Sarjana/Diploma IV', '19631231.198803.1.019', 'IVA', '', 'Tidak', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK'),
('309109', 'LALU SURNARIJAL', '31/12/1963', 'Laki-laki', 'Sarjana/Diploma IV', '19631231.198803.1.019', 'IVA', '', 'Tidak', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK'),
('350339', 'M IKHSAN SAFITRI', '03/06/1964', 'Laki-laki', 'Doktoral', '196406031987031017', 'IVC', 'Kepala Dinas PMD Kabupaten Sumbawa', 'Ya', '16,1', '17/04/2017', '01/01/2017', 'KPA'),
('350342', 'Mulyadi', '31/12/1965', 'Laki-laki', 'Magister', '196512311986081006', 'IVC', 'Kepala Dinas Pemberdayaan Masyarakat dan Desa Kab. Sumbawa Barat', 'Ya', '16', '17/04/2017', '17/04/2017', 'KPA merangkap PPK'),
('403664', 'Ermina Tri Lestari', '24/04/1966', 'Perempuan', 'Magister', '196604241988032001', 'IVA', 'Kepala Kantor', 'Ya', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'KPA'),
('407644', 'Sartono', '02/05/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196005021985031001', 'IVB', 'Kepala Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'Ya', 'W21.ESB-1325-KU.03.03 Tahun 2017', '30/12/2017', '05/01/2017', 'KPA'),
('411404', 'Rudie Bayu Widjatnoko', '19/01/1969', 'Laki-laki', 'Magister', '196901191989121001', 'IVA', 'Kepala Kantor', 'Ya', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'KPA'),
('418324', 'Syirajuddin Mahmud', '11/11/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '61110230', 'IVB', 'Kepala Badan Narkotika Nasional Kabupaten Sumbawa', 'Ya', 'KEP/1/I/2018/BNNK', '1/2/2018', '1/3/2017', 'KPA'),
('420000', 'Gufranuddin', '06/06/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196009241998031001', 'IIID', 'Drs. H. Sukri', 'Ya', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA'),
('420001', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196009241998031001', 'IIID', 'Kepala Kantor', 'Ya', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA'),
('420002', 'Drs. H. Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196009241998031001', 'IIID', 'Kepala Kantor Agama Kab. Sumbawa', 'Ya', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '30/08/2017', 'KPA'),
('420003', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196009241998031001', 'IIID', 'Kepala kantor kementerian agama kab. Sumbawa', 'Ya', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA'),
('420004', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196009241998031001', 'IIID', 'Kepala kantor kementerian agama kab. Sumbawa', 'Ya', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2016', 'KPA'),
('420005', 'Sukri', '24/09/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196009241998031001', 'IIID', 'Kepala kantor kementerian agama kab. Sumbawa', 'Ya', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'KPA'),
('429326', 'Ir I Gusti Lanang Putra', '8/17/1968', 'Laki-laki', 'Sarjana/Diploma IV', '19680817 199212 1 001', 'IVA', 'Kepala', 'Ya', '370 / PA / 2017', '11/27/2017', '11/27/2016', 'KPA'),
('432181', 'Ketut Diptasari', '12/31/1960', 'Laki-laki', 'Magister', '196012311985031022', 'IVB', 'Kepala Kantor Pertanahan', 'Ya', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'KPA'),
('437350', 'Endriyono', '17/09/1975', 'Laki-laki', 'Sarjana/Diploma IV', '197509171998031001', 'IIIC', 'Kepala Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa', 'Ya', 'SK.01/KP.021/KB/BMKG-2016', '09/02/2016', '01/03/2016', 'KPA merangkap PPK'),
('498651', 'ANNOVIATA ROBIE JAMIN', '28/11/1966', 'Laki-laki', 'Magister', '196611281997031005', 'IVA', '', 'Tidak', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'KPA'),
('528608', 'Ermina Tri Lestari', '4/24/1966', 'Perempuan', 'Magister', '196604241988032001', 'IVA', 'Kepala Kantor', 'Ya', 'KEP-001/WPB.22/KP.04/2018', '1/11/2018', '8/1/2017', 'KPA merangkap PPK'),
('553612', 'adiat S.Ag', '5/20/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197205201999031005', 'IVD', '', 'Tidak', '69/KK.19.04/01/2018', '1/8/2018', '3/1/2012', 'KPA merangkap PPK'),
('553629', 'ABDUL LATIEF', '10/06/1968', 'Laki-laki', 'Magister', '196806101997031003', 'IVA', '', 'Tidak', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'KPA'),
('567741', 'Ida Bagus Putu Raka Ariana', '25/12/1966', 'Laki-laki', 'Sarjana/Diploma IV', '196612251993031001', 'IVA', 'Kepala Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Ya', '467/Kpts/KU.010/8/2017', '03/08/2017', '03/07/2017', 'KPA merangkap PPK'),
('575087', 'Jalaludin', '31/12/1978', 'Laki-laki', 'Sarjana/Diploma IV', '197812312002121002', 'IVA', 'Kepala Madrasah', 'Ya', 'B-003/MTs.19.24/PP.00.05/01/2018', '03/01/2018', '01/09/2017', 'KPA merangkap PPK'),
('603845', 'Lalu Istiqlal', '8/17/1974', 'Laki-laki', 'Sarjana/Diploma IV', '197408172003121002', 'IVA', 'Kepala Madrasah', 'Ya', '69/Kk.19.04/01/2018', '1/8/2018', '12/31/2014', 'KPA merangkap PPK'),
('603866', 'SYAHABUDDIN', '01/06/1974', 'Laki-laki', 'Sarjana/Diploma IV', '197406011999031006', 'IVA', '', 'Tidak', '440 TAHUN 2017', '30/12/2017', '01/01/2015', 'KPA'),
('603870', 'AKHYAR', '12/31/1967', 'Laki-laki', 'Sarjana/Diploma IV', '196712311993031024', 'IVA', '', 'Tidak', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '1/1/2018', 'KPA'),
('636249', 'Tony ARyanto', '17/09/1977', 'Laki-laki', 'Magister', '197709171997031001', 'IIIC', 'Kepala Kantor', 'Ya', '-', '01/02/2017', '01/02/2017', 'KPA merangkap PPK'),
('644946', 'YUSUF SUTEJO, S.ik. MT', '05/08/1973', 'Laki-laki', 'Sarjana/Diploma IV', '73080753', 'IVB', 'KAPOLRES SUMBAWA', 'Ya', 'Kep/17/III/2017', '01/03/2017', '01/03/2017', 'KPA merangkap PPK'),
('652412', 'Andy Cahyono Bayuadi', '16/07/1979', 'Laki-laki', 'Magister', '197907162000121001', 'IIIC', 'Kepala Kantor Imigrasi Kelas II Sumbawa Besar', 'Ya', 'SEK-33.KP.03.03 TAHUN 2017', '31/08/2017', '31/08/2017', 'KPA'),
('652559', 'Sentot ismudiyanto k', '5/26/1973', 'Laki-laki', 'Sarjana/Diploma IV', '197305261999031003', 'IIID', 'Kepala Kantor', 'Ya', 'SK. 969 tahun 2017', '9/27/2017', '7/7/2010', 'KPA merangkap PPK'),
('653182', 'M. Saleh', '31/12/1964', 'Laki-laki', 'Sarjana/Diploma IV', '196412311987031001', 'IIID', 'Kepala Balai Pemasyarakatan Kelas II Sumbawa Besar', 'Ya', 'W21.EBSB.KU.03.03-05', '02/01/2018', '06/01/2017', 'KPA merangkap PPK'),
('653417', 'Sudirman, A.Md.IP.,SH', '5/3/1973', 'Laki-laki', 'Sarjana/Diploma IV', '197305031996031001', 'IIID', 'Kepala Rupbasan Sumbawa Besar', 'Ya', 'M.HH-162.KU.03.03 Tahun 2016', '12/7/2016', '10/16/2015', 'KPA'),
('655530', 'Janita Sunarsasi', '23/02/1969', 'Perempuan', 'Magister', '196902231995032001', 'IVB', 'Kepala Kantor', 'Ya', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'KPA'),
('658220', 'LAHMUDDIN', '5/22/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197205221992031004', 'IVA', 'SEKRETARIS KPU KABUPATEN SUMBAWA', 'Ya', '17/KU.05-SD/02/SJ/I/2018', '1/9/2018', '11/5/2014', 'KPA'),
('658241', 'Suraiyah', '8/28/1960', 'Perempuan', 'Sarjana/Diploma IV', '196008281984032007', 'IVB', 'Kuasa pengguna Anggaran /sekretaris', 'Ya', '01/HK.03.2/Kpt/5207/Sek-Kab/I/2018', '1/10/2018', '1/1/2018', 'KPA'),
('664077', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', '196010271990031002', 'IVB', 'Kepala Kantor', 'Ya', '20/2014', '21/01/2018', '01/02/2018', 'KPA'),
('664078', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', '196010271990031002', 'IVB', 'Kepala Kantor', 'Ya', '20/2014', '21/01/2014', '01/01/2005', 'KPA'),
('664079', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', '196010271990031002', 'IVB', 'Kepala Kantor', 'Ya', '20/2014', '21/01/2018', '01/02/2018', 'KPA'),
('664080', 'Syarifuddin', '27/10/1960', 'Laki-laki', 'Magister', '196010271990031002', 'IVB', 'Kepala Kantor', 'Ya', '20/2014', '21/01/2014', '02/01/2018', 'KPA'),
('665400', 'ANDY HERMAWAN', '01/06/1976', 'Laki-laki', 'Sarjana/Diploma IV', '76080589', 'IVB', 'KAPOLRES SUMBAWA BARAT', 'Ya', 'Sprin/37/I/2018', '09/01/2018', '01/04/2016', 'KPA merangkap PPSPM'),
('667016', 'I NYOMAN NELSON GIRI', '14/04/1966', 'Laki-laki', 'Magister', '196604141992031014', 'IVA', 'KPA', 'Ya', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'KPA merangkap PPK'),
('668601', 'Muhammad Ahyar', '31/12/1966', 'Laki-laki', 'Sarjana/Diploma IV', '19661231 199212 1 001', 'IVB', 'Kepala BPS Kabupaten Sumbawa Barat', 'Ya', '370/PA/2017', '27/11/2017', '01/02/2009', 'KPA'),
('675467', 'Zainuddin, S. Ag., M. Pd', '25/05/1974', 'Laki-laki', 'Magister', '197405252005011004', 'IIID', 'Kepala Madrasah', 'Ya', '1 TAHUN 2018', '04/01/2018', '21/08/2017', 'KPA merangkap PPK'),
('682274', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', '196912311995031003', 'IIIC', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK'),
('689838', 'Jolmadi', '09/07/1972', 'Laki-laki', 'Sarjana/Diploma IV', '72070730', 'IVB', 'Kepala BNNK SB', 'Ya', 'KEP/308/X/Ka/KU/2016/BNN', '11/10/2016', '11/10/2016', 'KPA merangkap PPK'),
('690154', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', '196912311995031003', 'IIIC', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK');

-- --------------------------------------------------------

--
-- Table structure for table `t_ppk`
--

CREATE TABLE `t_ppk` (
  `kodesatker` char(6) CHARACTER SET utf8 DEFAULT NULL,
  `namapejabat` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tgllahir` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jeniskelamin` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `pendidikan` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `nip` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `gol` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jabstr` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rangkapjab` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nmrsk` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tglsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tmtsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `jabperbend` varchar(60) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_ppk`
--

INSERT INTO `t_ppk` (`kodesatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `nip`, `gol`, `jabstr`, `rangkapjab`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`) VALUES
('008800', 'GERMAN DAVIT KAPITAN', '12/30/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512301992031003', 'IIIB', 'KAUR PERLENGKAPAN', 'Ya', 'KEP-04/P.2.13/Cp.2/01/2018', '1/2/2018', '1/2/2018', 'PPK'),
('099883', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512311987031006', 'IIID', 'Sekretaris', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK'),
('099884', 'Jumaah', '12/31/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512311987031006', 'IIID', 'Sekretaris', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'KPA merangkap PPK'),
('230574', 'MUHAMMAD FAUZI, S.Ap', '08/01/1978', 'Laki-laki', 'Sarjana/Diploma IV', '197801082002121006', 'IIIC', 'KASI PENGEMBANGAN NILAI KEPAHLAWANAN', 'Ya', '36 TAHUN 2018', '12/02/2018', '20/02/2017', 'PPK'),
('230576', 'Mukhlis', '14/04/1973', 'Laki-laki', 'Sarjana/Diploma IV', '197304142000031007', 'IVB', '', 'Tidak', 'Nomor 103 tahun 2018', '18/01/2018', '05/01/2017', 'PPK'),
('239055', 'Rahmat Hidayat', '18/04/1973', 'Laki-laki', 'Magister', '197304182000031004', 'IVA', 'Kepala Bidang Pengembangan Sumberdaya Perikanan', 'Ya', '114/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'PPK'),
('287651', 'Tukiman', '19/05/1961', 'Laki-laki', 'Sarjana/Diploma IV', '196105191987031001', 'IIID', 'Kepala Kantor Kesyahbandaran dan Otoritas Pelabuhan Kelas V', 'Ya', 'KU.706/1/1/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'KPA merangkap PPK'),
('307871', 'MS. KHAIDIR', '11/18/1975', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197511181998031001', 'IID', '', 'Tidak', 'b-02.a/Ma.19.07/KP.00.3/01/2018', '1/2/2018', '1/2/2018', 'PPK'),
('307892', 'Lalu Surnarijal.S.H.', '31/12/2018', 'Laki-laki', 'Sarjana/Diploma IV', '19631231.198803.1.019', 'IVA', '', 'Tidak', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK'),
('309109', 'LALU SURNARIJAL', '31/12/1963', 'Laki-laki', 'Sarjana/Diploma IV', '19631231.198803.1.019', 'IVA', '', 'Tidak', '38/SEK/Peng.06.1/12/2015', '16/12/2015', '16/12/2015', 'KPA merangkap PPK'),
('350339', 'SYAMSUL BAHRI', '06/11/1971', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197111061995031002', 'IIIC', '', 'Tidak', '20', '03/04/2017', '01/01/2017', 'PPK'),
('350342', 'Mulyadi', '31/12/1965', 'Laki-laki', 'Magister', '196512311986081006', 'IVC', 'Kepala Dinas Pemberdayaan Masyarakat dan Desa Kab. Sumbawa Barat', 'Ya', '16', '17/04/2017', '17/04/2017', 'KPA merangkap PPK'),
('403664', 'I Nengah Putu Wiranata', '25/01/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196501251985031004', 'IIID', 'Kepala Seksi Bank', 'Ya', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'PPK'),
('407644', 'Edi Sukriawan', '22/02/1988', 'Laki-laki', 'Sarjana/Diploma IV', '198002222000031001', 'IIIC', 'Kepala Urusan Keuangan', 'Ya', 'W21.ESB-1325-KU.03.03 Tahun 2017', '30/12/2017', '01/02/2017', 'PPK'),
('411404', 'Arief Ferdian Syah', '16/08/1975', 'Laki-laki', 'Magister', '197508161996021001', 'IIIC', 'Kepal Seksi Penindakan dan Penyidikan', 'Ya', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'PPK'),
('418324', 'Ahmady', '2/27/1972', 'Laki-laki', 'Diploma I/II/III', '197202271994031004', 'IIIC', 'Kepala Sub Bagian Umum', 'Ya', 'KEP/1/I/2018/BNNK', '1/2/2018', '10/6/2017', 'PPK'),
('420000', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK'),
('420001', 'Muhammad firdaua', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9C/KK.19.04/Kp.00/I/2018', '02/01/2018', '02/01/2016', 'PPK'),
('420002', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK'),
('420003', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK'),
('420004', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK'),
('420005', 'Muhammad Firdaus', '23/02/1978', 'Laki-laki', 'Magister', '197802232009011004', 'IIIC', '', 'Tidak', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '01/01/2016', 'PPK'),
('429326', 'yudi wahyudin', '4/15/1980', 'Laki-laki', 'Magister', '198004152003121001', 'IVA', 'kepala seksi statistik sosial', 'Ya', '001/KPA/2018', '1/2/2018', '5/1/2017', 'PPK'),
('432181', 'Joko Malik', '2/18/1988', 'Laki-laki', 'Sarjana/Diploma IV', '198802182014021003', 'IIIA', 'Kepala Urusan Keuangan dan BMN', 'Ya', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'PPK'),
('437350', 'Endriyono', '17/09/1975', 'Laki-laki', 'Sarjana/Diploma IV', '197509171998031001', 'IIIC', 'Kepala Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa', 'Ya', 'SK.01/KP.021/KB/BMKG-2016', '09/02/2016', '01/03/2016', 'KPA merangkap PPK'),
('498651', 'MUSTAFA', '22/09/1972', 'Laki-laki', 'Magister', '197209222007101001', 'IIIB', '', 'Tidak', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPK'),
('528608', 'Ermina Tri Lestari', '4/24/1966', 'Perempuan', 'Magister', '196604241988032001', 'IVA', 'Kepala Kantor', 'Ya', 'KEP-001/WPB.22/KP.04/2018', '1/11/2018', '8/1/2017', 'KPA merangkap PPK'),
('553612', 'adiat S.Ag', '5/20/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197205201999031005', 'IVD', '', 'Tidak', '69/KK.19.04/01/2018', '1/8/2018', '3/1/2012', 'KPA merangkap PPK'),
('553629', 'ABDUL LATIEF', '10/06/1968', 'Laki-laki', 'Magister', '196806101997031003', 'IVA', '', 'Tidak', '69/Kk.19.04/01/2018', '08/01/2018', '02/01/2018', 'PPK'),
('567741', 'Ida Bagus Putu Raka Ariana', '25/12/1966', 'Laki-laki', 'Sarjana/Diploma IV', '196612251993031001', 'IVA', 'Kepala Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Ya', '467/Kpts/KU.010/8/2017', '03/08/2017', '03/07/2017', 'KPA merangkap PPK'),
('575087', 'Jalaludin', '31/12/1978', 'Laki-laki', 'Sarjana/Diploma IV', '197812312002121002', 'IVA', 'Kepala Madrasah', 'Ya', 'B-003/MTs.19.24/PP.00.05/01/2018', '03/01/2018', '01/09/2017', 'KPA merangkap PPK'),
('603845', 'Lalu Istiqlal', '8/17/1974', 'Laki-laki', 'Sarjana/Diploma IV', '197408172003121002', 'IVA', 'Kepala Madrasah', 'Ya', '69/Kk.19.04/01/2018', '1/8/2018', '12/31/2014', 'KPA merangkap PPK'),
('603866', 'SYAHABUDDIN', '01/06/1974', 'Laki-laki', 'Sarjana/Diploma IV', '197406011999031006', 'IVA', '', 'Tidak', '440 TAHUN 2017', '30/12/2017', '01/01/2015', 'PPK'),
('603870', 'Drs. AKHYAR', '31/12/1967', 'Laki-laki', 'Sarjana/Diploma IV', '196712311993031024', 'IVA', '', 'Tidak', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '02/01/2018', '13/11/2017', 'PPK'),
('636249', 'Tony ARyanto', '17/09/1977', 'Laki-laki', 'Magister', '197709171997031001', 'IIIC', 'Kepala Kantor', 'Ya', '-', '01/02/2017', '01/02/2017', 'KPA merangkap PPK'),
('644946', 'YUSUF SUTEJO, S.ik. MT', '05/08/1973', 'Laki-laki', 'Sarjana/Diploma IV', '73080753', 'IVB', 'KAPOLRES SUMBAWA', 'Ya', 'Kep/17/III/2017', '01/03/2017', '01/03/2017', 'KPA merangkap PPK'),
('652412', 'Sulaiman', '05/08/1971', 'Laki-laki', 'Sarjana/Diploma IV', '197108051991031001', 'IIIC', 'Kepala urusan umum', 'Ya', 'No. W21.IMI.IMI.2-6794 Tahun 2017', '29/12/2017', '01/01/2018', 'PPK'),
('652559', 'Sentot ismudiyanto k', '5/26/1973', 'Laki-laki', 'Sarjana/Diploma IV', '197305261999031003', 'IIID', 'Kepala Kantor', 'Ya', 'SK. 969 tahun 2017', '9/27/2017', '7/7/2010', 'KPA merangkap PPK'),
('653182', 'M. Saleh', '31/12/1964', 'Laki-laki', 'Sarjana/Diploma IV', '196412311987031001', 'IIID', 'Kepala Balai Pemasyarakatan Kelas II Sumbawa Besar', 'Ya', 'W21.EBSB.KU.03.03-05', '02/01/2018', '06/01/2017', 'KPA merangkap PPK'),
('653417', 'Moh. Zainul Ahzan', '1/29/1984', 'Laki-laki', 'Sarjana/Diploma IV', '198401292010121001', 'IIIA', '', 'Tidak', 'W21.ERSB-149-KU.03.03 TAHUN 2017', '12/29/2017', '12/29/2017', 'PPK'),
('655530', 'DIAN AGUNG SUSANTO', '19/03/1977', 'Laki-laki', 'Sarjana/Diploma IV', '197703192002121001', 'IIID', 'KEPALA SEKSI PENGAWASAN DAN KONSULTASI IV', 'Ya', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'PPK'),
('658220', 'MOH. ATHAR', '24/02/1983', 'Laki-laki', 'Sarjana/Diploma IV', '198302242010121002', 'IIIB', 'KASUBBAG UMUM, KEUANGAN DAN LOGISTIK', 'Ya', '04/HK.03.1-Kpt/5204/02/Sek-Kab/I/2018', '04/01/2018', '02/08/2017', 'PPK'),
('658241', 'Iwan kurniawan', '7/13/1976', 'Laki-laki', 'Sarjana/Diploma IV', '197607132009021003', 'IIIC', 'Kasubbag teknis penyelenggara & hupmas', 'Ya', '01/HK.03.2-Kpt/5207/I/2018', '1/10/2018', '1/10/2018', 'PPK'),
('664077', 'Igfar', '04/11/1969', 'Laki-laki', 'Sarjana/Diploma IV', '196904112002121002', 'IIID', 'Penyelenggara Syariah', 'Ya', '01/2018', '02/01/2018', '02/01/2018', 'PPK'),
('664078', 'Udin. Syafruddin', '05/03/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197203052005011004', 'IIID', 'Kepala Seksi Bimbingan Masyarakat Islam', 'Ya', '04/2018', '02/01/2018', '02/01/2018', 'PPK'),
('664079', 'Ahmad Rusli', '05/10/1966', 'Laki-laki', 'Sarjana/Diploma IV', '196610051997031001', 'IIID', 'Kepala Seksi Pendidikan Agama Islam', 'Ya', '07/2018', '02/01/2018', '02/01/2018', 'PPK'),
('664080', 'A. Rahman Hs', '31/12/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196512311993031028', 'IIID', 'Kepala Seksi Penyelenggaraan Haji dan Umrah', 'Ya', '010/2018', '02/01/2018', '02/01/2018', 'PPK'),
('665400', 'ISMUDIANTO', '01/05/1969', 'Laki-laki', 'Magister', '69050177', 'IVA', 'WAKA POLRES', 'Ya', 'Sprin/39/I/2018', '09/01/2018', '01/12/2017', 'PPK'),
('667016', 'I NYOMAN NELSON GIRI', '14/04/1966', 'Laki-laki', 'Magister', '196604141992031014', 'IVA', 'KPA', 'Ya', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'KPA merangkap PPK'),
('668601', 'I Gusti Ayu Nyoman Sawitri', '07/04/1987', 'Perempuan', 'Sarjana/Diploma IV', '198704072009122004', 'IIIC', 'Kepala Seksi Statistik Produksi', 'Ya', '001/KPG Tahun 2018', '02/01/2018', '16/01/2017', 'PPK'),
('675467', 'Zainuddin, S. Ag., M. Pd', '25/05/1974', 'Laki-laki', 'Magister', '197405252005011004', 'IIID', 'Kepala Madrasah', 'Ya', '1 TAHUN 2018', '04/01/2018', '21/08/2017', 'KPA merangkap PPK'),
('682274', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', '196912311995031003', 'IIIC', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK'),
('689838', 'Jolmadi', '09/07/1972', 'Laki-laki', 'Sarjana/Diploma IV', '72070730', 'IVB', 'Kepala BNNK SB', 'Ya', 'KEP/308/X/Ka/KU/2016/BNN', '11/10/2016', '11/10/2016', 'KPA merangkap PPK'),
('690154', 'LALU MUNIR', '31/12/1969', 'Laki-laki', 'Sarjana/Diploma IV', '196912311995031003', 'IIIC', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'KPA merangkap PPK');

-- --------------------------------------------------------

--
-- Table structure for table `t_ppspm`
--

CREATE TABLE `t_ppspm` (
  `kodesatker` char(6) CHARACTER SET utf8 DEFAULT NULL,
  `namapejabat` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tgllahir` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jeniskelamin` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `pendidikan` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `nip` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `gol` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `jabstr` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rangkapjab` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nmrsk` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tglsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tmtsk` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `jabperbend` varchar(60) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_ppspm`
--

INSERT INTO `t_ppspm` (`kodesatker`, `namapejabat`, `tgllahir`, `jeniskelamin`, `pendidikan`, `nip`, `gol`, `jabstr`, `rangkapjab`, `nmrsk`, `tglsk`, `tmtsk`, `jabperbend`) VALUES
('008800', 'PARYONO', '7/21/1965', 'Laki-laki', 'Sarjana/Diploma IV', '196506211991031002', 'IVA', 'KEPALA KEJAKSAAN NEGERI SUMBAWA', 'Ya', 'KEP-IV-352/C/06/2016', '6/15/2016', '6/15/2016', 'KPA merangkap PPSPM'),
('099883', 'Amran', '2/23/1964', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196402231985031005', 'IIIC', 'Kepala Sub Bagian Umum dan Keuangan', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'PPSPM'),
('099884', 'Amran', '2/23/1964', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196402231985031005', 'IIIC', 'Kasubag Umum dan Keuangan', 'Ya', 'W25-U2/18/KU.01/I/2018', '1/2/2018', '1/2/2018', 'PPSPM'),
('230574', 'ABDUL SALAM', '20/02/1961', 'Laki-laki', 'Sarjana/Diploma IV', '196102201988031009', 'IVB', 'kABID PEMBERDAYAAN DAN KELEMBAGAAN SOSIAL', 'Ya', '36 TAHUN 2018', '12/02/2018', '20/02/2017', 'PPSPM'),
('230576', 'Rahma', '07/09/1966', 'Perempuan', 'Sarjana/Diploma IV', '196607091987032004', 'IIID', '', 'Tidak', 'Nomor 103 tahun 2018', '18/01/2018', '05/01/2017', 'PPSPM'),
('239055', 'syahafuddin', '08/02/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196102081988031006', 'IIIB', 'Kepala Seksi Jasa Kelautan', 'Ya', '144/MEN/KU.611/2017', '07/12/2017', '01/01/2018', 'PPSPM'),
('287651', 'Evi Susanti', '30/01/1972', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '197201301997032002', 'IIIB', '', 'Tidak', 'KU.706/1/1/KSOP.BDS-2017', '16/10/2017', '01/01/2018', 'PPSPM'),
('288482', 'Airlangga Tisna Wijaya', '12/14/1982', 'Laki-laki', 'Sarjana/Diploma IV', '198212142008121002', 'IIIC', 'Kepala Urusan Tata Usaha', 'Ya', 'KP.004/672/XIISWQ-2017', '12/22/2017', '1/2/2018', 'PPSPM'),
('307871', 'DJOKO PITOYO', '4/30/1963', 'Laki-laki', 'Sarjana/Diploma IV', '196304301987031001', 'IIID', 'Kaur Tata Usaha', 'Ya', 'Kw.19.1/2/240/2011', '2/10/2011', '2/24/2011', 'PPSPM'),
('307892', 'MUNAJAH.S.H.', '29/01/1979', 'Laki-laki', 'Sarjana/Diploma IV', '19790129.201101.1.006', 'IIIB', '', 'Tidak', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'PPSPM'),
('309109', 'MUNAJAH', '29/01/1979', 'Laki-laki', 'Sarjana/Diploma IV', '19790129.201101.1.006', 'IIIB', 'KASUBBAG UMUM dan KEUANGAN', 'Ya', 'W22-A7/0018/KU.00.1/I/2018', '02/01/2018', '01/01/2016', 'PPSPM'),
('350339', 'NASRUL ANWAR', '10/10/1962', 'Laki-laki', 'Sarjana/Diploma IV', '196210101986111001', 'IIID', 'Kasi Pengembangan Kehidupan Sosial Budaya Masyarakat', 'Ya', '20', '03/04/2017', '01/01/2017', 'PPSPM'),
('350342', 'Slamet Riadi', '28/04/1975', 'Laki-laki', 'Magister', '1975042819990211002', 'IIID', 'Kepala Bidang Pengembangan Partisipasi dan Kehidupan sosial budaya masyarakat', 'Ya', '10', '04/03/2017', '01/10/2014', 'PPSPM'),
('403664', 'Saripudin', '28/02/1980', 'Laki-laki', 'Magister', '198002282001121003', 'IIIC', 'Kepala Seksi Vera & KI', 'Ya', 'KEP-02/WPB.22/KPPN/2018', '12/01/2018', '01/01/2018', 'PPSPM'),
('407644', 'Sri Nuryanti', '27/09/1967', 'Perempuan', 'Sarjana/Diploma IV', '196709271986031001', 'IIID', 'Kaur Kepegawaian dan Keuangan', 'Ya', 'W21.ESB-1325-KU.03.03 Tahun 2017', '01/01/2018', '01/01/2008', 'PPSPM'),
('411404', 'Irwan RIyadi', '20/03/1977', 'Laki-laki', 'Magister', '197703201999031001', 'IIIB', 'Kepala Subbagian Umum', 'Ya', 'KEP-27/BC.1/UP.9/2017', '17/10/2017', '23/10/2017', 'PPSPM'),
('418324', 'Nursyafruddin', '04/04/1970', 'Laki-laki', 'Diploma I/II/III', '197004041990031006', 'IIIC', 'Kasi Pencegahan dan Pemberdayaan Masyarakat', 'Ya', 'KEP/1/I/2018/BNNK', '02/01/2018', '03/01/2017', 'PPSPM'),
('420000', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubag TU', 'Ya', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM'),
('420001', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubbag TU', 'Ya', 'B.9/Kk.19.04/Kp.00/I/2018', '02/01/2018', '30/08/2017', 'PPSPM'),
('420002', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubag TU', 'Ya', 'B. 9/KK.19.04/KP.00/1/2018', '02/01/2018', '30/08/2017', 'PPSPM'),
('420003', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubag TU', 'Ya', 'B. 9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM'),
('420004', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubag TU', 'Ya', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '28/08/2017', 'PPSPM'),
('420005', 'Mahmud', '28/10/1960', 'Laki-laki', 'Sarjana/Diploma IV', '196010281983031004', 'IIID', 'Kasubag TU', 'Ya', 'B.9EKK.19.04/Kp.00/I/2018', '02/01/2018', '30/01/2017', 'PPSPM'),
('429326', 'A. Hamid', '1/2/1962', 'Laki-laki', 'Sarjana/Diploma IV', '196201021981031002', 'IIID', 'Kepala Sub Bagian Tata Usaha', 'Ya', '001/KPA/2018', '1/2/2018', '1/2/2018', 'PPSPM'),
('432181', 'SITI AISYAH', '8/29/1961', 'Perempuan', 'Sarjana/Diploma IV', '196108291984032014', 'IIID', 'Kepala Sub Bagian Tata Usaha', 'Ya', 'SK-383/KEP.52.04/VIII/2017', '8/18/2017', '8/18/2017', 'PPSPM'),
('437350', 'Umam Syifaul qolby', '13/04/1993', 'Laki-laki', 'Sarjana/Diploma IV', '199304132013121001', 'IIA', '', 'Tidak', 'No.SK.01/KP.021/KB/BMKG-2016', '01/01/2018', '01/01/2018', 'PPSPM'),
('498651', 'Misrolia', '29/11/1965', 'Perempuan', 'Sarjana/Diploma IV', '196511292007012002', 'IIIB', '', 'Tidak', '1058/KPTS/M/2016', '30/12/2016', '01/01/2017', 'PPSPM'),
('528608', 'Iin Sojuscha Vinantie', '2/1/1969', 'Perempuan', 'Sarjana/Diploma IV', '196902011989122001', 'IIID', 'Kepala Subag Umum', 'Ya', 'KEP-01/WPB.22/KP.04/2018', '1/11/2018', '7/31/2017', 'PPSPM'),
('553612', 'AINI HAYATI', '8/31/1964', 'Perempuan', 'Sekolah Menengah Atas/Sederajat', '196408311989022001', 'IIIC', 'KEPALA TATA USAHA MTsN SUMBAWA', 'Ya', '69/Kk.19.04/01/2018', '1/8/2018', '1/1/2010', 'PPSPM'),
('553629', 'MUKSIN', '31/12/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196812311993031031', 'IIIC', 'PPSPM', 'Ya', '69/Kk.19.04/01/2018', '08/01/2018', '08/01/2018', 'PPSPM'),
('567741', 'Muhammad Ridwan', '06/07/1960', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196007061983021001', 'IIIC', 'Kepala Urusan Tata Usaha', 'Ya', '467/Kpts/KU.010/8/2017', '03/08/2017', '27/07/2008', 'PPSPM'),
('575087', 'Budi Syarkoni', '26/05/1977', 'Laki-laki', 'Sarjana/Diploma IV', '197705262006041002', 'IIIC', 'Kepala Tata Usaha', 'Ya', 'B-003/MTs.19.24/PP.00.05/01/2018', '03/01/2018', '01/02/2015', 'PPSPM'),
('603845', 'Siran', '12/31/1968', 'Laki-laki', 'Sarjana/Diploma IV', '196812311988031005', 'IIID', 'Kepala Tata Usaha', 'Ya', '69/Kk.19.04/01/2018', '1/8/2018', '12/31/2014', 'PPSPM'),
('603866', 'H. Muhammad Jabal', '03/01/1961', 'Laki-laki', 'Sarjana/Diploma IV', '196101031994031001', 'IIIC', '', 'Tidak', '440 TAHUN 2017', '30/12/2017', '01/01/2010', 'PPSPM'),
('603870', 'HERMANSYAH', '2/21/1961', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '196102211987031002', 'IIIB', 'Kepala Tata Usaha', 'Ya', '002/Ma.18.03.03/603870/KP.00.3/01/2018', '1/2/2018', '8/23/2007', 'PPSPM'),
('636249', 'Sulistiyono', '02/04/1983', 'Laki-laki', 'Diploma I/II/III', '198304022003121006', 'IID', '', 'Tidak', '-', '01/01/2017', '01/01/2017', 'PPSPM'),
('644946', 'Ahmad Mansur, S.Ag', '10/12/1978', 'Laki-laki', 'Sarjana/Diploma IV', '78121247', 'IVA', 'WAKA POLRES SUMBAWA', 'Ya', 'kep/3901/XI/2017', '01/11/2017', '01/11/2017', 'PPSPM'),
('652412', 'Edi sukriawan', '22/02/1980', 'Laki-laki', 'Sarjana/Diploma IV', '198002222000031001', 'IIIC', 'Kepala Urusan Keuangan', 'Ya', 'W21.IMI.IMI.1. 6794 -KU.03.03 TH 2017', '29/12/2017', '01/01/2016', 'PPSPM'),
('652559', 'FRENGKY MULOKO', '12/09/1990', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '199009122010121002', 'IIB', '', 'Tidak', 'KU. 706/5/9/UPP.BNT-17', '20/12/2017', '01/01/2018', 'PPSPM'),
('653182', 'Eliya Syam', '21/01/1972', 'Perempuan', 'Sarjana/Diploma IV', '197201211990032001', 'IIIB', 'Kepala Urusan Tata Usaha', 'Ya', 'W21.EBSB.KU.03.03-05', '02/01/2018', '06/01/2017', 'PPSPM'),
('653417', 'Pancawati, SH', '9/28/1972', 'Perempuan', 'Sarjana/Diploma IV', '197209291994032001', 'IIIC', 'Kasubsi Administrasi dan Perawatan', 'Ya', 'W21.ERSB-149-KU.03.03 TAHUN 2017', '12/29/2017', '8/21/2014', 'PPSPM'),
('655530', 'I Made Winastra', '31/12/1962', 'Laki-laki', 'Sarjana/Diploma IV', '196212311986031008', 'IIID', 'Kepala Sub Bagian Umum dan Kepatuhan Internal', 'Ya', 'KEP-04/WPJ.31/KP.05/2018', '08/01/2018', '02/01/2018', 'PPSPM'),
('658220', 'ITRUN', '13/10/1970', 'Laki-laki', 'Sarjana/Diploma IV', '19701013 200811 1 001', 'IIIC', 'KASUBBAG PROGRAM', 'Ya', '01/HK.03.1-Kpt/5204/02/Sek-Kab/I/2018', '04/01/2018', '02/08/2017', 'PPSPM'),
('658241', 'Eva Febriany', '01/02/1981', 'Perempuan', 'Sarjana/Diploma IV', '198102012009122004', 'IIIC', 'Kasubbag umum keuangan dan logistik', 'Ya', '01/HM.03.2-Kpt/5207/Sek-Kab/I/2018', '10/01/2018', '01/01/2015', 'PPSPM'),
('664077', 'Lalu Suhaili Fathnah', '31/12/2018', 'Laki-laki', 'Sarjana/Diploma IV', '197112311997031006', 'IIID', 'Kepala Sub Bagian Tata Usaha', 'Ya', '02/2018', '02/01/2018', '02/01/2018', 'PPSPM'),
('664078', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', '197112311990031006', 'IIID', 'kepala Sub Bagian Tata Usaha', 'Ya', '05/2018', '02/01/2018', '02/01/2018', 'PPSPM'),
('664079', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', '197112311997031006', 'IIID', 'Kepala Sub Bagian Tata Usaha', 'Ya', '08/2018', '02/01/2018', '02/01/2018', 'PPSPM'),
('664080', 'Lalu Suhaili Fathanah', '31/12/1971', 'Laki-laki', 'Sarjana/Diploma IV', '197112311997031006', 'IIID', 'Kepala Sub Bagian Tata Usaha', 'Ya', '011/2018', '02/01/2018', '02/01/2018', 'PPSPM'),
('665400', 'ANDY HERMAWAN', '01/06/1976', 'Laki-laki', 'Sarjana/Diploma IV', '76080589', 'IVB', 'KAPOLRES SUMBAWA BARAT', 'Ya', 'Sprin/37/I/2018', '09/01/2018', '01/04/2016', 'KPA merangkap PPSPM'),
('667016', 'IWAN PURNAWAN', '12/09/1970', 'Laki-laki', 'Sarjana/Diploma IV', '197009121997031002', 'IIID', 'PPSPM', 'Ya', '1/ KEP-52.07/I/2018', '02/01/2018', '02/01/2018', 'PPSPM'),
('668601', 'I gde adnyana', '8/18/1980', 'Laki-laki', 'Magister', '198018182003121001', 'IVA', 'Kasubbag Tata Usaha', 'Ya', '1', '1/2/2018', '4/1/2016', 'PPSPM'),
('675467', 'mastar', '22/09/1961', 'Laki-laki', 'Sarjana/Diploma IV', '196109221987031006', 'IIIC', '', 'Tidak', 'NOMOR 1 TAHUN 2018', '04/01/2018', '20/01/2015', 'PPSPM'),
('682274', 'SARUI', '31/12/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197212312001121006', 'IIID', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'PPSPM'),
('689838', 'Mairudin', '08/05/1974', 'Laki-laki', 'Sekolah Menengah Atas/Sederajat', '197405081996031003', 'IIIC', 'Kasubbag Umum', 'Ya', 'KEP/004/I/2018/BNNK', '02/01/2018', '01/03/2017', 'PPSPM'),
('690154', 'SARUI', '31/12/1972', 'Laki-laki', 'Sarjana/Diploma IV', '197212312001121006', 'IIID', '', 'Tidak', 'W22-A17/75/KP.04.6/SK/I/2018', '11/01/2018', '02/01/2015', 'PPSPM');

-- --------------------------------------------------------

--
-- Table structure for table `t_realisasi1`
--

CREATE TABLE `t_realisasi1` (
  `noid` int(2) NOT NULL DEFAULT '0',
  `kode_ba` varchar(3) DEFAULT NULL,
  `kodesatker` char(6) DEFAULT NULL,
  `pagu` decimal(15,0) DEFAULT NULL,
  `realisasi` decimal(15,0) DEFAULT NULL,
  `sisa` decimal(15,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_realisasi1`
--

INSERT INTO `t_realisasi1` (`noid`, `kode_ba`, `kodesatker`, `pagu`, `realisasi`, `sisa`) VALUES
(1, '6', '008800', '8616090000', '1071774322', '7544315678'),
(2, '5', '099883', '4634231000', '1084008780', '3550222220'),
(3, '5', '099884', '199040000', '28231500', '170808500'),
(4, '44', '230502', '950000000', '0', '950000000'),
(5, '27', '230574', '3572930000', '0', '3572930000'),
(6, '18', '230576', '8915000000', '30000000', '8885000000'),
(7, '32', '239055', '7045000000', '201630521', '6843369479'),
(8, '22', '287651', '3710267000', '550206135', '3160060865'),
(9, '22', '288482', '21156378000', '1614901920', '19541476080'),
(10, '25', '307871', '7905091000', '1473110438', '6431980562'),
(11, '5', '307892', '4519948000', '915400305', '3604547695'),
(12, '5', '309109', '140000000', '20575000', '119425000'),
(13, '67', '350339', '514630000', '0', '514630000'),
(14, '67', '350342', '200100000', '0', '200100000'),
(15, '999', '403664', '4', '35283768200', '4'),
(16, '13', '407644', '5932398000', '1870964167', '4061433833'),
(17, '15', '411404', '4523841000', '699860263', '3823980737'),
(18, '66', '418324', '1295397000', '189433387', '1105963613'),
(19, '25', '420000', '3372425000', '924695176', '2447729824'),
(20, '25', '420001', '18231420000', '1834126807', '16397293193'),
(21, '25', '420002', '45645944000', '3297035668', '42348908332'),
(22, '25', '420003', '70687000', '14948418', '55738582'),
(23, '25', '420004', '355783000', '42466119', '313316881'),
(24, '25', '420005', '508827000', '90925486', '417901514'),
(25, '54', '429326', '5690982000', '961489772', '4729492228'),
(26, '56', '432181', '16213546000', '2746334950', '13467211050'),
(27, '75', '437350', '1636100000', '299956660', '1336143340'),
(28, '33', '498651', '1', '9301259928', '1'),
(29, '15', '528608', '1589879000', '289958839', '1299920161'),
(30, '25', '553612', '8906586000', '1623005657', '7283580343'),
(31, '25', '553629', '5389599000', '971366555', '4418232445'),
(32, '18', '567741', '8302603000', '1970309745', '6332293255'),
(33, '25', '575087', '2870578000', '385259422', '2485318578'),
(34, '25', '603845', '4561100000', '880706161', '3680393839'),
(35, '25', '603866', '3404398000', '839654267', '2564743733'),
(36, '25', '603870', '3367568000', '604545925', '2763022075'),
(37, '15', '636249', '973808000', '173039280', '800768720'),
(38, '60', '644946', '71876051000', '14942077551', '56933973449'),
(39, '13', '652412', '3738007000', '639192102', '3098814898'),
(40, '22', '652559', '4989215000', '678170529', '4311044471'),
(41, '13', '653182', '1952317000', '510796888', '1441520112'),
(42, '13', '653417', '1092270000', '240939435', '851330565'),
(43, '15', '655530', '10230724000', '2265429508', '7965294492'),
(44, '76', '658220', '17471524000', '806207657', '16665316343'),
(45, '76', '658241', '9054089000', '841211793', '8212877207'),
(46, '25', '664077', '2317765000', '286483183', '2031281817'),
(47, '25', '664078', '5242826000', '510259910', '4732566090'),
(48, '25', '664079', '11462896000', '421829666', '11041066334'),
(49, '25', '664080', '362961000', '44407794', '318553206'),
(50, '60', '665400', '45637945000', '8215203016', '37422741984'),
(51, '56', '667016', '13070894000', '1786971471', '11283922529'),
(52, '54', '668601', '3644403000', '583560098', '3060842902'),
(53, '25', '675467', '1877043000', '254752380', '1622290620'),
(54, '5', '682274', '3934994000', '839990459', '3095003541'),
(55, '66', '689838', '1702391000', '179580760', '1522810240'),
(56, '5', '690154', '55000000', '0', '55000000');

-- --------------------------------------------------------

--
-- Table structure for table `t_satker`
--

CREATE TABLE `t_satker` (
  `kodesatker` char(6) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `namasatker` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `jenissatker` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `paktaintegritas` varchar(255) DEFAULT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_satker`
--

INSERT INTO `t_satker` (`kodesatker`, `namasatker`, `alamat`, `email`, `jenissatker`, `paktaintegritas`, `foto`) VALUES
('008800', 'KEJAKSAAN NEGERI SUMBAWA', 'Jalan Manggis no 7', 'kejaksaan@gmail.com', 'Non BLU', NULL, 'http://www.infopublik.id/assets/upload/headline//20180724123518.jpg'),
('099883', 'Pengadilan Negeri Sumbawa Besar', 'Jln. Garuda, No. 105, Sumbawa Besar', 'pengadilan@gmail.com', 'Non BLU', NULL, 'http://www.infopublik.id/assets/upload/headline//20180724123518.jpg'),
('099884', 'Pengadilan Negeri Sumbawa Besar', 'Jl. Garuda No. 105, Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('230574', 'DINAS SOSIAL KABUPATEN SUMBAWA', 'JL. KEBAYAN N0 3 KEL. UMA SIMA SUMBAWA BESAR', '', 'Non-BLU', NULL, ''),
('230576', 'Dinas Pertanian Kab. Sumbawa', 'Jl. Diponegoro No. 36 Sumbawa', '', 'Non-BLU', NULL, ''),
('239055', 'Dinas Kelautan dan Perikanan Kabupaten Sumbawa', 'Jalan Ki Hajar Dewantara No. 1 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('287651', 'Kantor Kesyahbandaran dan Otoritas Pelabuhan Badas', 'Jl. Pelabuhan Badas, Sumbawa', '', 'Non-BLU', NULL, ''),
('288482', 'Bandara Sultan M Kaharuddin', 'Jl. Garuda No 41', '', 'Non BLU', NULL, ''),
('307871', 'Madrasah Aliyah Negeri Sumbawa Kab.Sumbawa', 'Jalan Kepiting Gang Santri No.33 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('307892', 'Pengadilan Agama Sumbawa Besar', 'Jl. Bungur No. 4b', '', 'Non-BLU', NULL, ''),
('309109', 'Pengadilan Agama Sumbawa Besar', 'JL. Bungur No. 4b', '', 'Non-BLU', NULL, ''),
('350339', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA KABUPATEN SUMBAWA', 'Jalan Bungur Nomor 3 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('350342', 'Dinas Pemberdayaan Masyarakat dan Desa', 'Jln.bungkarno komplek kemutar telu center taliwang', '', 'Non-BLU', NULL, ''),
('403664', 'KPPN SUMBAWA BESAR PENGELOLA PENYALURAN DANA ALOKASI KHUSUS FISIK DAN DANA DESA', 'Jalan Garuda No 107', '', 'Non-BLU', NULL, ''),
('407644', 'Lembaga Pemasyarakatan Kelas IIA Sumbawa Besar', 'Jalan Jurusan Bima, KM.07, Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('411404', 'KPPBC Sumbawa', 'Jalan Pelabuhan Badas, Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('418324', 'Badan Narkotika Nasional Kabupaten Sumbawa', 'Jalan Garuda No. 23 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('420000', 'Kantor Kementerian Agama kab. Sumbawa', 'Jalan Durian No. 72 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('420001', 'Kantor Kementerian Agama Kabupaten Sumbawa', 'Jalan Durian Nomor 72', '', 'Non-BLU', NULL, ''),
('420002', 'Kantor Kementerian Agama Kab. Sumbawa', 'Jln. Durian 72', '', 'Non-BLU', NULL, ''),
('420003', 'Kantor Kementerian Agama kab. Sumbawa', 'Jalan Durian No. 72 Sumbawa besar', '', 'Non-BLU', NULL, ''),
('420004', 'Kantor Kementerian Agama kab. Sumbawa', 'Jalan Durian No. 72 Sumbawa besar', '', 'Non-BLU', NULL, ''),
('420005', 'Kantor Kementerian Agama kab. Sumbawa', 'Jalan Durian No. 72 Sumbawa besar', '', 'Non-BLU', NULL, ''),
('429326', 'BADAN PUSAT STATISTIK KABUPATEN SUMBAWA', 'Jalan Durian No 70 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('432181', 'Kantor Pertanahan Kab. Sumbawa', 'Jalan Garuda No. 89 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('437350', 'Stasiun Meteorologi Sultan Muhammad Kaharuddin Sumbawa Besar', 'Jl. Garuda no.43 sumbawa besar', '', 'Non-BLU', NULL, ''),
('498651', 'PELAKSANAAN JALAN NASIONAL WILAYAH II PROVINSI NTB', 'JALAN GARUDA 247 KM 7 SUMBAWA BESAR', '', 'Non BLU', NULL, ''),
('528608', 'Kantor Pelayanan Perbendaharaan Negara Sumbawa Besar', 'Jalan Garuda no. 107, Sumbawa Besar 84351', '', 'Non-BLU', NULL, ''),
('553612', 'MTsN Sumbawa Kab. Sumbawa', 'Jln Durian Kel Uma Sima Kab. Sumbawa', '', 'Non-BLU', NULL, ''),
('553629', 'Madrasah Tsanawiyah Negeri Empang', 'Desa Bunga Eja', '', 'Non-BLU', NULL, ''),
('567741', 'Stasiun Karantina Pertanian Kelas I Sumbawa Besar', 'Jalan Pelabuhan Laut Badas No. 1 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('575087', 'Madrasah Tsanawiyah Negeri Taliwang', 'Jl. Pondok Pesantren no. 28 Menala, Taliwang, Sumbawa Barat', '', 'Non-BLU', NULL, ''),
('603845', 'MTs Negeri Alas', 'Jalan Pahlawan Desa Dalam Kecamatan Alas', '', 'Non-BLU', NULL, ''),
('603866', 'MADRASAH ALIYAH NEGERI 2 SUMBAWA', 'Jalan Pendidikan 1/ 5 Moyo', '', 'Non-BLU', NULL, ''),
('603870', 'MAN 3 Sumbawa', 'Jalan Merdeka Empang', '', 'Non-BLU', NULL, ''),
('636249', 'KP2KP TALIWANG', 'JL. SUTAN SYAHRIR NO.46 TALIWANG SUMBAWA BARAT', '', 'Non-BLU', NULL, ''),
('644946', 'Satker Polres Sumbawa', 'Jln. hasanuddin 105 Sumbawa Besar', '', 'TNI/POLRI', NULL, ''),
('652412', 'Kantor Imigrasi Sumbawa Besar', 'Jalan Garuda No.131 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('652559', 'Kantor UUP Benete', 'Jln. Pelabuhan Benete Kec. Maluk Sumbawa Barat', '', 'Non BLU', NULL, ''),
('653182', 'Balai Pemasyarakatan Kelas II Sumbawa Besar', 'Jln. Jurusan Sumbawa-Bima KM.07 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('653417', 'Rumah penyimpanan benda sitaan negara sumbawa besar', 'Jl. Ki Hajar Dewantara No.12 Sumbawa Besar', '', 'Non-BLU', NULL, ''),
('655530', 'KPP Pratama Sumbawa Besar', 'Jalan Garuda No.70-72 Sumbawa', '', 'Non-BLU', NULL, ''),
('658220', 'KPU KABUPATEN SUMBAWA', 'JL. GARUDA NO. 109 SUMBAWA BESAR', '', 'Non-BLU', NULL, ''),
('658241', 'KPU KABUPATEN SUMBAWA BARAT', 'Taliwang', '', 'Non-BLU', NULL, ''),
('664077', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Jl. Pendidikan Telaga Bertong Taliwang', '', 'Non-BLU', NULL, ''),
('664078', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Jalan Pendidikan Telaga Bertong', '', 'Non-BLU', NULL, ''),
('664079', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Jl. Pendidikan Telaga Bertong Taliwang', '', 'Non-BLU', NULL, ''),
('664080', 'Kantor Kementerian Agama Kab. Sumbawa Barat', 'Jl. Pendidikan Telaga Bertong Taliwang', '', 'Non-BLU', NULL, ''),
('665400', 'Polres Sumbawa Barat', 'jalan telaga bertong ksb', '', 'Non BLU', NULL, ''),
('667016', 'KANTOR PERTANAHAN KABUPATEN SUMBAWA BARAT', 'JL. TELAGA BERTONG TALIWANG - KSB', '', 'Non-BLU', NULL, ''),
('668601', 'BPS KAB. SUMBAWA BARAT', 'JL. PENDIDIKAN NO.269 KEL. TELAGA BERTONG TLIWANG', '', 'Non-BLU', NULL, ''),
('675467', 'Madrasah Aliyah Negeri Taliwang', 'Jln. Pondok Pesantren No. 28 Taliwang', '', 'Non-BLU', NULL, ''),
('682274', 'Pengadilan Agama Taliwang', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '', 'Non-BLU', NULL, ''),
('689838', 'Badan Narkotika Nasional Kabupaten Sumbawa Barat', 'Jl. Pendidikan Telaga Bertong Taliwang', '', 'Non-BLU', NULL, ''),
('690154', 'Pengadilan Agama Taliwang', 'Jl. Pendidikan No. 46 Telaga Bertong Taliwang KSB', '', 'Non BLU', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_seksi`
--

CREATE TABLE `t_seksi` (
  `idpic` int(1) NOT NULL,
  `namaseksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_seksi`
--

INSERT INTO `t_seksi` (`idpic`, `namaseksi`) VALUES
(1, 'Subbag Umum'),
(2, 'PDMS'),
(3, 'Bank'),
(4, 'Veraki');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_bagkomponen`
--
ALTER TABLE `t_bagkomponen`
  ADD PRIMARY KEY (`idbagkomp`),
  ADD KEY `idbagkomp` (`idbagkomp`),
  ADD KEY `fk_komp` (`idkomp`);

--
-- Indexes for table `t_datawbkwbbm`
--
ALTER TABLE `t_datawbkwbbm`
  ADD PRIMARY KEY (`idoutput`),
  ADD KEY `fk_data_komp` (`idkomp`),
  ADD KEY `fk_data_bagkomp` (`idbagkomp`),
  ADD KEY `fk_data_keg` (`idkeg`),
  ADD KEY `fk_data_seksi` (`idpic`);

--
-- Indexes for table `t_gabungan`
--
ALTER TABLE `t_gabungan`
  ADD UNIQUE KEY `idData` (`idData`);

--
-- Indexes for table `t_kegiatan`
--
ALTER TABLE `t_kegiatan`
  ADD PRIMARY KEY (`idkeg`),
  ADD KEY `fk_bagkomp` (`idbagkomp`);

--
-- Indexes for table `t_komponen`
--
ALTER TABLE `t_komponen`
  ADD PRIMARY KEY (`idkomp`);

--
-- Indexes for table `t_realisasi1`
--
ALTER TABLE `t_realisasi1`
  ADD PRIMARY KEY (`noid`);

--
-- Indexes for table `t_satker`
--
ALTER TABLE `t_satker`
  ADD PRIMARY KEY (`kodesatker`);

--
-- Indexes for table `t_seksi`
--
ALTER TABLE `t_seksi`
  ADD PRIMARY KEY (`idpic`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_gabungan`
--
ALTER TABLE `t_gabungan`
  MODIFY `idData` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_bagkomponen`
--
ALTER TABLE `t_bagkomponen`
  ADD CONSTRAINT `fk_komp` FOREIGN KEY (`idkomp`) REFERENCES `t_komponen` (`idkomp`) ON UPDATE CASCADE;

--
-- Constraints for table `t_datawbkwbbm`
--
ALTER TABLE `t_datawbkwbbm`
  ADD CONSTRAINT `fk_data_bagkomp` FOREIGN KEY (`idbagkomp`) REFERENCES `t_bagkomponen` (`idbagkomp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_data_keg` FOREIGN KEY (`idkeg`) REFERENCES `t_kegiatan` (`idkeg`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_data_komp` FOREIGN KEY (`idkomp`) REFERENCES `t_komponen` (`idkomp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_data_seksi` FOREIGN KEY (`idpic`) REFERENCES `t_seksi` (`idpic`) ON UPDATE CASCADE;

--
-- Constraints for table `t_kegiatan`
--
ALTER TABLE `t_kegiatan`
  ADD CONSTRAINT `fk_bagkomp` FOREIGN KEY (`idbagkomp`) REFERENCES `t_bagkomponen` (`idbagkomp`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
