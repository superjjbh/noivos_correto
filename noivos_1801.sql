-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jan-2018 às 03:56
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noivos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_nome` varchar(200) DEFAULT NULL,
  `area_pos` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`area_id`, `area_nome`, `area_pos`) VALUES
(12, 'EletroportÃ¡teis', 0),
(13, 'Talheres', 0),
(14, 'Passeios', 0),
(15, 'Jantares', 0),
(16, 'Viagem', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `area1`
--

CREATE TABLE `area1` (
  `area1_id` int(11) NOT NULL,
  `area1_nome` varchar(200) DEFAULT NULL,
  `area1_pos` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area1`
--

INSERT INTO `area1` (`area1_id`, `area1_nome`, `area1_pos`) VALUES
(2, 'Design', 4),
(3, 'Photography', 3),
(4, 'Art', 1),
(5, 'Bootstrap', 0),
(6, 'Nature', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `area2`
--

CREATE TABLE `area2` (
  `area2_id` int(11) NOT NULL,
  `area2_nome` varchar(200) DEFAULT NULL,
  `area2_pos` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area2`
--

INSERT INTO `area2` (`area2_id`, `area2_nome`, `area2_pos`) VALUES
(2, 'Design', 4),
(3, 'Photography', 3),
(4, 'Art', 1),
(5, 'Bootstrap', 0),
(6, 'Nature', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(11) NOT NULL,
  `cliente_nome` varchar(200) DEFAULT NULL,
  `cliente_subtitulo` varchar(200) DEFAULT NULL,
  `cliente_descricao` text NOT NULL,
  `cliente_imagem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nome`, `cliente_subtitulo`, `cliente_descricao`, `cliente_imagem`) VALUES
(10, 'Ram', 'Fundadora', 'Lacus lundium cursus ridiculus? Ridiculus tempor penatibus integer dolor eros scelerisque facilisis elit proin, magnis cursus facilisis mauris, et facilisis! Aliquet turpis amet, sit sagittis ac nec purus. Etiam nisi? Sociis nunc, in! Vut velit? Ac pulvinar cursus et dis natoque dis! Sagittis nec nunc, proin ut amet? Enim, cum etiam et odio elementum parturient! Porta est aliquam arcu nascetur, enim ultricies penatibus, porttitor cras, nisi duis scelerisque dis vut porttitor pulvinar magna ut nunc, habitasse pid pulvinar, urna elit? Et in, a integer? Lundium ridiculus etiam porttitor. Non, nisi vut, a tortor nec, mauris arcu nascetur egestas aliquet, in tincidunt rhoncus. Urna ac elementum, arcu ultrices adipiscing et proin, a a sociis ridiculus dis ultrices dictumst auctor ac dictumst.', '1454588388.jpg'),
(11, 'Smith', 'Developer', 'Lacus lundium cursus ridiculus? Ridiculus tempor penatibus integer dolor eros scelerisque facilisis elit proin, magnis cursus facilisis mauris, et facilisis! Aliquet turpis amet, sit sagittis ac nec purus. Etiam nisi? Sociis nunc', '1432229684.jpg'),
(12, 'Peter', 'Designer', 'in! Vut velit? Ac pulvinar cursus et dis natoque dis! Sagittis nec nunc, proin ut amet? Enim, cum etiam et odio elementum parturient! Porta est aliquam arcu nascetur', '1432229718.jpg'),
(13, 'Hardik', 'Graphics', 'enim ultricies penatibus, porttitor cras, nisi duis scelerisque dis vut porttitor pulvinar magna ut nunc, habitasse pid pulvinar, urna elit? Et in, a integer? Lundium ridiculus etiam porttitor. Non, nisi vut, a tortor nec, mauris arcu nascetur egestas aliquet, in tincidunt rhoncus. Urna ac elementum, arcu ultrices adipiscing et proin, a a sociis ridiculus dis ultrices dictumst auctor ac dictumst.', '1454588397.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente2`
--

CREATE TABLE `cliente2` (
  `cliente_id` int(11) NOT NULL,
  `cliente_nome` varchar(200) DEFAULT NULL,
  `cliente_subtitulo` varchar(200) DEFAULT NULL,
  `cliente_descricao` text NOT NULL,
  `cliente_imagem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente2`
--

INSERT INTO `cliente2` (`cliente_id`, `cliente_nome`, `cliente_subtitulo`, `cliente_descricao`, `cliente_imagem`) VALUES
(10, 'Ram', 'Fundadora', 'Lacus lundium cursus ridiculus? Ridiculus tempor penatibus integer dolor eros scelerisque facilisis elit proin, magnis cursus facilisis mauris, et facilisis! Aliquet turpis amet, sit sagittis ac nec purus. Etiam nisi? Sociis nunc, in! Vut velit? Ac pulvinar cursus et dis natoque dis! Sagittis nec nunc, proin ut amet? Enim, cum etiam et odio elementum parturient! Porta est aliquam arcu nascetur, enim ultricies penatibus, porttitor cras, nisi duis scelerisque dis vut porttitor pulvinar magna ut nunc, habitasse pid pulvinar, urna elit? Et in, a integer? Lundium ridiculus etiam porttitor. Non, nisi vut, a tortor nec, mauris arcu nascetur egestas aliquet, in tincidunt rhoncus. Urna ac elementum, arcu ultrices adipiscing et proin, a a sociis ridiculus dis ultrices dictumst auctor ac dictumst.', '1432228682.jpg'),
(11, 'Smith', 'Developer', 'Lacus lundium cursus ridiculus? Ridiculus tempor penatibus integer dolor eros scelerisque facilisis elit proin, magnis cursus facilisis mauris, et facilisis! Aliquet turpis amet, sit sagittis ac nec purus. Etiam nisi? Sociis nunc', '1432229684.jpg'),
(12, 'Peter', 'Designer', 'in! Vut velit? Ac pulvinar cursus et dis natoque dis! Sagittis nec nunc, proin ut amet? Enim, cum etiam et odio elementum parturient! Porta est aliquam arcu nascetur', '1432229718.jpg'),
(14, 'Lammego', 'Locutor/Produtor', 'trabalha na Ã¡rea da comunicaÃ§Ã£o', '1440808742.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `comentario_id` int(11) NOT NULL,
  `comentario_nome` varchar(200) DEFAULT NULL,
  `comentario_email` varchar(200) DEFAULT NULL,
  `comentario_mensagem` text,
  `comentario_data` varchar(200) DEFAULT NULL,
  `comentario_status` int(11) DEFAULT '0',
  `comentario_pagina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `contato_id` int(11) NOT NULL,
  `contato_email` varchar(200) DEFAULT NULL,
  `contato_telefone1` varchar(200) DEFAULT NULL,
  `contato_endereco` varchar(200) DEFAULT NULL,
  `contato_long_lat` varchar(200) DEFAULT NULL,
  `contato_telefone2` varchar(200) DEFAULT NULL,
  `contato_telefone3` varchar(200) DEFAULT NULL,
  `contato_telefone4` varchar(200) DEFAULT NULL,
  `contato_telefone5` varchar(200) DEFAULT NULL,
  `contato_telefone6` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`contato_id`, `contato_email`, `contato_telefone1`, `contato_endereco`, `contato_long_lat`, `contato_telefone2`, `contato_telefone3`, `contato_telefone4`, `contato_telefone5`, `contato_telefone6`) VALUES
(1, 'contato@jmtecnologiabh.com.br', '(31) 98640-7398', 'Rua Paulo MÃ¡rcio de AraÃºjo, 30 - Maria Goretti - Belo Horizonte/MG', '-19.8643040,-43.9129980', '(31) 98640-7398', '15', '09', '2018', 'superjjweb09@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `depoimento`
--

CREATE TABLE `depoimento` (
  `depoimento_id` int(11) NOT NULL,
  `depoimento_nome` varchar(200) DEFAULT NULL,
  `depoimento_cargo` varchar(200) DEFAULT NULL,
  `depoimento_sobre` text,
  `depoimento_data` varchar(200) DEFAULT NULL,
  `depoimento_imagem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `depoimento`
--

INSERT INTO `depoimento` (`depoimento_id`, `depoimento_nome`, `depoimento_cargo`, `depoimento_sobre`, `depoimento_data`, `depoimento_imagem`) VALUES
(2, 'Stanley Roe', 'CEO & Founder', 'Magna velit aliquet lectus amet porttitor elementum nec augue sit vut, mattis adipiscing tortor. Non, eu nunc ac, cum habitasse in aliquam nec tortor, sit odio sagittis magna, ultrices porttitor. Integer porta? Duis, arcu ut aliquam magna dis nascetur scelerisque. Montes habitasse lacus lorem, sagittis turpis lectus turpis adipiscing lorem, enim sit rhoncus duis mid porttitor? ', '15/05/2015', '1454588366.jpg'),
(4, 'Olga', 'Web design', 'Arcu integer nascetur quis ridiculus, porttitor! Pellentesque in aliquam sed penatibus magna. In auctor, quis dignissim, ultricies rhoncus est, amet, eros, tempor urna nec integer, augue cras ultrices. Dolor amet! Nisi proin magnis cum velit, et, a sed integer eros nunc, proin turpis phasellus mattis, dapibus. Nisi placerat, proin elementum, nisi, purus sit placerat phasellus urna, nec. A elit, facilisis! Aenean dolor et odio? Parturient mid, tincidunt sed elementum enim, augue porttitor amet sociis nunc elementum est elementum tristique et hac et proin hac odio pid ac lorem? Tincidunt aliquet. Porttitor! Tempor rhoncus nec mus quis parturient in, eros aliquet augue auctor egestas ut rhoncus sit auctor, magna! Non augue, elementum, penatibus, porttitor phasellus tincidunt lorem, elementum ac augue habitasse.', '15/05/2015', '1454588378.jpg'),
(5, 'Ciclano', 'Diretor', 'Magna velit aliquet lectus amet porttitor elementum nec augue sit vut, mattis adipiscing tortor. Non, eu nunc ac, cum habitasse in aliquam nec tortor, sit odio sagittis magna, ultrices porttitor. Integer porta? Duis, arcu ut aliquam magna dis nascetur scelerisque. Montes habitasse lacus lorem, sagittis turpis lectus turpis adipiscing lorem, enim sit rhoncus duis mid porttitor? ', '16/11/2017', '1510792002.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `foto_id` int(11) NOT NULL,
  `foto_url` varchar(200) DEFAULT NULL,
  `foto_pos` int(11) DEFAULT '0',
  `foto_portfolio` int(11) DEFAULT NULL,
  `foto_presente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `foto`
--

INSERT INTO `foto` (`foto_id`, `foto_url`, `foto_pos`, `foto_portfolio`, `foto_presente`) VALUES
(15, '5a1ba318885f3c4a0b89a857f975bf9a.jpg', 0, 4, NULL),
(24, '869af905d7ea98285bc175fae41cc991.jpg', 0, 4, NULL),
(26, '4e049de74b230318e1aa04213f57ba39.jpg', 0, 4, NULL),
(30, '2fe90a2f2bc77d61150bc4db148c529e.jpg', 0, 4, NULL),
(31, '3ddd510a983ffe2b82c457be264786ea.jpg', 0, 5, NULL),
(32, 'b900387ae6bc2a2f8f1a64d6168dc473.jpg', 0, 5, NULL),
(33, 'f39e3139327291b71d206f4035e4f988.jpg', 0, 5, NULL),
(34, '7c809c15171d6a4123ce5cee9e46b6c1.jpg', 0, 5, NULL),
(35, '881c9e46d972c75247ffef4ee44c1e31.jpg', 0, 5, NULL),
(36, 'f6e58b3b5bc402b7e4ebe04f324e516e.jpg', 0, 5, NULL),
(37, '618d1af280d43c64a6e74b91adc90094.jpg', 0, 5, NULL),
(38, 'f4f69fc06b0ff7e20ebe1f9a0d50b315.jpg', 0, 5, NULL),
(39, '34bd8af36329d720540faa30b210293e.jpg', 0, 5, NULL),
(40, '69c12b5e8071beaa3f023f2fc930305c.jpg', 0, 6, NULL),
(41, '8eb0f4936165edddea249269e8f69e01.jpg', 0, 6, NULL),
(42, '4691750a53bcf3176fa316b607a729cc.jpg', 0, 6, NULL),
(43, '8b980edfac550d5d7bba6363359b4dd9.jpg', 0, 6, NULL),
(44, '0487aa4b5f301a00be5f50ff9cbad9be.jpg', 0, 6, NULL),
(45, '69bc8c32e89e9f10dbbd6cb2476b710c.jpg', 0, 6, NULL),
(46, 'edeb7eed1eedd9b3075076d921f2d756.jpg', 0, 6, NULL),
(47, '4357ccdfcd651c7176dc04d4c7a85645.jpg', 0, 6, NULL),
(48, '9ca997d0f3cc5b1be76baf9be04addd2.jpg', 0, 6, NULL),
(49, 'e7bf72675bbb442519e2d558a7a1e40e.jpg', 0, 6, NULL),
(50, '11808c9b6044ace5e34b449e351fee75.jpg', 0, 6, NULL),
(51, 'ac1e23f2ad0c358cd3f81ced7315e7fb.jpg', 0, 6, NULL),
(52, '6d99dabe16b8f11b09af3d1809e18606.jpg', 0, 6, NULL),
(53, '1f8a3c2aab0b23e177e01fca1c92c06e.jpg', 0, 6, NULL),
(70, 'd7e2ac626f90e2cbd93b5d3f0dc0a528.jpg', 0, 60, NULL),
(71, '7b245df1b87ab5cef33a59f47a825486.jpg', 0, 60, NULL),
(72, 'fd6bd578c810d76b4df27a854cc0e96a.jpg', 0, 60, NULL),
(73, 'f148624a30caf6c8d093319615de0b29.jpg', 0, 60, NULL),
(74, 'a3b9f678ec010fb3b11dd1767ecfd3f1.jpg', 0, 60, NULL),
(75, '5caaf9c8195736e9243967bf9d3cfa9b.jpg', 0, 60, NULL),
(76, 'a0dec3f34eca30eea3cccba170c0b22c.jpg', 0, 60, NULL),
(98, 'baea02e11c568b7ee30f7483e5c75f88.jpg', 0, 62, NULL),
(99, '515df712fd8259f3a7f133d68c8f73a8.jpg', 0, 62, NULL),
(100, '9e61d433fb9ae8b17c2a5404cb57f0e6.jpg', 0, 62, NULL),
(103, 'ce72a30fb21a6522fb9fc4efbee8fc8a.jpg', 0, 62, NULL),
(104, '40bf7c0d2761579b2a15eb1d8e5d207e.jpg', 0, 62, NULL),
(105, '36527bfd21600a8ea24aa90c4fcc03dc.jpg', 0, 7, NULL),
(106, '3bea748fbfd50de3f8abecb9c7f6c528.jpg', 0, 7, NULL),
(107, 'dd8c568be49e5a99a6f28edc191db6eb.jpg', 0, 7, NULL),
(108, '1b73d77903f1292b320dd9c2fcefffb4.jpg', 0, 7, NULL),
(109, '1f6b234506143b9776b41eacb3a462e8.jpg', 0, 7, NULL),
(110, '666f02d4ddea418aec689f24ffa962d7.jpg', 0, 7, NULL),
(111, 'ae262fbe65bc9da3c86cfb5f05160c59.jpg', 0, 7, NULL),
(112, '9a351722f22d57b5f90365a32489be66.jpg', 0, 61, NULL),
(113, '4913e1e2b3a6a05dc5584cf8010da458.jpg', 0, 61, NULL),
(114, '58e382d85037a2890d9f5035894349a1.jpg', 0, 61, NULL),
(115, 'f1a6abeb72e676c4e4961220de05ed7a.jpg', 0, 61, NULL),
(116, '8f387207cd08b00072bbc9f7eb8da542.jpg', 0, 61, NULL),
(117, 'f8ed03ac641d394a65c950e89c75c55a.jpg', 0, 61, NULL),
(118, 'a676e58bf2630c2b01eeb99ddcbd70a6.jpg', 0, 61, NULL),
(119, '01f6d701adbd435be4fc8e3ae86912ce.jpg', 0, 61, NULL),
(120, 'ef528c2fe72483775f14f400474a3257.jpg', 0, 63, NULL),
(121, 'ae7b08520def467e83fc945d164d7b83.jpg', 0, 63, NULL),
(122, '002e3c02b5952ed5b4301573448a7280.jpg', 0, 63, NULL),
(123, '20eba184e32b9df9e12186c1c3e0d03e.jpg', 0, 63, NULL),
(124, '8521fc063cd5795a11832735de5665c9.jpg', 0, 63, NULL),
(125, '494981894c9b91ea3d16dfdfc1c3ceac.jpg', 0, 63, NULL),
(126, 'ffae97f5dc4647a8c1048c4d03159e33.jpg', 0, 63, NULL),
(127, '43769ce46233ea58e1be0a3c573a068c.jpg', 0, 63, NULL),
(128, 'f86ec03a361e34d16f547583ded3c592.jpg', 0, 64, NULL),
(129, 'f86ec03a361e34d16f547583ded3c592.jpg', 0, 64, NULL),
(130, '119e29c801ef60f7c5b7d00701c99080.jpg', 0, 64, NULL),
(131, '5775f66289ca77ac4e430382d0636bcc.jpg', 0, 64, NULL),
(132, '3ea4072988c7a67a686de6a2b87ccb49.jpg', 0, 64, NULL),
(133, '19beb981ed4c5d5d94c52410caa23f61.jpg', 0, 64, NULL),
(134, '0219ab0a202ccc971b7924c52256fb07.jpg', 0, 64, NULL),
(135, 'f754ec2abe32d62bd7ff1da18dddcec1.jpg', 0, 65, NULL),
(136, 'abcb2ea4bf6dabdeb0fa327a2d9f138b.jpg', 0, 65, NULL),
(137, '9fec242ba8b43d1649bfc603543898bf.jpg', 0, 65, NULL),
(138, '84937d46f34c4eff1941910a9d29cbf5.jpg', 0, 65, NULL),
(139, '70e7f11f1a10343ec71ea7bbcb689c19.jpg', 0, 65, NULL),
(140, 'e1e4d3840e37d4b33a4c843449dd67a4.jpg', 0, 65, NULL),
(141, '42a8e29605ff6cb8ec90061c659d5f74.jpg', 0, 65, NULL),
(142, 'ebeec2266b5aef7cfa5354c95ebe00c2.jpg', 0, 65, NULL),
(143, 'a737444c3b17c98d4cd8210215048968.jpg', 0, 65, NULL),
(144, '03ad7aec1e31d895bad1c0f192e32d79.jpg', 0, 66, NULL),
(145, 'eb498d8b2968d12e38b17df9612be7f5.jpg', 0, 66, NULL),
(146, '3febb699859584f4ca80e1a2ce22e88a.jpg', 0, 66, NULL),
(147, 'e69acaf8c4519a18a49d6fde650fe8c6.jpg', 0, 66, NULL),
(148, 'b3ccb10eaf86ba16638445997676669a.jpg', 0, 66, NULL),
(149, 'aaa95a7f08faa6102d5f014b3a66995c.jpg', 0, 66, NULL),
(150, 'af0f57a104579fabd7a004244581a4c6.jpg', 0, 66, NULL),
(151, 'b444b529333444dfd3d97b6e3a22c69b.jpg', 0, 66, NULL),
(152, 'bb2ad157a90b4b2dc125d91eb5e153ec.jpg', 0, 67, NULL),
(153, 'fad7af4fb28ff7a54a2e60416f4a554a.jpg', 0, 67, NULL),
(154, 'e877a1907377479d9d6ad9f71db2ddb5.jpg', 0, 67, NULL),
(155, '1ee5d4823eb80b2dbcbc9d5326025154.jpg', 0, 67, NULL),
(156, 'bd6d32d3de88746ec4489bd577cfabc1.jpg', 0, 67, NULL),
(157, '9b937b54773cb5deea5c06cf25a75c9a.jpg', 0, 67, NULL),
(158, '6ff81fe459285cd62ab4b915e247299d.jpg', 0, 67, NULL),
(159, 'b418859aa1c51071b738eddb77998ffb.jpg', 0, 67, NULL),
(160, 'd5542a281c7bb7276e485c1361cff7bc.jpg', 0, 67, NULL),
(161, 'd3a293405f31304b517a1f1f95e00f17.jpg', 0, 67, NULL),
(162, '9c03b1874bebabc759cbe1aa51806b4c.jpg', 0, 67, NULL),
(163, '83d9393b16f6a88ad77ef87409cc960d.jpg', 0, 67, NULL),
(164, '8fec0a88ebec0e23a2e934fe41eb72da.jpg', 0, 68, NULL),
(165, 'e61da95f3e68262a025229eaac34bb7f.jpg', 0, 68, NULL),
(166, '796dfa65a8aebd219702115c996eb8d9.jpg', 0, 68, NULL),
(167, '9fa713804bd23fb53b859d9af186cb0e.jpg', 0, 68, NULL),
(168, '54a3aed7020c40ec37dd23cdb10563f7.jpg', 0, 68, NULL),
(169, 'b9ded90f2ca75f515eb4b1806ea88ed1.jpg', 0, 68, NULL),
(170, 'c9d85bfc7696164a5d9790701fcb0fb0.jpg', 0, 68, NULL),
(171, '028d3c182d7b864b060c9dd2ef76ada7.jpg', 0, 68, NULL),
(172, '8dbc46f70c63cb4ecf63886e87da5b13.jpg', 0, 69, NULL),
(173, '46d3a5a155fa339a1aacc211fc665cbd.jpg', 0, 69, NULL),
(174, 'd5fd300c7ae6c1e9c5d31af5f188d09c.jpg', 0, 69, NULL),
(175, 'c88b5dd4451644c96f25c7612462eaff.jpg', 0, 69, NULL),
(176, '45373b04690026ae41708f600549c489.jpg', 0, 69, NULL),
(177, 'c3683f9b3883db06156a9a4f4ee16353.jpg', 0, 69, NULL),
(178, '4776247002a17ab5f2a55021c7da4ebd.jpg', 0, 69, NULL),
(179, 'aa3ce981b83b65d56636dd0140a1df3f.jpg', 0, 69, NULL),
(180, 'ae42104a98d7098d4ceac4a0ccae5701.jpg', 0, 69, NULL),
(181, '9a0e546953d4ddf44baec0b345a6b0c1.jpg', 0, 69, NULL),
(182, '2ef4b6ab3f56eacd05698f62c0e932cd.jpg', 0, 69, NULL),
(183, 'a513fade4ed6cf1ed2305757956c00ab.jpg', 0, 69, NULL),
(184, 'dbb1e0f7670ae6953bfbf849e93bf916.jpg', 0, 69, NULL),
(187, '9463d09bfe7b84684f14924190d51765.jpg', 0, 71, NULL),
(188, 'e3b3e9fd84d1d61da9eb6416fe230379.jpg', 0, 71, NULL),
(199, '10996db5cbe7e6046231566d7fb0441e.jpg', 0, 72, NULL),
(200, '510fc87e5096683569cdf8f269e637d6.jpg', 0, 72, NULL),
(204, 'c61ce04a2cdf29fbf6d45f728a53244f.jpg', 0, 72, NULL),
(208, '54f4ef45be7e4a48aa7b33848c58a29e.jpg', 0, 70, NULL),
(209, '52eb2bf05c65c0e845904983fac48105.jpg', 0, 70, NULL),
(215, '05bd9013c27434d76ea822c26de71a70.jpg', 0, 73, NULL),
(216, '03055c5d74c2033785d2b9b3abe62d5e.jpg', 0, 73, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `icones`
--

CREATE TABLE `icones` (
  `icones_id` int(11) NOT NULL,
  `icones_nome` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `icones`
--

INSERT INTO `icones` (`icones_id`, `icones_nome`) VALUES
(1, 'fa fa-bed'),
(2, 'fa fa-buysellads'),
(3, 'fa fa-cart-arrow-down'),
(4, 'fa fa-cart-arrow-down'),
(5, 'fa fa-connectdevelop'),
(6, 'fa fa-diamond'),
(7, 'fa fa-facebook-official'),
(8, 'fa fa-forumbee'),
(9, 'fa fa-hotel'),
(10, 'fa fa-leanpub'),
(11, 'fa fa-mars'),
(12, 'fa fa-mars-double'),
(13, 'fa fa-mars-stroke'),
(14, 'fa fa-mars-stroke-h'),
(15, 'fa fa-mars-stroke-v'),
(16, 'fa fa-medium'),
(17, 'fa fa-mercury'),
(18, 'fa fa-motorcycle'),
(19, 'fa fa-neuter'),
(20, 'fa fa-pinterest-p'),
(21, 'fa fa-sellsy'),
(22, 'fa fa-server'),
(23, 'fa fa-ship'),
(24, 'fa fa-shirtsinbulk'),
(25, 'fa fa-simplybuilt'),
(26, 'fa fa-skyatlas'),
(27, 'fa fa-street-view'),
(28, 'fa fa-subway'),
(29, 'fa fa-train'),
(30, 'fa fa-transgender'),
(31, 'fa fa-transgender-alt'),
(32, 'fa fa-user-plus'),
(33, 'fa fa-user-secret'),
(34, 'fa fa-user-times'),
(35, 'fa fa-venus'),
(36, 'fa fa-venus-double'),
(37, 'fa fa-venus-mars'),
(38, 'fa fa-viacoin'),
(39, 'fa fa-whatsapp'),
(40, 'fa fa-adjust'),
(41, 'fa fa-anchor'),
(42, 'fa fa-archive'),
(43, 'fa fa-area-chart'),
(44, 'fa fa-arrows'),
(45, 'fa fa-arrows-h'),
(46, 'fa fa-arrows-v'),
(47, 'fa fa-asterisk'),
(48, 'fa fa-at'),
(49, 'fa fa-automobile'),
(50, 'fa fa-ban'),
(51, 'fa fa-bank'),
(52, 'fa fa-bar-chart'),
(53, 'fa fa-bar-chart-o'),
(54, 'fa fa-barcode'),
(55, 'fa fa-bars'),
(56, 'fa fa-bed'),
(57, 'fa fa-beer'),
(58, 'fa fa-bell'),
(59, 'fa fa-bell-o'),
(60, 'fa fa-bell-slash'),
(61, 'fa fa-bell-slash-o'),
(62, 'fa fa-bicycle'),
(63, 'fa fa-binoculars'),
(64, 'fa fa-birthday-cake'),
(65, 'fa fa-bolt'),
(66, 'fa fa-bomb'),
(67, 'fa fa-book'),
(68, 'fa fa-bookmark'),
(69, 'fa fa-bookmark-o'),
(70, 'fa fa-briefcase'),
(71, 'fa fa-bug'),
(72, 'fa fa-building'),
(73, 'fa fa-building-o'),
(74, 'fa fa-bullhorn'),
(75, 'fa fa-bullseye'),
(76, 'fa fa-bus'),
(77, 'fa fa-cab'),
(78, 'fa fa-calculator'),
(79, 'fa fa-calendar'),
(80, 'fa fa-calendar-o'),
(81, 'fa fa-camera'),
(82, 'fa fa-camera-retro'),
(83, 'fa fa-car'),
(84, 'fa fa-caret-square-o-down'),
(85, 'fa fa-caret-square-o-left'),
(86, 'fa fa-caret-square-o-right'),
(87, 'fa fa-caret-square-o-up'),
(88, 'fa fa-cart-arrow-down'),
(89, 'fa fa-cart-plus'),
(90, 'fa fa-cc'),
(91, 'fa fa-certificate'),
(92, 'fa fa-check'),
(93, 'fa fa-check-circle'),
(94, 'fa fa-check-circle-o'),
(95, 'fa fa-check-square'),
(96, 'fa fa-check-square-o'),
(97, 'fa fa-child'),
(98, 'fa fa-circle'),
(99, 'fa fa-circle-o'),
(100, 'fa fa-circle-o-notch'),
(101, 'fa fa-circle-thin'),
(102, 'fa fa-clock-o'),
(103, 'fa fa-close'),
(104, 'fa fa-cloud'),
(105, 'fa fa-cloud-download'),
(106, 'fa fa-cloud-upload'),
(107, 'fa fa-code'),
(108, 'fa fa-code-fork'),
(109, 'fa fa-coffee'),
(110, 'fa fa-cog'),
(111, 'fa fa-cogs'),
(112, 'fa fa-comment'),
(113, 'fa fa-comment-o'),
(114, 'fa fa-comments'),
(115, 'fa fa-comments-o'),
(116, 'fa fa-compass'),
(117, 'fa fa-copyright'),
(118, 'fa fa-credit-card'),
(119, 'fa fa-crop'),
(120, 'fa fa-crosshairs'),
(121, 'fa fa-cube'),
(122, 'fa fa-cubes'),
(123, 'fa fa-cutlery'),
(124, 'fa fa-dashboard'),
(125, 'fa fa-database'),
(126, 'fa fa-desktop'),
(127, 'fa fa-diamond'),
(128, 'fa fa-dot-circle-o'),
(129, 'fa fa-download'),
(130, 'fa fa-edit'),
(131, 'fa fa-ellipsis-h'),
(132, 'fa fa-ellipsis-v'),
(133, 'fa fa-envelope'),
(134, 'fa fa-envelope-o'),
(135, 'fa fa-envelope-square'),
(136, 'fa fa-eraser'),
(137, 'fa fa-exchange'),
(138, 'fa fa-exclamation'),
(139, 'fa fa-exclamation-circle'),
(140, 'fa fa-exclamation-triangle'),
(141, 'fa fa-external-link'),
(142, 'fa fa-external-link-square'),
(143, 'fa fa-eye'),
(144, 'fa fa-eye-slash'),
(145, 'fa fa-eyedropper'),
(146, 'fa fa-fax'),
(147, 'fa fa-female'),
(148, 'fa fa-fighter-jet'),
(149, 'fa fa-file-archive-o'),
(150, 'fa fa-file-audio-o'),
(151, 'fa fa-file-code-o'),
(152, 'fa fa-file-excel-o'),
(153, 'fa fa-file-image-o'),
(154, 'fa fa-file-movie-o'),
(155, 'fa fa-file-pdf-o'),
(156, 'fa fa-file-photo-o'),
(157, 'fa fa-file-picture-o'),
(158, 'fa fa-file-powerpoint-o'),
(159, 'fa fa-file-sound-o'),
(160, 'fa fa-file-video-o'),
(161, 'fa fa-file-word-o'),
(162, 'fa fa-file-zip-o'),
(163, 'fa fa-film'),
(164, 'fa fa-filter'),
(165, 'fa fa-fire'),
(166, 'fa fa-fire-extinguisher'),
(167, 'fa fa-flag'),
(168, 'fa fa-flag-checkered'),
(169, 'fa fa-flag-o'),
(170, 'fa fa-flash'),
(171, 'fa fa-flask'),
(172, 'fa fa-folder'),
(173, 'fa fa-folder-o'),
(174, 'fa fa-folder-open'),
(175, 'fa fa-folder-open-o'),
(176, 'fa fa-frown-o'),
(177, 'fa fa-futbol-o'),
(178, 'fa fa-gamepad'),
(179, 'fa fa-gavel'),
(180, 'fa fa-gear'),
(181, 'fa fa-gears'),
(182, 'fa fa-genderless'),
(183, 'fa fa-gift'),
(184, 'fa fa-glass'),
(185, 'fa fa-globe'),
(186, 'fa fa-graduation-cap'),
(187, 'fa fa-group'),
(188, 'fa fa-hdd-o'),
(189, 'fa fa-headphones'),
(190, 'fa fa-heart'),
(191, 'fa fa-heart-o'),
(192, 'fa fa-heartbeat'),
(193, 'fa fa-history'),
(194, 'fa fa-home'),
(195, 'fa fa-hotel'),
(196, 'fa fa-image'),
(197, 'fa fa-inbox'),
(198, 'fa fa-info'),
(199, 'fa fa-info-circle'),
(200, 'fa fa-institution'),
(201, 'fa fa-key'),
(202, 'fa fa-keyboard-o'),
(203, 'fa fa-language'),
(204, 'fa fa-laptop'),
(205, 'fa fa-leaf'),
(206, 'fa fa-legal'),
(207, 'fa fa-lemon-o'),
(208, 'fa fa-level-down'),
(209, 'fa fa-level-up'),
(210, 'fa fa-life-bouy'),
(211, 'fa fa-life-buoy'),
(212, 'fa fa-life-ring'),
(213, 'fa fa-life-saver'),
(214, 'fa fa-lightbulb-o'),
(215, 'fa fa-line-chart'),
(216, 'fa fa-location-arrow'),
(217, 'fa fa-lock'),
(218, 'fa fa-magic'),
(219, 'fa fa-magnet'),
(220, 'fa fa-mail-forward'),
(221, 'fa fa-mail-reply'),
(222, 'fa fa-mail-reply-all'),
(223, 'fa fa-male'),
(224, 'fa fa-map-marker'),
(225, 'fa fa-meh-o'),
(226, 'fa fa-microphone'),
(227, 'fa fa-microphone-slash'),
(228, 'fa fa-minus'),
(229, 'fa fa-minus-circle'),
(230, 'fa fa-minus-square'),
(231, 'fa fa-minus-square-o'),
(232, 'fa fa-mobile'),
(233, 'fa fa-mobile-phone'),
(234, 'fa fa-money'),
(235, 'fa fa-moon-o'),
(236, 'fa fa-mortar-board'),
(237, 'fa fa-motorcycle'),
(238, 'fa fa-music'),
(239, 'fa fa-navicon'),
(240, 'fa fa-newspaper-o'),
(241, 'fa fa-paint-brush'),
(242, 'fa fa-paper-plane'),
(243, 'fa fa-paper-plane-o'),
(244, 'fa fa-paw'),
(245, 'fa fa-pencil'),
(246, 'fa fa-pencil-square'),
(247, 'fa fa-pencil-square-o'),
(248, 'fa fa-phone'),
(249, 'fa fa-phone-square'),
(250, 'fa fa-photo'),
(251, 'fa fa-picture-o'),
(252, 'fa fa-pie-chart'),
(253, 'fa fa-plane'),
(254, 'fa fa-plug'),
(255, 'fa fa-plus'),
(256, 'fa fa-plus-circle'),
(257, 'fa fa-plus-square'),
(258, 'fa fa-plus-square-o'),
(259, 'fa fa-power-off'),
(260, 'fa fa-print'),
(261, 'fa fa-puzzle-piece'),
(262, 'fa fa-qrcode'),
(263, 'fa fa-question'),
(264, 'fa fa-question-circle'),
(265, 'fa fa-quote-left'),
(266, 'fa fa-quote-right'),
(267, 'fa fa-random'),
(268, 'fa fa-recycle'),
(269, 'fa fa-refresh'),
(270, 'fa fa-remove'),
(271, 'fa fa-reorder'),
(272, 'fa fa-reply'),
(273, 'fa fa-reply-all'),
(274, 'fa fa-retweet'),
(275, 'fa fa-road'),
(276, 'fa fa-rocket'),
(277, 'fa fa-rss'),
(278, 'fa fa-rss-square'),
(279, 'fa fa-search'),
(280, 'fa fa-search-minus'),
(281, 'fa fa-search-plus'),
(282, 'fa fa-send'),
(283, 'fa fa-send-o'),
(284, 'fa fa-server'),
(285, 'fa fa-share'),
(286, 'fa fa-share-alt'),
(287, 'fa fa-share-alt-square'),
(288, 'fa fa-share-square'),
(289, 'fa fa-share-square-o'),
(290, 'fa fa-shield'),
(291, 'fa fa-ship'),
(292, 'fa fa-shopping-cart'),
(293, 'fa fa-sign-in'),
(294, 'fa fa-sign-out'),
(295, 'fa fa-signal'),
(296, 'fa fa-sitemap'),
(297, 'fa fa-sliders'),
(298, 'fa fa-smile-o'),
(299, 'fa fa-soccer-ball-o'),
(300, 'fa fa-sort'),
(301, 'fa fa-sort-alpha-asc'),
(302, 'fa fa-sort-alpha-desc'),
(303, 'fa fa-sort-amount-asc'),
(304, 'fa fa-sort-amount-desc'),
(305, 'fa fa-sort-asc'),
(306, 'fa fa-sort-desc'),
(307, 'fa fa-sort-down'),
(308, 'fa fa-sort-numeric-asc'),
(309, 'fa fa-sort-numeric-desc'),
(310, 'fa fa-sort-up'),
(311, 'fa fa-space-shuttle'),
(312, 'fa fa-spinner'),
(313, 'fa fa-spoon'),
(314, 'fa fa-square'),
(315, 'fa fa-square-o'),
(316, 'fa fa-star'),
(317, 'fa fa-star-half'),
(318, 'fa fa-star-half-empty'),
(319, 'fa fa-star-half-full'),
(320, 'fa fa-star-half-o'),
(321, 'fa fa-star-o'),
(322, 'fa fa-street-view'),
(323, 'fa fa-suitcase'),
(324, 'fa fa-sun-o'),
(325, 'fa fa-support'),
(326, 'fa fa-tablet'),
(327, 'fa fa-tachometer'),
(328, 'fa fa-tag'),
(329, 'fa fa-tags'),
(330, 'fa fa-tasks'),
(331, 'fa fa-taxi'),
(332, 'fa fa-terminal'),
(333, 'fa fa-thumb-tack'),
(334, 'fa fa-thumbs-down'),
(335, 'fa fa-thumbs-o-down'),
(336, 'fa fa-thumbs-o-up'),
(337, 'fa fa-thumbs-up'),
(338, 'fa fa-ticket'),
(339, 'fa fa-times'),
(340, 'fa fa-times-circle'),
(341, 'fa fa-times-circle-o'),
(342, 'fa fa-tint'),
(343, 'fa fa-toggle-down'),
(344, 'fa fa-toggle-left'),
(345, 'fa fa-toggle-off'),
(346, 'fa fa-toggle-on'),
(347, 'fa fa-toggle-right'),
(348, 'fa fa-toggle-up'),
(349, 'fa fa-trash'),
(350, 'fa fa-trash-o'),
(351, 'fa fa-tree'),
(352, 'fa fa-trophy'),
(353, 'fa fa-truck'),
(354, 'fa fa-tty'),
(355, 'fa fa-umbrella'),
(356, 'fa fa-university'),
(357, 'fa fa-unlock'),
(358, 'fa fa-unlock-alt'),
(359, 'fa fa-unsorted'),
(360, 'fa fa-upload'),
(361, 'fa fa-user'),
(362, 'fa fa-user-plus'),
(363, 'fa fa-user-secret'),
(364, 'fa fa-user-times'),
(365, 'fa fa-users'),
(366, 'fa fa-video-camera'),
(367, 'fa fa-volume-down'),
(368, 'fa fa-volume-off'),
(369, 'fa fa-volume-up'),
(370, 'fa fa-warning'),
(371, 'fa fa-wheelchair'),
(372, 'fa fa-wifi'),
(373, 'fa fa-wrench'),
(374, 'fa fa-ambulance'),
(375, 'fa fa-automobile'),
(376, 'fa fa-bicycle'),
(377, 'fa fa-bus'),
(378, 'fa fa-cab'),
(379, 'fa fa-car'),
(380, 'fa fa-fighter-jet'),
(381, 'fa fa-motorcycle'),
(382, 'fa fa-plane'),
(383, 'fa fa-rocket'),
(384, 'fa fa-ship'),
(385, 'fa fa-space-shuttle'),
(386, 'fa fa-subway'),
(387, 'fa fa-taxi'),
(388, 'fa fa-train'),
(389, 'fa fa-truck'),
(390, 'fa fa-wheelchair'),
(391, 'fa fa-circle-thin'),
(392, 'fa fa-genderless'),
(393, 'fa fa-mars'),
(394, 'fa fa-mars-double'),
(395, 'fa fa-mars-stroke'),
(396, 'fa fa-mars-stroke-h'),
(397, 'fa fa-mars-stroke-v'),
(398, 'fa fa-mercury'),
(399, 'fa fa-neuter'),
(400, 'fa fa-transgender'),
(401, 'fa fa-transgender-alt'),
(402, 'fa fa-venus'),
(403, 'fa fa-venus-double'),
(404, 'fa fa-venus-mars'),
(405, 'fa fa-file'),
(406, 'fa fa-file-archive-o'),
(407, 'fa fa-file-audio-o'),
(408, 'fa fa-file-code-o'),
(409, 'fa fa-file-excel-o'),
(410, 'fa fa-file-image-o'),
(411, 'fa fa-file-movie-o'),
(412, 'fa fa-file-o'),
(413, 'fa fa-file-pdf-o'),
(414, 'fa fa-file-photo-o'),
(415, 'fa fa-file-picture-o'),
(416, 'fa fa-file-powerpoint-o'),
(417, 'fa fa-file-sound-o'),
(418, 'fa fa-file-text'),
(419, 'fa fa-file-text-o'),
(420, 'fa fa-file-video-o'),
(421, 'fa fa-file-word-o'),
(422, 'fa fa-file-zip-o'),
(423, 'fa fa-cog fa-spin'),
(424, 'fa fa-gear fa-spin'),
(425, 'fa fa-refresh fa-spin'),
(426, 'fa fa-spinner fa-spin'),
(427, 'fa fa-check-square'),
(428, 'fa fa-check-square-o'),
(429, 'fa fa-circle'),
(430, 'fa fa-circle-o'),
(431, 'fa fafa fa-dot-circle-o'),
(432, 'fa fa-minus-square'),
(433, 'fa fa-minus-square-o'),
(434, 'fa fa-plus-square'),
(435, 'fa fa-plus-square-o'),
(436, 'fa fa-square'),
(437, 'fa fa-square-o'),
(438, 'fa fa-cc-amex'),
(439, 'fa fa-cc-discover'),
(440, 'fa fa-cc-mastercard'),
(441, 'fa fa-cc-paypal'),
(442, 'fa fa-cc-stripe'),
(443, 'fa fa-cc-visa'),
(444, 'fa fa-credit-card'),
(445, 'fa fa-google-wallet'),
(446, 'fa fa-paypal'),
(447, 'fa fa-area-chart'),
(448, 'fa fa-bar-chart'),
(449, 'fa fa-bar-chart-o'),
(450, 'fa fa-line-chart'),
(451, 'fa fa-pie-chart'),
(452, 'fa fa-bitcoin'),
(453, 'fa fa-btc'),
(454, 'fa fa-cny'),
(455, 'fa fa-dollar'),
(456, 'fa fa-eur'),
(457, 'fa fa-euro'),
(458, 'fa fa-gbp'),
(459, 'fa fa-ils'),
(460, 'fa fa-inr'),
(461, 'fa fa-jpy'),
(462, 'fa fa-krw'),
(463, 'fa fa-money'),
(464, 'fa fa-rmb'),
(465, 'fa fa-rouble'),
(466, 'fa fa-rub'),
(467, 'fa fa-ruble'),
(468, 'fa fa-rupee'),
(469, 'fa fa-shekel'),
(470, 'fa fa-sheqel'),
(471, 'fa fa-try'),
(472, 'fa fa-turkish-lira'),
(473, 'fa fa-usd'),
(474, 'fa fa-won'),
(475, 'fa fa-yen'),
(476, 'fa fa-align-center'),
(477, 'fa fa-align-justify'),
(478, 'fa fa-align-left'),
(479, 'fa fa-align-right'),
(480, 'fa fa-bold'),
(481, 'fa fa-chain'),
(482, 'fa fa-chain-broken'),
(483, 'fa fa-clipboard'),
(484, 'fa fa-columns'),
(485, 'fa fa-copy'),
(486, 'fa fa-cut'),
(487, 'fa fa-dedent'),
(488, 'fa fa-eraser'),
(489, 'fa fa-file'),
(490, 'fa fa-file-o'),
(491, 'fa fa-file-text'),
(492, 'fa fa-file-text-o'),
(493, 'fa fa-files-o'),
(494, 'fa fa-floppy-o'),
(495, 'fa fa-font'),
(496, 'fa fa-header'),
(497, 'fa fa-indent'),
(498, 'fa fa-italic'),
(499, 'fa fa-link'),
(500, 'fa fa-list'),
(501, 'fa fa-list-alt'),
(502, 'fa fa-list-ol'),
(503, 'fa fa-list-ul'),
(504, 'fa fa-outdent'),
(505, 'fa fa-paperclip'),
(506, 'fa fa-paragraph'),
(507, 'fa fa-paste'),
(508, 'fa fa-repeat'),
(509, 'fa fa-rotate-left'),
(510, 'fa fa-rotate-right'),
(511, 'fa fa-save'),
(512, 'fa fa-scissors'),
(513, 'fa fa-strikethrough'),
(514, 'fa fa-subscript'),
(515, 'fa fa-superscript'),
(516, 'fa fa-table'),
(517, 'fa fa-text-height'),
(518, 'fa fa-text-width'),
(519, 'fa fa-th'),
(520, 'fa fa-th-large'),
(521, 'fa fa-th-list'),
(522, 'fa fa-underline'),
(523, 'fa fa-undo'),
(524, 'fa fa-unlink'),
(525, 'fa fa-angle-double-down'),
(526, 'fa fa-angle-double-left'),
(527, 'fa fa-angle-double-right'),
(528, 'fa fa-angle-double-up'),
(529, 'fa fa-angle-down'),
(530, 'fa fa-angle-left'),
(531, 'fa fa-angle-right'),
(532, 'fa fa-angle-up'),
(533, 'fa fa-arrow-circle-down'),
(534, 'fa fa-arrow-circle-left'),
(535, 'fa fa-arrow-circle-o-down'),
(536, 'fa fa-arrow-circle-o-left'),
(537, 'fa fa-arrow-circle-o-right'),
(538, 'fa fa-arrow-circle-o-up'),
(539, 'fa fa-arrow-circle-right'),
(540, 'fa fa-arrow-circle-up'),
(541, 'fa fa-arrow-down'),
(542, 'fa fa-arrow-left'),
(543, 'fa fa-arrow-right'),
(544, 'fa fa-arrow-up'),
(545, 'fa fa-arrows'),
(546, 'fa fa-arrows-alt'),
(547, 'fa fa-arrows-h'),
(548, 'fa fa-arrows-v'),
(549, 'fa fa-caret-down'),
(550, 'fa fa-caret-left'),
(551, 'fa fa-caret-right'),
(552, 'fa fa-caret-square-o-down'),
(553, 'fa fa-caret-square-o-left'),
(554, 'fa fa-caret-square-o-right'),
(555, 'fa fa-caret-square-o-up'),
(556, 'fa fa-caret-up'),
(557, 'fa fa-chevron-circle-down'),
(558, 'fa fa-chevron-circle-left'),
(559, 'fa fa-chevron-circle-right'),
(560, 'fa fa-chevron-circle-up'),
(561, 'fa fa-chevron-down'),
(562, 'fa fa-chevron-left'),
(563, 'fa fa-chevron-right'),
(564, 'fa fa-chevron-up'),
(565, 'fa fa-hand-o-down'),
(566, 'fa fa-hand-o-left'),
(567, 'fa fa-hand-o-right'),
(568, 'fa fa-hand-o-up'),
(569, 'fa fa-long-arrow-down'),
(570, 'fa fa-long-arrow-left'),
(571, 'fa fa-long-arrow-right'),
(572, 'fa fa-long-arrow-up'),
(573, 'fa fa-toggle-down'),
(574, 'fa fa-toggle-left'),
(575, 'fa fa-toggle-right'),
(576, 'fa fa-toggle-up'),
(577, 'fa fa-arrows-alt'),
(578, 'fa fa-backward'),
(579, 'fa fa-compress'),
(580, 'fa fa-eject'),
(581, 'fa fa-expand'),
(582, 'fa fa-fast-backward'),
(583, 'fa fa-fast-forward'),
(584, 'fa fa-forward'),
(585, 'fa fa-pause'),
(586, 'fa fa-play'),
(587, 'fa fa-play-circle'),
(588, 'fa fa-play-circle-o'),
(589, 'fa fa-step-backward'),
(590, 'fa fa-step-forward'),
(591, 'fa fa-stop'),
(592, 'fa fa-youtube-play'),
(593, 'fa fa-adn'),
(594, 'fa fa-android'),
(595, 'fa fa-angellist'),
(596, 'fa fa-apple'),
(597, 'fa fa-behance'),
(598, 'fa fa-behance-square'),
(599, 'fa fa-bitbucket'),
(600, 'fa fa-bitbucket-square'),
(601, 'fa fa-bitcoin'),
(602, 'fa fa-btc'),
(603, 'fa fa-buysellads'),
(604, 'fa fa-cc-amex'),
(605, 'fa fa-cc-discover'),
(606, 'fa fa-cc-mastercard'),
(607, 'fa fa-cc-paypal'),
(608, 'fa fa-cc-stripe'),
(609, 'fa fa-cc-visa'),
(610, 'fa fa-codepen'),
(611, 'fa fa-connectdevelop'),
(612, 'fa fa-css3'),
(613, 'fa fa-dashcube'),
(614, 'fa fa-delicious'),
(615, 'fa fa-deviantart'),
(616, 'fa fa-digg'),
(617, 'fa fa-dribbble'),
(618, 'fa fa-dropbox'),
(619, 'fa fa-drupal'),
(620, 'fa fa-empire'),
(621, 'fa fa-facebook'),
(622, 'fa fa-facebook-f'),
(623, 'fa fa-facebook-square'),
(624, 'fa fa-flickr'),
(625, 'fa fa-forumbee'),
(626, 'fa fa-foursquare'),
(627, 'fa fa-ge'),
(628, 'fa fa-git'),
(629, 'fa fa-git-square'),
(630, 'fa fa-github'),
(631, 'fa fa-github-alt'),
(632, 'fa fa-github-square'),
(633, 'fa fa-gittip'),
(634, 'fa fa-google'),
(635, 'fa fa-google-plus'),
(636, 'fa fa-google-plus-square'),
(637, 'fa fa-google-wallet'),
(638, 'fa fa-gratipay'),
(639, 'fa fa-hacker-news'),
(640, 'fa fa-html5'),
(641, 'fa fa-instagram'),
(642, 'fa fa-ioxhost'),
(643, 'fa fa-joomla'),
(644, 'fa fa-jsfiddle'),
(645, 'fa fa-lastfm'),
(646, 'fa fa-lastfm-square'),
(647, 'fa fa-leanpub'),
(648, 'fa fa-linkedin'),
(649, 'fa fa-linkedin-square'),
(650, 'fa fa-linux'),
(651, 'fa fa-maxcdn'),
(652, 'fa fa-meanpath'),
(653, 'fa fa-medium'),
(654, 'fa fa-openid'),
(655, 'fa fa-pagelines'),
(656, 'fa fa-paypal'),
(657, 'fa fa-pied-piper'),
(658, 'fa fa-pied-piper-alt'),
(659, 'fa fa-pinterest'),
(660, 'fa fa-pinterest-p'),
(661, 'fa fa-pinterest-square'),
(662, 'fa fa-qq'),
(663, 'fa fa-ra'),
(664, 'fa fa-rebel'),
(665, 'fa fa-reddit'),
(666, 'fa fa-reddit-square'),
(667, 'fa fa-renren'),
(668, 'fa fa-sellsy'),
(669, 'fa fa-share-alt'),
(670, 'fa fa-share-alt-square'),
(671, 'fa fa-shirtsinbulk'),
(672, 'fa fa-simplybuilt'),
(673, 'fa fa-skyatlas'),
(674, 'fa fa-skype'),
(675, 'fa fa-slack'),
(676, 'fa fa-slideshare'),
(677, 'fa fa-soundcloud'),
(678, 'fa fa-spotify'),
(679, 'fa fa-stack-exchange'),
(680, 'fa fa-stack-overflow'),
(681, 'fa fa-steam'),
(682, 'fa fa-steam-square'),
(683, 'fa fa-stumbleupon'),
(684, 'fa fa-stumbleupon-circle'),
(685, 'fa fa-tencent-weibo'),
(686, 'fa fa-trello'),
(687, 'fa fa-tumblr'),
(688, 'fa fa-tumblr-square'),
(689, 'fa fa-twitch'),
(690, 'fa fa-twitter'),
(691, 'fa fa-twitter-square'),
(692, 'fa fa-viacoin'),
(693, 'fa fa-vimeo-square'),
(694, 'fa fa-vine'),
(695, 'fa fa-vk'),
(696, 'fa fa-wechat'),
(697, 'fa fa-weibo'),
(698, 'fa fa-weixin'),
(699, 'fa fa-whatsapp'),
(700, 'fa fa-windows'),
(701, 'fa fa-wordpress'),
(702, 'fa fa-xing'),
(703, 'fa fa-xing-square'),
(704, 'fa fa-yahoo'),
(705, 'fa fa-yelp'),
(706, 'fa fa-youtube'),
(707, 'fa fa-youtube-square'),
(708, 'fa fa-ambulance'),
(709, 'fa fa-h-square'),
(710, 'fa fa-heart'),
(711, 'fa fa-heart-o'),
(712, 'fa fa-heartbeat'),
(713, 'fa fa-hospital-o'),
(714, 'fa fa-medkit'),
(715, 'fa fa-plus-square'),
(716, 'fa fa-stethoscope'),
(717, 'fa fa-user-md'),
(718, 'fa fa-wheelchair');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo1`
--

CREATE TABLE `modulo1` (
  `modulo1_id` int(11) NOT NULL,
  `modulo1_nome` varchar(200) DEFAULT NULL,
  `modulo1_subtitulo1` text,
  `modulo1_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo1`
--

INSERT INTO `modulo1` (`modulo1_id`, `modulo1_nome`, `modulo1_subtitulo1`, `modulo1_status`) VALUES
(1, 'Bem vindo ao nosso site! ', 'Tenha tambÃ©m seu site para noivos com Painel de Controle + App Android', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo2`
--

CREATE TABLE `modulo2` (
  `modulo2_id` int(11) NOT NULL,
  `modulo2_nome` text NOT NULL,
  `modulo2_nome1` text NOT NULL,
  `modulo2_nome2` varchar(200) DEFAULT NULL,
  `modulo2_nome3` varchar(200) DEFAULT NULL,
  `modulo2_nome4` varchar(200) DEFAULT NULL,
  `modulo2_nome5` varchar(200) DEFAULT NULL,
  `modulo2_nome6` varchar(200) DEFAULT NULL,
  `modulo2_nome7` varchar(200) DEFAULT NULL,
  `modulo2_nome8` varchar(200) DEFAULT NULL,
  `modulo2_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo2`
--

INSERT INTO `modulo2` (`modulo2_id`, `modulo2_nome`, `modulo2_nome1`, `modulo2_nome2`, `modulo2_nome3`, `modulo2_nome4`, `modulo2_nome5`, `modulo2_nome6`, `modulo2_nome7`, `modulo2_nome8`, `modulo2_status`) VALUES
(1, 'Home', 'Sobre NÃ³s', 'Ãlbum de Fotos', 'Lista de Presentes', 'RSVP', 'Blog', 'Price', 'Blog', 'Contato', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo3`
--

CREATE TABLE `modulo3` (
  `modulo3_id` int(11) NOT NULL,
  `modulo3_nome` text,
  `modulo3_descricao` longtext,
  `modulo3_status` int(11) DEFAULT '0',
  `modulo3_imagem` varchar(200) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo3`
--

INSERT INTO `modulo3` (`modulo3_id`, `modulo3_nome`, `modulo3_descricao`, `modulo3_status`, `modulo3_imagem`) VALUES
(1, 'Nossa Empresa', '<p class=\"mb30\" style=\"margin-bottom: 3em; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">Eu velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent et dolor ac erat tempor auctor a in odio. Quisque sollicitudin elementum tristique. Phasellus ultrices tincidunt nulla ut fringilla. Nam interdum enim a mauris accumsan congue. Vivamus vitae leo lacus. Etiam mattis neque mollis eros hendrerit et dictum lacus feugiat. Aliquam sit amet sem erat. In lobortis erat non ipsum rutrum molestie.</p><p style=\"margin-bottom: 12px; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">Curabitur turpis orci, gravida non ornare id, venenatis nec enim. Praesent posuere condimentum leo eget volutpat. Maecenas in ligula in lacus aliquam ultricies scelerisque vitae nisl. Pellentesque quam dui, cursus in mollis sed, pretium quis dui. Proin ac nibh et leo malesuada congue. Phasellus adipiscing lectus quis nisl bibendum nec hendrerit elit lacinia. Pellentesque mauris enim, varius scelerisque suscipit at, volutpat at dui. Ut aliquam lectus nunc. Sed non neque id lectus auctor facilisis id quis felis. Vivamus quis lectus erat. Donec sit amet nibh eget felis feugiat pulvinar. Integer in consectetur nibh.</p><hr style=\"color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\"><h3 style=\"font-family: \'PT Sans\', sans-serif; line-height: 1.25em; color: rgb(51, 51, 51); margin: 0px 0px 1em; font-size: 19px; background-color: rgb(254, 254, 254);\">Pellentesque libero est, sagittis eget vestibulum ut</h3><p style=\"margin-bottom: 12px; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">facilisis porttitor nisl. Nulla scelerisque lectus id ipsum sollicitudin euismod. Mauris fermentum erat a ante tincidunt id condimentum lorem sodales. Nam lacus justo, porttitor sit amet egestas sit amet, scelerisque non nibh. Ut ultricies orci vitae nisl viverra quis tempus nulla ultricies. Etiam lorem tellus, porttitor nec fermentum sed, scelerisque eget sapien. Fusce quam turpis, bibendum eu pretium ut, vehicula eget mi. Aliquam erat volutpat.</p><h3 style=\"font-family: \'PT Sans\', sans-serif; line-height: 1.25em; color: rgb(51, 51, 51); margin: 0px 0px 1em; font-size: 19px; background-color: rgb(254, 254, 254);\">Lorem ipsum dolor</h3><p style=\"margin-bottom: 12px; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">mauris in facilisis venenatis, sapien purus fringilla risus, eu vestibulum lacus dolor et ante. Praesent semper quam ac sem adipiscing rhoncus. Integer pellentesque, augue ut feugiat laoreet, eros nulla vulputate quam, in tristique dolor odio non neque. Nullam convallis dapibus dolor, quis imperdiet mi fringilla quis. Donec lorem libero, pretium accumsan condimentum ut, dignissim vel augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu scelerisque sem.</p><h4 style=\"font-family: \'PT Sans\', sans-serif; line-height: 1.25em; color: rgb(51, 51, 51); margin: 0px 0px 1em; background-color: rgb(254, 254, 254);\">Integer viverra purus eu lacus ultrices</h4><p style=\"margin-bottom: 12px; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">ac volutpat metus blandit. Phasellus a sollicitudin elit. Nullam a urna nulla, aliquet adipiscing tellus. Vestibulum sit amet lectus sit amet risus molestie rutrum. Vivamus purus metus, blandit sed aliquam eu, auctor bibendum risus. In hac habitasse platea dictumst.</p><p style=\"margin-bottom: 12px; color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">Fusce ut condimentum dui. Vivamus diam diam, vestibulum et dictum id, faucibus non massa. Nullam elit eros, feugiat quis feugiat pharetra, viverra eu eros. Ut ac risus diam, at volutpat leo. Fusce facilisis sodales mauris at laoreet. Etiam molestie rhoncus rutrum. Aenean pulvinar sodales nisi, sed tristique eros pretium in. Sed eget libero lectus, ac hendrerit dolor. Donec congue libero quis magna euismod quis tempus nibh adipiscing. Mauris condimentum turpis eu ipsum varius posuere. Nunc non libero orci, eu lobortis lorem.</p>', 1, '1510791488.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo4`
--

CREATE TABLE `modulo4` (
  `modulo4_id` int(11) NOT NULL,
  `modulo4_descricao` text,
  `modulo4_imagem` varchar(200) NOT NULL,
  `modulo4_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo4`
--

INSERT INTO `modulo4` (`modulo4_id`, `modulo4_descricao`, `modulo4_imagem`, `modulo4_status`) VALUES
(1, 'A vida Ã© minha. Mas o coraÃ§Ã£o, Ã© seu. O sorriso Ã© meu. Mas o motivo, Ã© vocÃª.', 'parallax-3.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo5`
--

CREATE TABLE `modulo5` (
  `modulo5_id` int(11) NOT NULL,
  `modulo5_nome` varchar(200) DEFAULT NULL,
  `modulo5_descricao` text,
  `modulo5_status` int(11) DEFAULT NULL,
  `modulo5_imagem` varchar(200) DEFAULT NULL,
  `modulo5_limite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo5`
--

INSERT INTO `modulo5` (`modulo5_id`, `modulo5_nome`, `modulo5_descricao`, `modulo5_status`, `modulo5_imagem`, `modulo5_limite`) VALUES
(1, '<span class=\"condiment\"> Depoimentos</span>', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and by the <span class=\"dark bold\">charms</span> of pleasure of the moment, so blinded by desire, that they cannot foresee the pain ', 1, 'i3.jpg', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo6`
--

CREATE TABLE `modulo6` (
  `modulo6_id` int(11) NOT NULL,
  `modulo6_nome` varchar(200) DEFAULT NULL,
  `modulo6_descricao` text NOT NULL,
  `modulo6_nome1` text NOT NULL,
  `modulo6_descricao1` text NOT NULL,
  `modulo6_imagem` varchar(200) DEFAULT NULL,
  `modulo6_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo6`
--

INSERT INTO `modulo6` (`modulo6_id`, `modulo6_nome`, `modulo6_descricao`, `modulo6_nome1`, `modulo6_descricao1`, `modulo6_imagem`, `modulo6_status`) VALUES
(1, 'serviÃ§os', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain  teste', '<span class=\"condiment\">Porque escolher  Oxygen ?</span>', '                            <ul>   \r\n  <li class=\"h-item uppercase \">100% Responsive Design</li>\r\n                                <li class=\"h-item uppercase \">html5 & css3</li>\r\n                                <li class=\"h-item uppercase \">Clean coding</li>\r\n                                <li class=\"h-item uppercase \">Easy customizable</li>\r\n                                <li class=\"h-item uppercase \">Retina ready </li>\r\n                                <li class=\"h-item uppercase \">7X24 support</li>\r\n</ul>      ', 'i1.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo7`
--

CREATE TABLE `modulo7` (
  `modulo7_id` int(11) NOT NULL,
  `modulo7_nome` varchar(200) DEFAULT NULL,
  `modulo7_descricao` text,
  `modulo7_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo7`
--

INSERT INTO `modulo7` (`modulo7_id`, `modulo7_nome`, `modulo7_descricao`, `modulo7_status`) VALUES
(1, 'Ãlbum de Fotos', 'Veja nossas Ãºltimas fotos e acompanhe nossa jornada!', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo8`
--

CREATE TABLE `modulo8` (
  `modulo8_id` int(11) NOT NULL,
  `modulo8_nome` varchar(200) DEFAULT NULL,
  `modulo8_descricao` text,
  `modulo8_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo8`
--

INSERT INTO `modulo8` (`modulo8_id`, `modulo8_nome`, `modulo8_descricao`, `modulo8_status`) VALUES
(1, 'Nossos Pais', 'ConheÃ§am nossos pais! ', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo9`
--

CREATE TABLE `modulo9` (
  `modulo9_id` int(11) NOT NULL,
  `modulo9_nome` varchar(200) DEFAULT NULL,
  `modulo9_subtitulo` text,
  `modulo9_button` varchar(200) DEFAULT NULL,
  `modulo9_imagem` varchar(200) NOT NULL,
  `modulo9_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo9`
--

INSERT INTO `modulo9` (`modulo9_id`, `modulo9_nome`, `modulo9_subtitulo`, `modulo9_button`, `modulo9_imagem`, `modulo9_status`) VALUES
(1, 'Entre em <span class=\"extrabold\">Contato</span>', 'Escreva para nÃ³s, vamos trocar algums ideias. Fique por perto!', 'Enviar Mensagem', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo10`
--

CREATE TABLE `modulo10` (
  `modulo10_id` int(11) NOT NULL,
  `modulo10_nome` varchar(200) DEFAULT NULL,
  `modulo10_subtitulo` varchar(200) DEFAULT NULL,
  `modulo10_icon` varchar(200) DEFAULT NULL,
  `modulo10_button` varchar(200) DEFAULT NULL,
  `modulo10_button1` varchar(200) DEFAULT NULL,
  `modulo10_status` varchar(200) DEFAULT NULL,
  `modulo10_imagem` varchar(200) DEFAULT NULL,
  `modulo10_paginacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo10`
--

INSERT INTO `modulo10` (`modulo10_id`, `modulo10_nome`, `modulo10_subtitulo`, `modulo10_icon`, `modulo10_button`, `modulo10_button1`, `modulo10_status`, `modulo10_imagem`, `modulo10_paginacao`) VALUES
(1, 'Nossa Lista de Presentes !', 'Presentei os noivos e pague em atÃ© 12x pelo Pagseguro.', '', 'ComentÃ¡rios', 'leia mais', '1', NULL, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo11`
--

CREATE TABLE `modulo11` (
  `modulo11_id` int(11) NOT NULL,
  `modulo11_nome` varchar(200) DEFAULT NULL,
  `modulo11_button` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo11`
--

INSERT INTO `modulo11` (`modulo11_id`, `modulo11_nome`, `modulo11_button`) VALUES
(1, 'Onde estamos? clique no mapa', ' Â© 2017 Todos os direitos reservados. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo_aparencia`
--

CREATE TABLE `modulo_aparencia` (
  `modulo_aparencia_id` int(11) NOT NULL,
  `modulo_aparencia_cor` varchar(200) DEFAULT NULL,
  `modulo_aparencia_favicon` varchar(200) DEFAULT NULL,
  `modulo_aparencia_logo` varchar(200) DEFAULT NULL,
  `modulo_aparencia_wide` varchar(20) NOT NULL DEFAULT 'bwide'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modulo_aparencia`
--

INSERT INTO `modulo_aparencia` (`modulo_aparencia_id`, `modulo_aparencia_cor`, `modulo_aparencia_favicon`, `modulo_aparencia_logo`, `modulo_aparencia_wide`) VALUES
(1, 'blue', 'favicon.ico', '1516150710.png', 'bwide');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--

CREATE TABLE `pagina` (
  `pagina_id` int(11) NOT NULL,
  `pagina_nome` varchar(200) DEFAULT NULL,
  `pagina_imagem` varchar(200) DEFAULT NULL,
  `pagina_descricao` longtext,
  `pagina_pos` int(11) DEFAULT '0',
  `pagina_area` int(11) DEFAULT NULL,
  `pagina_data` varchar(200) DEFAULT NULL,
  `pagina_autor` varchar(200) DEFAULT NULL,
  `pagina_description` varchar(200) DEFAULT NULL,
  `pagina_keywords` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagina`
--

INSERT INTO `pagina` (`pagina_id`, `pagina_nome`, `pagina_imagem`, `pagina_descricao`, `pagina_pos`, `pagina_area`, `pagina_data`, `pagina_autor`, `pagina_description`, `pagina_keywords`) VALUES
(57, 'Liquidificador Philips Viva Problend 6 - 5 Velocidades 700W', '1516145747.jpg', '<h2 class=\"description__product-title\" style=\"margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; clear: both; color: rgb(64, 64, 64); font-family: arial, tahoma, verdana, sans-serif;\">Liquidificador Philips Viva Problend 6 - 5 Velocidades 700W</h2><p class=\"description__text\" style=\"margin-bottom: 30px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: transparent; color: rgb(64, 64, 64); font-family: arial, tahoma, verdana, sans-serif;\"></p><p><span style=\"color: rgb(64, 64, 64); font-family: arial, tahoma, verdana, sans-serif; font-size: 16px;\">Liquidificador ProBlend 6 LÃ¢minas da Philips. Ideal para fazer sucos, vitaminas, molhos, sopas, bolos e papinha de bebÃª perfeito para o seu dia a dia ele conta com a incrÃ­vel e exclusiva tecnologia ProBlend 6 LÃ¢minas. Isso significa que ele corta mais, cabe mais e dura mais! e como resultado tritura atÃ© 35 vezes mais fino. Com potÃªncia de 700W, 6 lÃ¢minas, jarra tamanho famÃ­lia (capacidade de 2,4L) e 2 anos de garantia, ele Ã© tudo o que vocÃª precisa na sua cozinha.</span><br></p>', 0, 12, '', '150,00', '', ''),
(58, 'RodÃ­zio de Carnes e Buffet Completo Ã  Vontade', '1516146018.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">A churrascaria PorcÃ£o possui um buffet completo, com mais de 30 especialidades de carnes nobres, alÃ©m de frios, saladas, frutos do mar, pratos quentes e comida japonesa Ã  vontade para vocÃª se fartar</span><br></p>', 0, 15, '', '60,00', '', ''),
(59, 'Mala de Viagem ABS-EVA Tamanho P e M', '1516149421.jpg', '<h5 style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px; padding: 0px 0px 15px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 25.5px; color: rgb(51, 51, 51); text-rendering: optimizeLegibility; font-size: 17px; background-color: rgb(255, 255, 255);\">Mala de Viagem ABS-EVA&nbsp;</h5><ul style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px; border-top: 0px;\">Fabricadas em EVA e ABS de excelente qualidade&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Com estrutura semirrÃ­gida para maior proteÃ§Ã£o de sua bagagem&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Rodas com giro 360Â° graus&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Com expansÃ­vel que aumenta a capacidade da mala&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Trava TSA recomendada pela SeguranÃ§a dos Transportes AÃ©reos&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">ResistÃªncia Ã  Ã¡gua para maior proteÃ§Ã£o de sua bagagem&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Interior totalmente forrado para melhor acabamento&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Etiqueta de identificaÃ§Ã£o posterior&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">AlÃ§a de mÃ£o superior e lateral para diversificar o transporte&nbsp;</li><li style=\"-webkit-font-smoothing: antialiased; outline: 0px; margin: 0px 0px 0px 14px; padding: 5px 0px;\">Cinta elÃ¡stica paralela que proporciona mais organizaÃ§Ã£o</li></ul>', 0, 16, '', '100,00', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `portfolio_nome` varchar(200) DEFAULT NULL,
  `portfolio_cliente` varchar(200) NOT NULL,
  `portfolio_data` varchar(200) DEFAULT NULL,
  `portfolio_imagem` varchar(200) DEFAULT NULL,
  `portfolio_descricao` longtext,
  `portfolio_area1` int(11) DEFAULT NULL,
  `portfolio_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `portfolio_nome`, `portfolio_cliente`, `portfolio_data`, `portfolio_imagem`, `portfolio_descricao`, `portfolio_area1`, `portfolio_url`) VALUES
(70, 'In Women & cats', 'Big International Company', '14/Novembro/2015', '1434834205.jpg', '<p><span style=\"color: rgb(119, 119, 119); font-family: \'PT Sans\', sans-serif; line-height: 22px; background-color: rgb(254, 254, 254);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate nunc ut tellus sollicitudin placerat. Sed ac consectetur leo. Pellentesque habitant morbi tristique senectus et netus...</span><br></p>', 5, 'www.google.com'),
(71, 'Projeto 007', 'Forest', '22/Maio/2015', '1434834225.jpg', '<p style=\"padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(0, 0, 0); font-family: arial; line-height: normal; background: transparent;\">Et integer tincidunt. Natoque! Urna dis parturient velit cum. Dolor? Tortor lorem dignissim urna! Vel nec diam integer. Sed augue enim odio tristique nec arcu lundium natoque, ut aliquet rhoncus et nunc? Magna urna, urna nisi? Scelerisque pulvinar elementum cras placerat integer, pid auctor nec magnis pid, porta, a nec et, phasellus cursus elementum, integer enim et, dapibus! Nascetur porttitor? Et, enim et facilisis! Ac adipiscing odio mattis. Placerat non, nascetur augue? Ultrices a et platea mattis? Ultricies ac scelerisque, tempor lectus! Nisi urna. Amet, mauris eu massa enim amet, ac, a turpis et nascetur lorem, aliquam cras et, mattis est lundium, lacus mus, sociis, proin porttitor non? Lacus scelerisque scelerisque. Scelerisque mauris dignissim aenean! Cras magnis a velit? Hac.</p><p style=\"padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(0, 0, 0); font-family: arial; line-height: normal; background: transparent;\">Et aliquam magnis velit augue, ac vel etiam! Porttitor magnis turpis, pulvinar mattis penatibus? Scelerisque integer platea parturient cum. Sed et, pulvinar porttitor ac! Pellentesque porttitor pellentesque diam nunc, integer in augue facilisis? Enim sit! Placerat sed purus integer in eu ut pid placerat, parturient tincidunt a integer nunc eros, magna aliquam ut porta tempor aenean! Sagittis. Placerat nec, porttitor ut eu adipiscing a turpis scelerisque diam scelerisque? Nisi scelerisque ut eros pulvinar amet! Eu, lorem odio? Integer vel sociis magnis. Nunc urna pulvinar lectus lundium egestas augue cum? Adipiscing elementum et aliquam tincidunt a ac auctor habitasse enim velit a elementum facilisis arcu hac duis a sociis in magnis dolor turpis dolor, nec ac rhoncus et vel nisi.</p>', 6, ''),
(72, 'Job 001', ' Envato', '07/Maio/2015', '1434834245.jpg', '<p><span style=\"color: rgb(0, 0, 0); font-family: arial; font-size: 13px; line-height: normal; background-color: rgb(255, 255, 255);\">Sed dictumst integer etiam enim pid magna ut elit mid phasellus natoque, cum et, urna vut, natoque aliquam! Montes porttitor dignissim ac sit phasellus. Facilisis enim elit a, mid ultrices pulvinar ridiculus turpis massa montes dolor! Dignissim mid pid tincidunt. Porta lacus dolor placerat porttitor, sit lectus porttitor! Dis. Enim turpis pulvinar duis tempor, pulvinar, et nec enim nec tristique.&nbsp;</span><br></p>', 5, 'www.google.com'),
(73, 'Ut Molestiae ', 'Laborum Animi', '17/Junho/2015', '1512707342.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 3, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `presente`
--

CREATE TABLE `presente` (
  `presente_id` int(11) NOT NULL,
  `presente_nome` varchar(200) DEFAULT NULL,
  `presente_cliente` varchar(200) NOT NULL,
  `presente_data` varchar(200) DEFAULT NULL,
  `presente_imagem` varchar(200) DEFAULT NULL,
  `presente_descricao` longtext,
  `presente_area2` int(11) DEFAULT NULL,
  `presente_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `servico_id` int(11) NOT NULL,
  `servico_nome` varchar(200) DEFAULT NULL,
  `servico_icon` varchar(200) DEFAULT NULL,
  `servico_descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`servico_id`, `servico_nome`, `servico_icon`, `servico_descricao`) VALUES
(1, 'Design Limpo', 'fa fa-desktop', 'Layouts elegantes que ajudam a organizar o conteÃºdo da melhor maneira'),
(2, 'Aplicativo Android', 'fa fa-android', 'O nosso site acompanha um aplicativo mobile, para versÃµes Android, com todo o conteÃºdo do site.'),
(3, 'Design Responsivo', 'fa fa-rocket', 'CompatÃ­vel com vÃ¡rios desktop, tablet e dispositivos mÃ³veis.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `site`
--

CREATE TABLE `site` (
  `site_id` int(11) NOT NULL,
  `site_meta_desc` text,
  `site_meta_palavra` varchar(200) DEFAULT NULL,
  `site_meta_titulo` varchar(200) DEFAULT NULL,
  `site_sobre_titulo` varchar(200) DEFAULT NULL,
  `site_sobre` varchar(200) DEFAULT NULL,
  `site_logo` varchar(200) DEFAULT NULL,
  `site_meta_autor` varchar(200) DEFAULT NULL,
  `site_imagem` varchar(200) DEFAULT NULL,
  `site_analytics` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `site`
--

INSERT INTO `site` (`site_id`, `site_meta_desc`, `site_meta_palavra`, `site_meta_titulo`, `site_sobre_titulo`, `site_sobre`, `site_logo`, `site_meta_autor`, `site_imagem`, `site_analytics`) VALUES
(1, 'Site Exclusivo para noivos com Painel Admin + App', 'noivos, site para noivos, template', 'Maria & JoÃ£o - Site para Noivos J&M', NULL, 'sobre', 'logo-small.png', 'J&M Tecnologia', 'parallax_bg11.jpg', 'UA-35826732-1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_imagem` varchar(200) DEFAULT NULL,
  `slide_nome` varchar(200) DEFAULT NULL,
  `slide_subtitulo` varchar(200) DEFAULT NULL,
  `slide_subtitulo1` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_imagem`, `slide_nome`, `slide_subtitulo`, `slide_subtitulo1`) VALUES
(18, '1516150136.jpg', 'Site da Maria & JoÃ£o', 'Nosso dia: 13/09/2018', ''),
(20, '1516150118.jpg', 'Site da Maria & JoÃ£o', 'Nosso dia: 13/09/2018', ''),
(21, '1516150001.jpg', 'Site da Maria & JoÃ£o', 'Nosso dia: 13/09/2018', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp`
--

CREATE TABLE `smtp` (
  `smtp_id` int(11) NOT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `smtp_fromname` varchar(200) DEFAULT NULL,
  `smtp_bcc` varchar(100) DEFAULT NULL,
  `smtp_replyto` varchar(100) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smtp`
--

INSERT INTO `smtp` (`smtp_id`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_fromname`, `smtp_bcc`, `smtp_replyto`, `smtp_port`) VALUES
(1, 'mail.seusite.com.br', 'seuemailDOdominio@seusite.com.br', '010203', 'PHP Staff', 'email_externo@gmail.com', 'rafadinix@gmail.com', 587);

-- --------------------------------------------------------

--
-- Estrutura da tabela `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_url` varchar(200) DEFAULT NULL,
  `social_nome` varchar(200) DEFAULT NULL,
  `social_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `social`
--

INSERT INTO `social` (`social_id`, `social_url`, `social_nome`, `social_status`) VALUES
(1, 'www.br.exemploss/', 'fa fa-adn', 0),
(2, 'www.plus', 'fa fa-android', 0),
(3, 'www.instagram.com/', 'fa fa-apple', 0),
(4, 'www.twitter.com', 'fa fa-bitbucket', 0),
(5, 'https://www.facebook.com', 'fa fa-bitcoin', 1),
(6, 'https://br.linkedin.com/', 'fa fa-css3', 0),
(7, 'https://br.linkedin.com/', 'fa fa-dribbble', 0),
(8, 'https://br.linkedin.com/', 'fa fa-dropbox', 0),
(9, 'www.facebook.com', 'fa fa-facebook', 1),
(10, 'https://br.linkedin.com/', 'fa fa-flickr', 0),
(11, 'https://br.linkedin.com/', 'fa fa-foursquare', 1),
(12, 'https://br.linkedin.com/', 'fa fa-github', 0),
(13, 'https://www.google.com/', 'fa fa-google-plus', 1),
(14, 'https://br.linkedin.com/', 'fa fa-html5', 0),
(15, 'www.instagram.com/', 'fa fa-instagram', 1),
(16, 'https://br.linkedin.com/', 'fa fa-linkedin', 0),
(17, 'https://br.linkedin.com/', 'fa fa-linux', 0),
(18, 'https://br.linkedin.com/', 'fa fa-maxcdn', 0),
(19, 'https://br.linkedin.com/', 'fa fa-pagelines', 0),
(20, 'https://br.pinterest.com/', 'fa fa-pinterest', 0),
(21, 'https://br.linkedin.com/', 'fa fa-renren', 0),
(22, 'https://br.linkedin.com/', 'fa fa-skype', 1),
(23, 'https://br.linkedin.com/', 'fa fa-stack-exchange', 0),
(24, 'https://br.linkedin.com/', 'fa fa-trello', 0),
(25, 'https://br.linkedin.com/', 'fa fa-tumblr', 0),
(26, 'https://twitter.com/', 'fa fa-twitter', 1),
(27, 'https://vimeo.com/', 'fa fa-vimeo-square', 0),
(29, 'www.youtube.com', 'fa fa-youtube', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nome` varchar(200) DEFAULT NULL,
  `usuario_login` varchar(200) DEFAULT NULL,
  `usuario_email` varchar(200) DEFAULT NULL,
  `usuario_senha` varchar(200) DEFAULT NULL,
  `usuario_data` varchar(200) DEFAULT NULL,
  `usuario_imagem` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nome`, `usuario_login`, `usuario_email`, `usuario_senha`, `usuario_data`, `usuario_imagem`) VALUES
(13, 'Webmaster', 'admin', 'superjjbh@gmail.com', '3f6a3db74286a6483d3db571b7e742b5', '08/04/2015', '1510792786.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `area1`
--
ALTER TABLE `area1`
  ADD PRIMARY KEY (`area1_id`);

--
-- Indexes for table `area2`
--
ALTER TABLE `area2`
  ADD PRIMARY KEY (`area2_id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `cliente2`
--
ALTER TABLE `cliente2`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `fk_comentario_pagina1_idx` (`comentario_pagina`);

--
-- Indexes for table `depoimento`
--
ALTER TABLE `depoimento`
  ADD PRIMARY KEY (`depoimento_id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`foto_id`),
  ADD KEY `fk_foto_portfolio_idx` (`foto_portfolio`),
  ADD KEY `fk_foto_presente_idx` (`foto_presente`);

--
-- Indexes for table `icones`
--
ALTER TABLE `icones`
  ADD PRIMARY KEY (`icones_id`);

--
-- Indexes for table `modulo1`
--
ALTER TABLE `modulo1`
  ADD PRIMARY KEY (`modulo1_id`);

--
-- Indexes for table `modulo2`
--
ALTER TABLE `modulo2`
  ADD PRIMARY KEY (`modulo2_id`);

--
-- Indexes for table `modulo3`
--
ALTER TABLE `modulo3`
  ADD PRIMARY KEY (`modulo3_id`);

--
-- Indexes for table `modulo4`
--
ALTER TABLE `modulo4`
  ADD PRIMARY KEY (`modulo4_id`);

--
-- Indexes for table `modulo5`
--
ALTER TABLE `modulo5`
  ADD PRIMARY KEY (`modulo5_id`);

--
-- Indexes for table `modulo6`
--
ALTER TABLE `modulo6`
  ADD PRIMARY KEY (`modulo6_id`);

--
-- Indexes for table `modulo7`
--
ALTER TABLE `modulo7`
  ADD PRIMARY KEY (`modulo7_id`);

--
-- Indexes for table `modulo8`
--
ALTER TABLE `modulo8`
  ADD PRIMARY KEY (`modulo8_id`);

--
-- Indexes for table `modulo9`
--
ALTER TABLE `modulo9`
  ADD PRIMARY KEY (`modulo9_id`);

--
-- Indexes for table `modulo10`
--
ALTER TABLE `modulo10`
  ADD PRIMARY KEY (`modulo10_id`);

--
-- Indexes for table `modulo11`
--
ALTER TABLE `modulo11`
  ADD PRIMARY KEY (`modulo11_id`);

--
-- Indexes for table `modulo_aparencia`
--
ALTER TABLE `modulo_aparencia`
  ADD PRIMARY KEY (`modulo_aparencia_id`);

--
-- Indexes for table `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`pagina_id`),
  ADD KEY `fk_pagina_area_idx` (`pagina_area`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_id`),
  ADD KEY `fk_portfolio_area1_idx` (`portfolio_area1`);

--
-- Indexes for table `presente`
--
ALTER TABLE `presente`
  ADD PRIMARY KEY (`presente_id`),
  ADD KEY `fk_presente_area2_idx` (`presente_area2`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`servico_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `area1`
--
ALTER TABLE `area1`
  MODIFY `area1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `area2`
--
ALTER TABLE `area2`
  MODIFY `area2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cliente2`
--
ALTER TABLE `cliente2`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `depoimento`
--
ALTER TABLE `depoimento`
  MODIFY `depoimento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `icones`
--
ALTER TABLE `icones`
  MODIFY `icones_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;
--
-- AUTO_INCREMENT for table `modulo1`
--
ALTER TABLE `modulo1`
  MODIFY `modulo1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo2`
--
ALTER TABLE `modulo2`
  MODIFY `modulo2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo3`
--
ALTER TABLE `modulo3`
  MODIFY `modulo3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo4`
--
ALTER TABLE `modulo4`
  MODIFY `modulo4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo5`
--
ALTER TABLE `modulo5`
  MODIFY `modulo5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo6`
--
ALTER TABLE `modulo6`
  MODIFY `modulo6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo7`
--
ALTER TABLE `modulo7`
  MODIFY `modulo7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo8`
--
ALTER TABLE `modulo8`
  MODIFY `modulo8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo9`
--
ALTER TABLE `modulo9`
  MODIFY `modulo9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo10`
--
ALTER TABLE `modulo10`
  MODIFY `modulo10_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo11`
--
ALTER TABLE `modulo11`
  MODIFY `modulo11_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modulo_aparencia`
--
ALTER TABLE `modulo_aparencia`
  MODIFY `modulo_aparencia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pagina`
--
ALTER TABLE `pagina`
  MODIFY `pagina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `presente`
--
ALTER TABLE `presente`
  MODIFY `presente_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_pagina` FOREIGN KEY (`comentario_pagina`) REFERENCES `pagina` (`pagina_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pagina`
--
ALTER TABLE `pagina`
  ADD CONSTRAINT `fk_pagina_area` FOREIGN KEY (`pagina_area`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `fk_portfolio_area1` FOREIGN KEY (`portfolio_area1`) REFERENCES `area1` (`area1_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `presente`
--
ALTER TABLE `presente`
  ADD CONSTRAINT `fk_presente_area2` FOREIGN KEY (`presente_area2`) REFERENCES `area2` (`area2_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
