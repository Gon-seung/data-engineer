SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE order_option;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO order_option (order_id,option_id,car_id) 
VALUES 
(1, 31, 5),
(1, 28, 5),
(1, 30, 5),
(1, 29, 5),
(1, 32, 5),
(2, 34, 5),
(2, 31, 5),
(2, 29, 5),
(2, 28, 5),
(2, 30, 5),
(2, 33, 5),
(2, 32, 5),
(3, 44, 7),
(4, 2, 1),
(4, 7, 1),
(4, 3, 1),
(4, 4, 1),
(4, 1, 1),
(4, 8, 1),
(4, 9, 1),
(4, 6, 1),
(6, 1, 2),
(6, 12, 2),
(6, 16, 2),
(6, 15, 2),
(7, 47, 8),
(8, 3, 2),
(8, 9, 2),
(8, 16, 2),
(8, 15, 2),
(8, 1, 2),
(8, 11, 2),
(9, 48, 8),
(9, 45, 8),
(11, 16, 2),
(11, 9, 2),
(11, 3, 2),
(11, 12, 2),
(11, 14, 2),
(11, 10, 2),
(11, 11, 2),
(11, 13, 2),
(11, 15, 2),
(11, 1, 2),
(12, 29, 5),
(12, 33, 5),
(12, 30, 5),
(12, 28, 5),
(12, 31, 5),
(12, 32, 5),
(12, 34, 5),
(13, 21, 4),
(13, 23, 4),
(13, 20, 4),
(13, 22, 4),
(13, 17, 4),
(13, 25, 4),
(14, 38, 6),
(14, 40, 6),
(14, 39, 6),
(14, 36, 6),
(14, 35, 6),
(15, 3, 2),
(15, 10, 2),
(15, 12, 2),
(15, 9, 2),
(15, 15, 2),
(15, 1, 2),
(15, 11, 2),
(15, 13, 2),
(16, 25, 4),
(16, 24, 4),
(17, 53, 10),
(17, 54, 10),
(17, 55, 10),
(17, 56, 10),
(18, 44, 7),
(18, 43, 7),
(18, 41, 7),
(18, 42, 7),
(19, 13, 2),
(19, 10, 2),
(19, 12, 2),
(19, 16, 2),
(20, 6, 1),
(20, 5, 1),
(20, 8, 1),
(20, 4, 1),
(20, 7, 1),
(20, 9, 1),
(20, 1, 1),
(20, 2, 1),
(20, 3, 1),
(21, 19, 4),
(21, 25, 4),
(21, 21, 4),
(21, 23, 4),
(21, 3, 4),
(21, 22, 4),
(21, 18, 4),
(21, 17, 4),
(23, 39, 6),
(24, 45, 8),
(24, 46, 8),
(24, 49, 8),
(24, 47, 8),
(24, 48, 8),
(25, 13, 2),
(25, 3, 2),
(25, 9, 2),
(25, 16, 2),
(27, 44, 7),
(28, 43, 7),
(29, 47, 8),
(29, 49, 8),
(30, 25, 4),
(30, 18, 4),
(30, 22, 4),
(30, 20, 4),
(30, 17, 4),
(30, 19, 4),
(30, 24, 4),
(30, 3, 4),
(30, 21, 4),
(31, 40, 6),
(31, 35, 6),
(31, 39, 6),
(32, 8, 1),
(32, 9, 1),
(32, 1, 1),
(32, 6, 1),
(32, 2, 1),
(32, 4, 1),
(34, 42, 7),
(34, 44, 7),
(34, 41, 7),
(35, 50, 9),
(35, 51, 9),
(35, 52, 9),
(36, 42, 7),
(37, 34, 5),
(37, 32, 5),
(37, 30, 5),
(37, 29, 5),
(38, 37, 6),
(38, 39, 6),
(38, 38, 6),
(39, 3, 2),
(39, 13, 2),
(39, 12, 2),
(39, 11, 2),
(39, 1, 2),
(39, 16, 2),
(39, 14, 2),
(39, 15, 2),
(41, 46, 8),
(41, 47, 8),
(42, 52, 9),
(42, 50, 9),
(43, 45, 8),
(43, 47, 8),
(43, 48, 8),
(43, 46, 8),
(44, 13, 2),
(44, 1, 2),
(44, 9, 2),
(44, 15, 2),
(44, 14, 2),
(44, 10, 2),
(44, 11, 2),
(45, 55, 10),
(45, 54, 10),
(45, 56, 10),
(46, 52, 9),
(50, 30, 5),
(52, 43, 7),
(52, 44, 7),
(53, 36, 6),
(54, 29, 5),
(54, 31, 5),
(54, 33, 5),
(55, 53, 10),
(55, 55, 10),
(56, 6, 1),
(56, 8, 1),
(56, 9, 1),
(56, 7, 1),
(56, 5, 1),
(57, 45, 8),
(57, 48, 8),
(57, 46, 8),
(58, 53, 10),
(58, 56, 10),
(59, 20, 4),
(60, 46, 8),
(60, 48, 8),
(61, 21, 4),
(61, 20, 4),
(61, 26, 4),
(61, 27, 4),
(61, 25, 4),
(61, 3, 4),
(61, 23, 4),
(61, 17, 4),
(63, 27, 4),
(63, 24, 4),
(63, 23, 4),
(63, 22, 4),
(63, 19, 4),
(63, 25, 4),
(63, 3, 4),
(63, 26, 4),
(63, 21, 4),
(63, 20, 4),
(63, 17, 4),
(63, 18, 4),
(64, 50, 9),
(65, 23, 4),
(65, 22, 4),
(65, 18, 4),
(65, 20, 4),
(65, 24, 4),
(65, 19, 4),
(65, 27, 4),
(65, 26, 4),
(66, 13, 2),
(66, 10, 2),
(66, 15, 2),
(66, 11, 2),
(66, 3, 2),
(66, 12, 2),
(66, 14, 2),
(67, 3, 2),
(67, 15, 2),
(67, 12, 2),
(67, 1, 2),
(67, 11, 2),
(68, 12, 2),
(68, 15, 2),
(68, 16, 2),
(68, 14, 2),
(69, 38, 6),
(69, 36, 6),
(70, 50, 9),
(71, 3, 4),
(71, 21, 4),
(72, 47, 8),
(72, 48, 8),
(72, 46, 8),
(72, 45, 8),
(74, 52, 9),
(74, 51, 9),
(75, 39, 6),
(76, 18, 4),
(76, 21, 4),
(76, 26, 4),
(76, 23, 4),
(76, 17, 4),
(76, 25, 4),
(76, 24, 4),
(77, 48, 8),
(77, 49, 8),
(78, 9, 1),
(78, 8, 1),
(78, 6, 1),
(78, 5, 1),
(78, 1, 1),
(78, 7, 1),
(78, 4, 1),
(78, 3, 1),
(79, 39, 6),
(79, 37, 6),
(80, 3, 2),
(80, 9, 2),
(80, 1, 2),
(80, 16, 2),
(80, 14, 2),
(80, 13, 2),
(81, 46, 8),
(83, 15, 2),
(83, 16, 2),
(83, 10, 2),
(83, 11, 2),
(83, 9, 2),
(83, 13, 2),
(83, 1, 2),
(85, 3, 1),
(85, 4, 1),
(87, 15, 2),
(87, 1, 2),
(88, 41, 7),
(88, 42, 7),
(88, 43, 7),
(89, 38, 6),
(89, 39, 6),
(89, 37, 6),
(89, 36, 6),
(89, 35, 6),
(89, 40, 6),
(90, 33, 5),
(90, 31, 5),
(90, 28, 5),
(90, 29, 5),
(90, 32, 5),
(90, 30, 5),
(90, 34, 5),
(92, 26, 4),
(92, 17, 4),
(92, 18, 4),
(92, 20, 4),
(92, 25, 4),
(92, 23, 4),
(92, 21, 4),
(92, 24, 4),
(92, 3, 4),
(93, 36, 6),
(93, 35, 6),
(93, 40, 6),
(94, 39, 6),
(94, 40, 6),
(94, 38, 6),
(94, 37, 6),
(94, 36, 6),
(95, 37, 6),
(95, 35, 6),
(95, 39, 6),
(95, 36, 6),
(95, 40, 6),
(98, 31, 5),
(98, 32, 5),
(98, 34, 5),
(98, 30, 5),
(98, 28, 5),
(98, 33, 5),
(98, 29, 5),
(99, 51, 9),
(99, 50, 9),
(101, 33, 5),
(101, 32, 5),
(103, 12, 2),
(103, 16, 2),
(103, 3, 2),
(104, 43, 7),
(104, 44, 7),
(104, 41, 7),
(105, 46, 8),
(105, 47, 8),
(105, 45, 8),
(105, 49, 8),
(106, 52, 9),
(106, 50, 9),
(107, 19, 4),
(107, 22, 4),
(107, 18, 4),
(107, 20, 4),
(110, 16, 2),
(110, 10, 2),
(110, 13, 2),
(110, 11, 2),
(110, 1, 2),
(110, 9, 2),
(110, 3, 2),
(110, 14, 2),
(110, 15, 2),
(110, 12, 2),
(111, 23, 4),
(111, 19, 4),
(111, 22, 4),
(111, 18, 4),
(111, 17, 4),
(111, 27, 4),
(111, 25, 4),
(111, 20, 4),
(112, 54, 10),
(114, 55, 10),
(114, 56, 10),
(114, 54, 10),
(114, 53, 10),
(115, 14, 2),
(115, 3, 2),
(115, 11, 2),
(115, 13, 2),
(117, 47, 8),
(117, 49, 8),
(117, 48, 8),
(117, 45, 8),
(118, 24, 4),
(118, 23, 4),
(118, 22, 4),
(118, 17, 4),
(118, 21, 4),
(118, 19, 4),
(118, 27, 4),
(118, 25, 4),
(121, 34, 5),
(121, 29, 5),
(122, 10, 2),
(122, 9, 2),
(122, 1, 2),
(122, 12, 2),
(124, 34, 5),
(124, 32, 5),
(124, 33, 5),
(124, 28, 5),
(124, 29, 5),
(126, 39, 6),
(126, 40, 6),
(126, 35, 6),
(126, 36, 6),
(127, 54, 10),
(128, 37, 6),
(128, 38, 6),
(128, 39, 6),
(128, 40, 6),
(128, 36, 6),
(131, 52, 9),
(132, 12, 2),
(133, 12, 2),
(133, 9, 2),
(133, 15, 2),
(133, 3, 2),
(133, 11, 2),
(133, 13, 2),
(133, 16, 2),
(133, 10, 2),
(134, 3, 2),
(134, 13, 2),
(134, 16, 2),
(134, 11, 2),
(134, 1, 2),
(134, 15, 2),
(134, 12, 2),
(134, 14, 2),
(134, 9, 2),
(136, 26, 4),
(136, 20, 4),
(136, 17, 4),
(136, 22, 4),
(136, 23, 4),
(136, 27, 4),
(136, 25, 4),
(136, 18, 4),
(136, 3, 4),
(136, 24, 4),
(136, 19, 4),
(137, 24, 4),
(138, 29, 5),
(138, 28, 5),
(138, 34, 5),
(138, 31, 5),
(138, 32, 5),
(139, 14, 2),
(139, 12, 2),
(139, 11, 2),
(140, 41, 7),
(140, 44, 7),
(140, 43, 7),
(140, 42, 7),
(141, 9, 2),
(141, 11, 2),
(141, 13, 2),
(141, 15, 2),
(141, 16, 2),
(141, 12, 2),
(141, 14, 2),
(141, 1, 2),
(141, 3, 2),
(142, 41, 7),
(142, 44, 7),
(142, 43, 7),
(143, 31, 5),
(143, 29, 5),
(144, 34, 5),
(144, 31, 5),
(144, 33, 5),
(144, 28, 5),
(144, 29, 5),
(144, 32, 5),
(144, 30, 5),
(145, 44, 7),
(145, 42, 7),
(145, 43, 7),
(146, 51, 9),
(146, 52, 9),
(146, 50, 9),
(147, 35, 6),
(147, 39, 6),
(147, 36, 6),
(147, 38, 6),
(147, 40, 6),
(147, 37, 6),
(148, 4, 1),
(148, 3, 1),
(148, 1, 1),
(148, 8, 1),
(148, 9, 1),
(148, 6, 1),
(149, 8, 1),
(149, 1, 1),
(149, 7, 1),
(149, 4, 1),
(149, 6, 1),
(149, 2, 1),
(149, 3, 1),
(149, 9, 1),
(149, 5, 1),
(151, 37, 6),
(152, 33, 5),
(153, 54, 10),
(153, 55, 10),
(153, 56, 10),
(153, 53, 10),
(154, 37, 6),
(155, 50, 9),
(155, 51, 9),
(155, 52, 9),
(156, 51, 9),
(156, 52, 9),
(156, 50, 9),
(157, 27, 4),
(157, 22, 4),
(157, 25, 4),
(157, 20, 4),
(157, 18, 4),
(157, 17, 4),
(157, 19, 4),
(157, 26, 4),
(157, 24, 4),
(157, 21, 4),
(157, 3, 4),
(157, 23, 4),
(158, 16, 2),
(158, 11, 2),
(158, 10, 2),
(158, 15, 2),
(158, 13, 2),
(158, 9, 2),
(159, 15, 2),
(159, 14, 2),
(159, 12, 2),
(159, 3, 2),
(159, 13, 2),
(159, 10, 2),
(159, 1, 2),
(160, 36, 6),
(161, 37, 6),
(161, 38, 6),
(161, 35, 6),
(161, 39, 6),
(161, 36, 6),
(162, 2, 1),
(162, 1, 1),
(162, 4, 1),
(162, 8, 1),
(162, 5, 1),
(162, 3, 1),
(162, 9, 1),
(162, 7, 1),
(163, 19, 4),
(164, 27, 4),
(164, 20, 4),
(164, 24, 4),
(164, 19, 4),
(164, 18, 4),
(165, 31, 5),
(166, 9, 1),
(166, 7, 1),
(166, 2, 1),
(166, 3, 1),
(166, 5, 1),
(166, 4, 1),
(166, 6, 1),
(166, 1, 1),
(166, 8, 1),
(167, 17, 4),
(167, 3, 4),
(168, 21, 4),
(168, 22, 4),
(168, 25, 4),
(168, 18, 4),
(168, 23, 4),
(168, 27, 4),
(168, 17, 4),
(168, 24, 4),
(169, 14, 2),
(169, 3, 2),
(169, 1, 2),
(169, 11, 2),
(169, 10, 2),
(169, 16, 2),
(169, 15, 2),
(170, 12, 2),
(170, 1, 2),
(170, 15, 2),
(170, 16, 2),
(170, 13, 2),
(170, 3, 2),
(171, 54, 10),
(171, 53, 10),
(172, 17, 4),
(172, 3, 4),
(172, 25, 4),
(173, 37, 6),
(173, 39, 6),
(176, 7, 1),
(176, 4, 1),
(176, 8, 1),
(176, 5, 1),
(177, 28, 5),
(177, 31, 5),
(177, 34, 5),
(177, 30, 5),
(177, 32, 5),
(177, 29, 5),
(179, 54, 10),
(180, 35, 6),
(180, 37, 6),
(180, 39, 6),
(180, 40, 6),
(180, 36, 6),
(180, 38, 6),
(181, 55, 10),
(181, 53, 10),
(184, 3, 1),
(184, 9, 1),
(184, 8, 1),
(184, 6, 1),
(185, 3, 2),
(185, 14, 2),
(185, 11, 2),
(185, 13, 2),
(185, 9, 2),
(185, 1, 2),
(186, 2, 1),
(186, 1, 1),
(187, 10, 2),
(187, 9, 2),
(187, 13, 2),
(187, 15, 2),
(187, 1, 2),
(187, 11, 2),
(188, 3, 4),
(188, 26, 4),
(188, 22, 4),
(188, 24, 4),
(188, 21, 4),
(188, 17, 4),
(188, 20, 4),
(188, 27, 4),
(188, 23, 4),
(188, 25, 4),
(188, 18, 4),
(188, 19, 4),
(190, 52, 9),
(190, 51, 9),
(191, 5, 1),
(191, 3, 1),
(191, 9, 1),
(191, 8, 1),
(191, 4, 1),
(191, 1, 1),
(191, 2, 1),
(192, 56, 10),
(192, 53, 10),
(192, 54, 10),
(195, 14, 2),
(195, 9, 2),
(196, 29, 5),
(196, 31, 5),
(196, 30, 5),
(196, 34, 5),
(197, 17, 4),
(197, 21, 4),
(197, 22, 4),
(197, 20, 4),
(198, 6, 1),
(198, 8, 1),
(199, 4, 1),
(199, 2, 1),
(199, 5, 1),
(199, 3, 1),
(199, 8, 1),
(199, 7, 1),
(199, 9, 1),
(199, 1, 1),
(199, 6, 1),
(200, 49, 8),
(200, 48, 8),
(200, 47, 8),
(200, 46, 8),
(200, 45, 8),
(201, 41, 7),
(203, 36, 6),
(203, 37, 6),
(203, 38, 6),
(203, 40, 6),
(203, 35, 6),
(203, 39, 6),
(204, 35, 6),
(205, 40, 6),
(205, 39, 6),
(205, 38, 6),
(205, 37, 6),
(207, 23, 4),
(207, 27, 4),
(207, 24, 4),
(207, 18, 4),
(207, 19, 4),
(207, 26, 4),
(208, 9, 1),
(208, 2, 1),
(208, 5, 1),
(208, 3, 1),
(208, 1, 1),
(209, 13, 2),
(209, 12, 2),
(209, 11, 2),
(209, 1, 2),
(209, 3, 2),
(209, 16, 2),
(209, 15, 2),
(209, 9, 2),
(210, 39, 6),
(210, 40, 6),
(212, 27, 4),
(212, 26, 4),
(212, 3, 4),
(213, 6, 1),
(213, 7, 1),
(213, 8, 1),
(213, 1, 1),
(213, 2, 1),
(214, 43, 7),
(214, 42, 7),
(216, 32, 5),
(216, 29, 5),
(216, 31, 5),
(216, 28, 5),
(216, 30, 5),
(216, 33, 5),
(217, 19, 4),
(217, 22, 4),
(217, 27, 4),
(217, 23, 4),
(217, 25, 4),
(218, 6, 1),
(218, 1, 1),
(219, 9, 2),
(219, 12, 2),
(219, 10, 2),
(219, 16, 2),
(219, 14, 2),
(219, 13, 2),
(219, 3, 2),
(220, 24, 4),
(220, 21, 4),
(220, 19, 4),
(220, 23, 4),
(220, 25, 4),
(220, 22, 4),
(220, 3, 4),
(220, 20, 4),
(220, 18, 4),
(221, 31, 5),
(221, 34, 5),
(221, 29, 5),
(221, 30, 5),
(221, 33, 5),
(222, 48, 8),
(222, 46, 8),
(222, 49, 8),
(222, 45, 8),
(222, 47, 8),
(223, 6, 1),
(223, 4, 1),
(223, 5, 1),
(223, 3, 1),
(223, 8, 1),
(223, 2, 1),
(223, 7, 1),
(223, 9, 1),
(225, 17, 4),
(226, 6, 1),
(227, 39, 6),
(227, 36, 6),
(227, 40, 6),
(227, 35, 6),
(228, 4, 1),
(228, 9, 1),
(229, 56, 10),
(229, 54, 10),
(229, 55, 10),
(229, 53, 10),
(230, 51, 9),
(230, 52, 9),
(230, 50, 9),
(233, 30, 5),
(234, 30, 5),
(236, 13, 2),
(236, 3, 2),
(236, 10, 2),
(236, 14, 2),
(236, 12, 2),
(236, 11, 2),
(238, 51, 9),
(239, 34, 5),
(239, 28, 5),
(239, 29, 5),
(239, 32, 5),
(239, 33, 5),
(240, 13, 2),
(240, 3, 2),
(240, 16, 2),
(240, 9, 2),
(240, 10, 2),
(240, 12, 2),
(241, 3, 2),
(241, 12, 2),
(241, 14, 2),
(241, 10, 2),
(241, 15, 2),
(242, 48, 8),
(242, 47, 8),
(242, 46, 8),
(242, 45, 8),
(244, 3, 4),
(244, 17, 4),
(244, 20, 4),
(244, 19, 4),
(244, 27, 4),
(244, 25, 4),
(245, 32, 5),
(245, 34, 5),
(245, 33, 5),
(245, 28, 5),
(245, 30, 5),
(248, 56, 10),
(248, 54, 10),
(248, 53, 10),
(249, 15, 2),
(249, 12, 2),
(249, 14, 2),
(249, 10, 2),
(249, 16, 2),
(249, 1, 2),
(249, 9, 2),
(252, 45, 8),
(252, 46, 8),
(252, 48, 8),
(252, 47, 8),
(252, 49, 8),
(253, 42, 7),
(254, 4, 1),
(254, 1, 1),
(254, 3, 1),
(256, 18, 4),
(259, 14, 2),
(259, 12, 2),
(259, 9, 2),
(259, 3, 2),
(259, 1, 2),
(259, 15, 2),
(259, 10, 2),
(260, 40, 6),
(260, 38, 6),
(262, 41, 7),
(262, 42, 7),
(262, 43, 7),
(262, 44, 7),
(263, 1, 1),
(263, 7, 1),
(263, 8, 1),
(263, 9, 1),
(263, 6, 1),
(263, 5, 1),
(263, 2, 1),
(263, 3, 1),
(264, 18, 4),
(265, 22, 4),
(266, 3, 4),
(266, 26, 4),
(266, 19, 4),
(266, 25, 4),
(266, 24, 4),
(266, 20, 4),
(266, 18, 4),
(266, 21, 4),
(266, 17, 4),
(267, 15, 2),
(267, 3, 2),
(267, 12, 2),
(267, 10, 2),
(267, 13, 2),
(267, 1, 2),
(267, 14, 2),
(267, 11, 2),
(268, 46, 8),
(269, 31, 5),
(269, 28, 5),
(269, 34, 5),
(269, 32, 5),
(269, 33, 5),
(270, 42, 7),
(270, 43, 7),
(270, 44, 7),
(270, 41, 7),
(271, 1, 1),
(271, 6, 1),
(271, 3, 1),
(272, 46, 8),
(272, 49, 8),
(272, 45, 8),
(272, 48, 8),
(272, 47, 8),
(273, 41, 7),
(273, 42, 7),
(274, 47, 8),
(274, 46, 8),
(276, 30, 5),
(276, 33, 5),
(276, 28, 5),
(277, 31, 5),
(277, 28, 5),
(277, 33, 5),
(277, 29, 5),
(277, 32, 5),
(277, 30, 5),
(278, 28, 5),
(278, 31, 5),
(278, 30, 5),
(278, 34, 5),
(278, 32, 5),
(278, 33, 5),
(278, 29, 5),
(279, 49, 8),
(280, 39, 6),
(281, 29, 5),
(282, 2, 1),
(282, 3, 1),
(282, 7, 1),
(282, 6, 1),
(282, 4, 1),
(283, 50, 9),
(283, 52, 9),
(284, 56, 10),
(285, 40, 6),
(285, 38, 6),
(285, 37, 6),
(286, 22, 4),
(286, 23, 4),
(286, 18, 4),
(286, 19, 4),
(286, 21, 4),
(290, 7, 1),
(290, 9, 1),
(290, 3, 1),
(291, 50, 9),
(291, 52, 9),
(291, 51, 9),
(292, 38, 6),
(292, 39, 6),
(292, 40, 6),
(292, 37, 6),
(292, 36, 6),
(293, 50, 9),
(293, 51, 9),
(295, 47, 8),
(295, 46, 8),
(296, 43, 7),
(297, 38, 6),
(297, 40, 6),
(297, 35, 6),
(297, 36, 6),
(298, 37, 6),
(298, 36, 6),
(298, 40, 6),
(298, 35, 6),
(299, 53, 10),
(299, 56, 10);