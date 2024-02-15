SET application_name="container_setup";

BEGIN;

DROP TABLE IF EXISTS kartiererin;
DROP TABLE IF EXISTS gemeindegrenzen_gemeinde;


CREATE TABLE kartiererin (
    pk_kartiererin integer PRIMARY KEY,
    name character varying(200) NOT NULL,
    kuerzel character varying(100) NOT NULL
);
CREATE TABLE gemeindegrenzen_gemeinde (
    t_id bigint PRIMARY KEY,
    t_basket bigint NOT NULL,
    t_datasetname character varying(200) NOT NULL,
    aname character varying(30) NOT NULL,
    bfsnr integer NOT NULL,
    CONSTRAINT gemeindegrenzen_gemeinde_bfsnr_check CHECK (((bfsnr >= 1) AND (bfsnr <= 9999)))
);


INSERT INTO kartiererin VALUES (638, 'Rohr', 'Ro');
INSERT INTO kartiererin VALUES (624, 'Ruef', 'AR');
INSERT INTO kartiererin VALUES (646, 'Rohr/Steger', 'Ro/Ste');
INSERT INTO kartiererin VALUES (647, 'Vavruch/Presler', 'VAV/PRE');
INSERT INTO kartiererin VALUES (625, 'Ruef/Baumgartner/Knecht', 'AR/KB/MK');
INSERT INTO kartiererin VALUES (651, 'Vökt/Rüttimann', 'uv/rü');
INSERT INTO kartiererin VALUES (626, 'Ruef/Knecht', 'AR/MK');
INSERT INTO kartiererin VALUES (623, 'Ruef/Busin', 'AR/UB');
INSERT INTO kartiererin VALUES (627, 'Wasser', 'BW');
INSERT INTO kartiererin VALUES (628, 'Wasser/Danner', 'BW/ED');
INSERT INTO kartiererin VALUES (629, 'Wasser/Kaufmann', 'BW/GK');
INSERT INTO kartiererin VALUES (649, 'Knecht/Baumgartner', 'MK/KB');
INSERT INTO kartiererin VALUES (631, 'Danner', 'ED');
INSERT INTO kartiererin VALUES (634, 'Hanic', 'Ha');
INSERT INTO kartiererin VALUES (632, 'Pfister', 'HP');
INSERT INTO kartiererin VALUES (635, 'Pazeller', 'Pa');
INSERT INTO kartiererin VALUES (636, 'Pazeller/Ruef', 'Pa/AR');
INSERT INTO kartiererin VALUES (639, 'Herot', 'SH');
INSERT INTO kartiererin VALUES (640, 'Busin', 'UB');
INSERT INTO kartiererin VALUES (630, 'Wasser/OE', 'BW/OE');
INSERT INTO kartiererin VALUES (642, 'Zürrer', 'zü');
INSERT INTO kartiererin VALUES (641, 'Geyer', 'ug');
INSERT INTO kartiererin VALUES (645, 'Rüttimann/Geyer', 'rü/ug');
INSERT INTO kartiererin VALUES (633, 'Hanic/Geyer', 'HR/ug');
INSERT INTO kartiererin VALUES (663, 'Videtic', 'VIDE');
INSERT INTO kartiererin VALUES (643, 'Gasche', 'ga');
INSERT INTO kartiererin VALUES (644, 'Vogt', 'MV');
INSERT INTO kartiererin VALUES (664, 'Presler', 'PRE');
INSERT INTO kartiererin VALUES (637, 'Pazeller/Ruef/Knecht', 'Pa/AR/MK');
INSERT INTO kartiererin VALUES (665, 'Presler/Vogt', 'PRE/VOG');
INSERT INTO kartiererin VALUES (672, 'Gasche/Schmidhauser', 'ga/as');
INSERT INTO kartiererin VALUES (673, 'Gasche/Margreth', 'ga/mm');
INSERT INTO kartiererin VALUES (666, 'Ruef/Knecht/Busin/Baumgartner', 'AR/MK/UB/KB');
INSERT INTO kartiererin VALUES (667, 'Oriet', 'Or');
INSERT INTO kartiererin VALUES (668, 'Günter', 'GUN');
INSERT INTO kartiererin VALUES (669, 'Vökt', 'UV');
INSERT INTO kartiererin VALUES (670, 'Vökt/Margreth', 'UV/MM');
INSERT INTO kartiererin VALUES (671, 'Vökt/Wernli', 'UV/MW');
INSERT INTO kartiererin VALUES (678, 'Schmidhauser', 'as');
INSERT INTO kartiererin VALUES (682, 'Knecht/Baumgartner/Margreth', 'MK/KB/MM');
INSERT INTO kartiererin VALUES (683, 'Knecht/Margreth', 'MK/MM');
INSERT INTO kartiererin VALUES (684, 'Baumgartner/Margreth', 'KB/MM');
INSERT INTO kartiererin VALUES (685, 'Presler/Graf', 'PRE/GRA');
INSERT INTO kartiererin VALUES (686, 'Presler/Carizzoni', 'PRE/CAR');
INSERT INTO kartiererin VALUES (688, 'Rohr/Tutsch', 'Ro/Tu');
INSERT INTO kartiererin VALUES (689, 'Busin/Baumgartner', 'UB/KB');
INSERT INTO kartiererin VALUES (697, 'Knecht', 'MK');
INSERT INTO kartiererin VALUES (698, 'Baumgartner', 'KB');
INSERT INTO kartiererin VALUES (692, 'Schmidhauser/Ramseier', 'as/ra');
INSERT INTO kartiererin VALUES (693, 'Rohr/Kuster', 'Ro/EK');
INSERT INTO kartiererin VALUES (679, 'Schmidhauser/Wernli', 'as/mw');
INSERT INTO kartiererin VALUES (696, 'Ruef/Margreth', 'AR/MM');
INSERT INTO kartiererin VALUES (694, 'Knecht/Baumgartner/Felder', 'MK/KB/SF');
INSERT INTO kartiererin VALUES (691, 'Gasche/Schmidhauser/Ramseier', 'ga/as/ra');
INSERT INTO kartiererin VALUES (674, 'Gasche/Margreth/Schmidhauser', 'ga/mm/as');
INSERT INTO kartiererin VALUES (680, 'Ruef/Busin/Wernli', 'AR/UB/MW');
INSERT INTO kartiererin VALUES (695, 'Knecht/Felder', 'MK/SF');
INSERT INTO kartiererin VALUES (676, 'Wasser/Dürrenmatt', 'BW/RD');
INSERT INTO kartiererin VALUES (675, 'Wasser/EK', 'BW/EK');
INSERT INTO kartiererin VALUES (677, 'Ruef/Busin/Baumgartner', 'AR/UB/KB');
INSERT INTO kartiererin VALUES (662, 'Ruef/Baumgartner', 'AR/ KB');
INSERT INTO kartiererin VALUES (681, 'Gasche/Schmidhauser/Wernli', 'ga/as/mw');
INSERT INTO kartiererin VALUES (699, 'Rohr/Tutsch/Felder', 'Ro/Tu/Fe');
INSERT INTO kartiererin VALUES (700, 'Reinmann', 'UR');
INSERT INTO kartiererin VALUES (701, 'Gasche/Wernli/Margreth/Schmidhauser', 'ga/mw/mm/as');
INSERT INTO kartiererin VALUES (702, 'Wasser/Danner/Kaufmann', 'BW/ED/GK');
INSERT INTO kartiererin VALUES (703, 'Pazeller/Rohr', 'Pa/Ro');
INSERT INTO kartiererin VALUES (705, 'Presler/Günter', 'PRE/GUN');
INSERT INTO kartiererin VALUES (706, 'Presler/Vogt/Carizzoni', 'PRE/MV/CAR');
INSERT INTO kartiererin VALUES (708, 'Rohr/Pazeller', 'Ro/Pa');
INSERT INTO kartiererin VALUES (709, 'Rohr/Pazeller/Tutsch', 'Ro/Pa/Tu');
INSERT INTO kartiererin VALUES (712, 'Rüttimann/Vökt/Geyer', 'rü/uv/ug');
INSERT INTO kartiererin VALUES (713, 'Vogt/Baumann', 'MV/Bau');
INSERT INTO kartiererin VALUES (714, 'Vökt/Wernli/Margreth', 'UV/MW/MM');
INSERT INTO kartiererin VALUES (711, 'Rüttimann/Geyer', 'rü/ug');
INSERT INTO kartiererin VALUES (710, 'Ruef/Knecht/Busin/Baumgartner/Margreth', 'AR/MK/UB/KB/MM');
INSERT INTO kartiererin VALUES (704, 'Pfister/Vökt', 'HP/UV');
INSERT INTO kartiererin VALUES (707, 'Presler/Vogt/Vavruch/Günter/Gasche', 'PRE/MV/VAR/GUN/ga');
INSERT INTO kartiererin VALUES (715, 'Gasche/Ramseier', 'ga/ra');
INSERT INTO kartiererin VALUES (716, 'Rupflin/Zürrer', 'ru/zü');
INSERT INTO kartiererin VALUES (717, 'Hürlimann/Zürrer', 'hü/zü');
INSERT INTO kartiererin VALUES (718, 'Bräm', 'brä');
INSERT INTO kartiererin VALUES (719, 'Felder/Zürrer', 'SF/Zü');
INSERT INTO kartiererin VALUES (720, 'Margreth', 'MM');
INSERT INTO kartiererin VALUES (721, 'Gasche/Hauert', 'ga/hau');
INSERT INTO kartiererin VALUES (722, 'Gasche/Berger', 'ga/ber');
INSERT INTO kartiererin VALUES (723, 'Gasche/Felder', 'ga/SF');
INSERT INTO kartiererin VALUES (724, 'CAS-Bodenkartierung', 'CAS');
INSERT INTO kartiererin VALUES (725, 'Wernli', 'MW');
INSERT INTO kartiererin VALUES (726, 'Wernli/Margreth', 'MW/MM');
INSERT INTO kartiererin VALUES (727, 'Gasche/Dakhel', 'ga/Dn');
INSERT INTO kartiererin VALUES (728, 'Dakhel', 'Dn');
INSERT INTO kartiererin VALUES (729, 'Ramseier', 'ra');
INSERT INTO kartiererin VALUES (730, 'Dakhel/Vez', 'Dn/Vf');
INSERT INTO kartiererin VALUES (732, 'margreth/siegrist', 'MM/JS');
INSERT INTO kartiererin VALUES (733, 'knecht/steinert', 'MK/TS');
INSERT INTO kartiererin VALUES (734, 'Lazzini', 'ML');
INSERT INTO kartiererin VALUES (735, 'Siegrist', 'JS');
INSERT INTO kartiererin VALUES (737, 'Siegrist / Wernli', 'js / mw');
INSERT INTO kartiererin VALUES (738, 'Gasche/Ramseier/Lazzini', 'ga / lr /laz');
INSERT INTO kartiererin VALUES (739, 'Danner / Flury', 'ed/sf');
INSERT INTO kartiererin VALUES (736, 'Gasche/Lazzini', 'ga / laz');
INSERT INTO kartiererin VALUES (740, 'Felder', 'SF');
INSERT INTO kartiererin VALUES (741, 'Flury', 'sf');
INSERT INTO kartiererin VALUES (742, 'Vögtli', 'vö');
INSERT INTO kartiererin VALUES (743, 'Eggert', 'eg');
INSERT INTO kartiererin VALUES (744, 'Eggert/Abbt', 'eg/ja');
INSERT INTO kartiererin VALUES (745, 'Bürgi', 'bü');
INSERT INTO kartiererin VALUES (746, 'Hunziker', 'ho');
INSERT INTO kartiererin VALUES (747, 'Hürlimann', 'hü');
INSERT INTO kartiererin VALUES (748, 'Hürlimann/Hunziger', 'hü/ho');
INSERT INTO kartiererin VALUES (749, 'Ramseier/Schmidhauser', 'ra/as');
INSERT INTO kartiererin VALUES (750, 'Ramseier/Schmidhauser/Gasche', 'ra/as/ga');
INSERT INTO kartiererin VALUES (751, 'Zürrer/Hunziker', 'zü/ho');
INSERT INTO kartiererin VALUES (752, 'Gasche/Baumgartner', 'ga, ba');
INSERT INTO kartiererin VALUES (753, 'Wernli/Siegrist/Kuster', 'mw, js, bk');
INSERT INTO kartiererin VALUES (754, 'Dollenmeier/Wernli', 'wd, mw');
INSERT INTO kartiererin VALUES (755, 'Werli/Dollenmeier', 'mw, wd');
INSERT INTO kartiererin VALUES (756, 'Kuster/Wernli', 'bk, mw');
INSERT INTO kartiererin VALUES (757, 'Wernli/Kuster', 'mw, bk');
INSERT INTO kartiererin VALUES (758, 'Kuster/Dollenmeier', 'bk/wd');
INSERT INTO kartiererin VALUES (759, 'Köhler', 'kö');
INSERT INTO kartiererin VALUES (760, 'Hunziker', 'ho');
INSERT INTO kartiererin VALUES (761, 'Vögtli', 'vö');
INSERT INTO kartiererin VALUES (762, 'Vögtli/Döring', 'vö/dö');
INSERT INTO kartiererin VALUES (763, 'Hunziker/Vögtli', 'ho/vö');
INSERT INTO kartiererin VALUES (764, 'Eggert/Döring', 'eg/dö');
INSERT INTO kartiererin VALUES (765, 'Steinert', 'TS');
INSERT INTO kartiererin VALUES (766, 'Kuster', 'bk');
INSERT INTO kartiererin VALUES (767, 'Dollenmeier', 'WD');
INSERT INTO kartiererin VALUES (768, 'Vitins', 'IV');
INSERT INTO kartiererin VALUES (769, 'Stettler/Muheim', 'ms/lm');
INSERT INTO kartiererin VALUES (770, 'Flury/Reinmann', 'sf/UR');
INSERT INTO kartiererin VALUES (771, 'Felder/Stettler', 'SF/ms');
INSERT INTO kartiererin VALUES (772, 'Stettler/Vitins', 'ms/IV');
INSERT INTO kartiererin VALUES (773, 'Stettler/Köhler', 'ms/kö');
INSERT INTO kartiererin VALUES (774, 'Felder/Steinert', 'SF/TS');
INSERT INTO kartiererin VALUES (775, 'Stettler/Danner', 'ms/ed');
INSERT INTO kartiererin VALUES (776, 'Kaufmann', 'GK');
INSERT INTO kartiererin VALUES (777, 'Gasche/Baumer', 'ga/ba');
INSERT INTO kartiererin VALUES (778, 'Lazzini/Baumgarten', 'laz/bb');
INSERT INTO kartiererin VALUES (779, 'Baumgarten/Gasche', 'bb/ga');
INSERT INTO kartiererin VALUES (780, 'Flury/Kaufmann', 'sf/GK');

INSERT INTO gemeindegrenzen_gemeinde VALUES (1200612312, 1200611894, '2406', 'Oberbuchsiten', 2406);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200731657, 1200730591, '2421', 'Aedermannsdorf', 2421);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200840220, 1200839775, '2425', 'Holderbank (SO)', 2425);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200944819, 1200943883, '2430', 'Welschenrohr-Gänsbrunnen', 2430);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201069836, 1201068927, '2493', 'Lostorf', 2493);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201176997, 1201176295, '2499', 'Stüsslingen', 2499);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201277527, 1201276831, '2502', 'Wisen (SO)', 2502);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198997567, 1198996088, '2612', 'Beinwil (SO)', 2612);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203079099, 1203078127, '2492', 'Kienberg', 2492);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199134519, 1199133355, '2615', 'Erschwil', 2615);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199254836, 1199254076, '2619', 'Kleinlützel', 2619);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203174001, 1203173640, '2514', 'Bolken', 2514);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199365598, 1199364980, '2455', 'Lüterkofen-Ichertswil', 2455);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199427309, 1199426644, '2461', 'Schnottwil', 2461);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199521837, 1199520397, '2465', 'Buchegg', 2465);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203263402, 1203262871, '2518', 'Etziken', 2518);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203314883, 1203314279, '2523', 'Horriwil', 2523);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203354865, 1203354253, '2526', 'Lohn-Ammannsegg', 2526);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203410179, 1203409540, '2529', 'Oekingen', 2529);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203499113, 1203498637, '2534', 'Zuchwil', 2534);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201831384, 1201830067, '2543', 'Bettlach', 2543);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202111075, 1202110723, '2575', 'Fulenbach', 2575);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202241988, 1202241094, '2579', 'Hägendorf', 2579);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200040715, 1200039947, '2541', 'Balm bei Günsberg', 2541);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200104880, 1200104397, '2545', 'Flumenthal', 2545);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202516145, 1202515373, '2585', 'Walterswil (SO)', 2585);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200139028, 1200138724, '2549', 'Kammersrohr', 2549);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1195566655, 1195564768, '2428', 'Mümliswil-Ramiswil', 2428);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198085540, 1198084553, '2472', 'Büren (SO)', 2472);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198254363, 1198253523, '2475', 'Hochwald', 2475);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198386361, 1198385287, '2478', 'Nuglar-St. Pantaleon', 2478);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198496101, 1198495804, '2481', 'Witterswil', 2481);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200211348, 1200210486, '2553', 'Oberdorf (SO)', 2553);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200308579, 1200307155, '2556', 'Selzach', 2556);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200502933, 1200502572, '2402', 'Härkingen', 2402);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200580162, 1200579812, '2405', 'Niederbuchsiten', 2405);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200666002, 1200665185, '2407', 'Oensingen', 2407);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200800221, 1200798964, '2422', 'Balsthal', 2422);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200878794, 1200877802, '2426', 'Laupersdorf', 2426);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200965940, 1200965289, '2491', 'Hauenstein-Ifenthal', 2491);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201114627, 1201114247, '2495', 'Niedergösgen', 2495);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201230328, 1201229535, '2500', 'Trimbach', 2500);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201342651, 1201340257, '2503', 'Erlinsbach (SO)', 2503);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199052784, 1199051348, '2613', 'Breitenbach', 2613);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199148324, 1199147790, '2616', 'Fehren', 2616);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203097490, 1203096530, '2511', 'Aeschi (SO)', 2511);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199276894, 1199276540, '2620', 'Meltingen', 2620);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199376488, 1199376053, '2456', 'Lüterswil-Gächliwil', 2456);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199435046, 1199434692, '2463', 'Unterramsern', 2463);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203200791, 1203200070, '2516', 'Deitingen', 2516);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203290407, 1203289743, '2519', 'Gerlafingen', 2519);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203318941, 1203318575, '2524', 'Hüniken', 2524);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203383080, 1203382686, '2527', 'Luterbach', 2527);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203429705, 1203429199, '2530', 'Recherswil', 2530);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203516665, 1203516005, '2535', 'Drei Höfe', 2535);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200076615, 1200075996, '2542', 'Bellach', 2542);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201952286, 1201950832, '2546', 'Grenchen', 2546);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202071547, 1202070893, '2573', 'Dulliken', 2573);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202154800, 1202153868, '2576', 'Gretzenbach', 2576);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202281993, 1202281347, '2580', 'Kappel (SO)', 2580);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202471332, 1202470607, '2583', 'Schönenwerd', 2583);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200125624, 1200124863, '2547', 'Günsberg', 2547);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202569969, 1202569177, '2586', 'Wangen bei Olten', 2586);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200162609, 1200162041, '2550', 'Langendorf', 2550);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1175339362, 1175339015, '2622', 'Zullwil', 2622);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200241845, 1200240915, '2554', 'Riedholz', 2554);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200403622, 1200402715, '2601', 'Solothurn', 2601);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198146567, 1198146013, '2473', 'Dornach', 2473);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198300314, 1198299656, '2476', 'Hofstetten-Flüh', 2476);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198411088, 1198410764, '2479', 'Rodersdorf', 2479);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200532063, 1200531610, '2403', 'Kestenholz', 2403);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200706378, 1200705892, '2408', 'Wolfwil', 2408);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200824446, 1200823581, '2424', 'Herbetswil', 2424);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200912078, 1200911268, '2427', 'Matzendorf', 2427);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201140926, 1201140514, '2497', 'Obergösgen', 2497);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201257357, 1201256801, '2501', 'Winznau', 2501);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198976723, 1198975265, '2611', 'Bärschwil', 2611);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203029549, 1203028866, '2582', 'Rickenbach (SO)', 2582);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199097323, 1199096511, '2614', 'Büsserach', 2614);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199170954, 1199170546, '2617', 'Grindel', 2617);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203157684, 1203156210, '2513', 'Biberist', 2513);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199337028, 1199336068, '2621', 'Nunningen', 2621);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199349410, 1199348883, '2445', 'Biezwil', 2445);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203245213, 1203244573, '2517', 'Derendingen', 2517);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199406717, 1199405248, '2457', 'Messen', 2457);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1199456933, 1199456334, '2464', 'Lüsslingen-Nennigkofen', 2464);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203303172, 1203302800, '2520', 'Halten', 2520);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203329839, 1203329467, '2525', 'Kriegstetten', 2525);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203398108, 1203397515, '2528', 'Obergerlafingen', 2528);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203458897, 1203458312, '2532', 'Subingen', 2532);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1203558069, 1203557357, '2572', 'Däniken', 2572);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200090270, 1200089845, '2544', 'Feldbrunnen-St. Niklaus', 2544);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200136301, 1200136034, '2548', 'Hubersdorf', 2548);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1201982639, 1201982144, '2571', 'Boningen', 2571);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200183506, 1200182919, '2551', 'Lommiswil', 2551);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202085344, 1202084884, '2574', 'Eppenberg-Wöschnau', 2574);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202178402, 1202177908, '2578', 'Gunzgen', 2578);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202402616, 1202401394, '2581', 'Olten', 2581);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200262934, 1200261960, '2555', 'Rüttenen', 2555);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198033634, 1198033360, '2471', 'Bättwil', 2471);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200443830, 1200442878, '2618', 'Himmelried', 2618);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198181783, 1198180842, '2474', 'Gempen', 2474);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198329695, 1198328947, '2477', 'Metzerlen-Mariastein', 2477);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1198473791, 1198473561, '2480', 'Seewen', 2480);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200478932, 1200478509, '2401', 'Egerkingen', 2401);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1200560304, 1200559795, '2404', 'Neuendorf', 2404);
INSERT INTO gemeindegrenzen_gemeinde VALUES (1202492644, 1202492185, '2584', 'Starrkirch-Wil', 2584);

COMMIT;
