-- PARTE 1
CREATE DATABASE CursosyLibros;
USE CursosyLibros;

-- ESTA NO ESTABA EN LA DESCRIPCION PERO ME HIZO SENTIDO AGREGARLA YA QUE ESTA ENLAZADA CON LA DE CURSO :) 
CREATE TABLE DEPARTAMENTO(
	ID INT NOT NULL, 
	NOMBRE VARCHAR(20),
    CONSTRAINT DEPARTAMENTO_PK
    primary key (ID)
    
);
CREATE TABLE CURSO(
ID INT NOT NULL,
CODIGO VARCHAR(5), 
NOMBRE VARCHAR(25),
DESCRIPCION VARCHAR(25),
CODIGO_DEPARTAMENTO INT,
CONSTRAINT CURSOS_PK
FOREIGN KEY (CODIGO_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID) ON DELETE SET NULL ON UPDATE CASCADE,
PRIMARY KEY (ID),
CONSTRAINT CHECK_CODIGO CHECK (REGEXP_LIKE(ID, '^[0-9A-Z][0-9A-Z]-[0-9][0-9]'))
);

CREATE TABLE LIBRO(
ISB VARCHAR(13), 
NOMBRE VARCHAR(50), 
AUTOR  VARCHAR(30), 
EDICION INT,
EDITORIAL VARCHAR(40), 
AÑO INT, 
CODIGO_CURSO INT, 
CONSTRAINT LIBRO_PK 
PRIMARY KEY (ISBN),
FOREIGN KEY (CODIGO_CURSO) REFERENCES CURSO(ID),
CONSTRAINT CHECK_ISBN CHECK (REGEXP_LIKE(ISBN,CONCAT(REPEAT('[2-9]',2), REPEAT('[0-9]',11))))
);



insert into DEPARTAMENTO (ID,NOMBRE ) values ('1', 'INFORMATICA');
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (1, 'Hanesbrands Inc.', 'Lyon', 1, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (2, 'ShoreTel, Inc.', 'Rozanne', 2, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (3, 'Just Energy Group, Inc.', 'Marcela', 3, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (4, 'Five Star Senior Living Inc.', 'Lanny', 4, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (5, 'Verifone Systems, Inc.', 'Mersey', 5, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (6, 'STERIS plc', 'Morgen', 6, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (7, 'Arthur J. Gallagher & Co.', 'Abra', 7, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (8, 'Nuveen Select Tax Free Income Portfolio III', 'Giacobo', 8, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (9, 'Mohawk Industries, Inc.', 'Chrysa', 9, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (10, 'ARCA biopharma, Inc.', 'Jocelyne', 10, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (11, 'Comcast Corporation', 'Niels', 11, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (12, 'JMP Group LLC', 'Franky', 12, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (13, 'Amazon.com, Inc.', 'Nada', 13, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (14, 'Nuveen Intermediate Duration Municipal Term Fund', 'Shayne', 14, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (15, 'Akamai Technologies, Inc.', 'Ingunna', 15, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (16, 'Juniper Networks, Inc.', 'Verile', 16, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (17, 'Innodata Inc.', 'Isac', 17, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (18, 'Alcobra Ltd.', 'Chase', 18, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (19, 'Hudson Pacific Properties, Inc.', 'Guthrey', 19, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (20, 'Universal Stainless & Alloy Products, Inc.', 'Norma', 20, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (21, 'Heron Therapeutics, Inc.  ', 'Colette', 21, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (22, 'Wendy''s Company (The)', 'Alysia', 22, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (23, 'Delaware Investments Dividend & Income Fund, Inc.', 'Forbes', 23, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (24, 'Xylem Inc.', 'Marchelle', 24, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (25, 'China Zenix Auto International Limited', 'Maurise', 25, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (26, 'ChannelAdvisor Corporation', 'Krishna', 26, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (27, 'Blackrock New York Municipal Income Quality Trust', 'Correna', 27, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (28, 'Intrepid Potash, Inc', 'Midge', 28, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (29, 'Herman Miller, Inc.', 'Tami', 29, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (30, 'Apache Corporation', 'Berri', 30, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (31, 'Wells Fargo & Company', 'Demetri', 31, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (32, 'Pernix Therapeutics Holdings, Inc.', 'Carlita', 32, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (33, 'J P Morgan Chase & Co', 'Jodie', 33, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (34, 'TriCo Bancshares', 'Raff', 34, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (35, 'Garrison Capital Inc.', 'Stefanie', 35, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (36, 'Firsthand Technology Value Fund, Inc.', 'Anthea', 36, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (37, 'The Michaels Companies, Inc.', 'Abbye', 37, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (38, 'Lehman ABS Corporation', 'Theo', 38, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (39, 'Ames National Corporation', 'Valery', 39, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (40, 'Bioanalytical Systems, Inc.', 'Eugenia', 40, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (41, 'Origo Acquisition Corporation', 'Ric', 41, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (42, 'Capitala Finance Corp.', 'Meredith', 42, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (43, 'J.M. Smucker Company (The)', 'Brett', 43, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (44, 'Portland General Electric Company', 'Mignon', 44, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (45, 'iShares 0-5 Year Investment Grade Corporate Bond ETF', 'Rozanne', 45, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (46, 'Liberty Media Corporation', 'Ammamaria', 46, 1);
insert into CURSO (ID, CODIGO, NOMBRE, DESCRIPCION, CODIGO_DEPARTAMETNO) values (47, 'ClearBridge Large Cap Growth ESG ETF', 'Christian', 47, 1);

insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('191464801-3', 'Novus Therapeutics, Inc.', 'Devonne', 1, 'Mante, VonRueden and Pacocha', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('370317534-6', 'Surmodics, Inc.', 'Terrie', 2, 'Kunze and Sons', 1985, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('989068442-X', 'HSBC Holdings plc', 'Desirae', 3, 'Wolf-Johnson', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('763456366-8', 'OneBeacon Insurance Group, Ltd.', 'Perceval', 4, 'Shields LLC', 1985, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('042176259-4', 'Blackrock New York Municipal Bond Trust', 'Carolina', 5, 'Predovic, Greenholt and Lind', 1988, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('148720297-0', 'Lightbridge Corporation', 'Drusy', 6, 'Heller-Swift', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('869346479-5', 'Vicor Corporation', 'Bear', 7, 'Turner, Kulas and Pacocha', 1992, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('963522574-1', 'BlackRock California Municipal Income Trust', 'Rurik', 8, 'Bergnaum-Klein', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('567806510-6', 'Enterprise Financial Services Corporation', 'Antoine', 9, 'Ziemann Inc', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('797623076-X', 'KLX Inc.', 'Kerry', 10, 'Greenfelder and Sons', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('369526440-3', 'MFA Financial, Inc.', 'Leonore', 11, 'Crooks Inc', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('287445187-8', 'TransAlta Corporation', 'Aila', 12, 'Monahan, Fisher and Kiehn', 2006, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('282344003-8', 'CombiMatrix Corporation', 'Maude', 13, 'Gutmann, Dare and Russel', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('621419185-6', 'First Citizens BancShares, Inc.', 'Briggs', 14, 'Howell, Denesik and Littel', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('516613323-4', 'Plains All American Pipeline, L.P.', 'Hunfredo', 15, 'Beahan-Shields', 1996, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('104206949-2', 'SciClone Pharmaceuticals, Inc.', 'Donalt', 16, 'Carroll Inc', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('463796634-5', 'Telecom Italia S.P.A.', 'Almeda', 17, 'Hermann-Leuschke', 1978, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('960758315-9', 'Cass Information Systems, Inc', 'Lezlie', 18, 'Lind-Langworth', 1988, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('691546299-6', 'Enbridge Inc', 'Idalina', 19, 'Prohaska, Volkman and Marquardt', 1992, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('932502269-9', 'Dominion Energy Midstream Partners, LP', 'Eugenio', 20, 'Heidenreich Inc', 1991, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('748250227-0', 'Suburban Propane Partners, L.P.', 'Stern', 21, 'Ernser LLC', 1995, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('392866906-0', 'Frontier Communications Corporation', 'Vasily', 22, 'Durgan Group', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('968352065-0', 'Global Eagle Entertainment Inc.', 'Dominique', 23, 'O''Conner-Walker', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('007340174-9', 'ParkerVision, Inc.', 'Barris', 24, 'Cole Group', 1995, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('579429623-2', 'Dreyfus Strategic Municipals, Inc.', 'Ferris', 25, 'Kessler-Senger', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('150680266-4', 'Louisiana-Pacific Corporation', 'Elliott', 26, 'Lind, Treutel and McClure', 2003, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('453851842-5', 'Murphy Oil Corporation', 'Ted', 27, 'McGlynn Group', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('292792729-4', 'Dillard''s, Inc.', 'Elfrieda', 28, 'Stokes Inc', 1996, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('942585964-7', 'Kinsale Capital Group, Inc.', 'Jaquenette', 29, 'Witting, Walter and Langworth', 2007, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('287891624-7', 'PowerShares DWA Tactical Multi-Asset Income Portfolio', 'Petra', 30, 'Hudson Inc', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('492457554-2', 'NextEra Energy, Inc.', 'Hazel', 31, 'Halvorson-Runolfsdottir', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('837669662-9', 'CorVel Corp.', 'Lettie', 32, 'Beahan-Koelpin', 1977, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('110326943-7', 'CM Finance Inc', 'Arthur', 33, 'Bogisich and Sons', 1995, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('812428290-0', 'eHi Car Services Limited', 'Gaylord', 34, 'Harvey-Jast', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('278861287-7', 'Ross Stores, Inc.', 'Biron', 35, 'Wilkinson-Pacocha', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('634423112-2', 'UCP, Inc.', 'Tarah', 36, 'Welch, Hansen and Walter', 1999, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('153550833-7', 'Intrepid Potash, Inc', 'Lynnell', 37, 'Parisian-Klocko', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('150327425-X', 'iShares FTSE EPRA/NAREIT Europe Index Fund', 'Bailey', 38, 'Crooks and Sons', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('021640803-2', 'Bonso Electronics International, Inc.', 'Paolina', 39, 'Block, Rippin and Rogahn', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('355257022-5', 'Quanta Services, Inc.', 'Robinett', 40, 'Kuhn, Strosin and Daniel', 1999, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('365219275-3', 'Fidelity Southern Corporation', 'Lanita', 41, 'Legros-Sporer', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('098471954-7', 'Capital One Financial Corporation', 'Max', 42, 'Turner, Bartell and Satterfield', 2007, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('941573775-1', 'Royal Dutch Shell PLC', 'Marnia', 43, 'Grady Inc', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('070684756-3', 'Perry Ellis International Inc.', 'Lin', 44, 'Reinger-Ward', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('522038491-0', 'Royal Bank Scotland plc (The)', 'Zaccaria', 45, 'MacGyver Inc', 2003, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('118879054-4', 'Liberty Interactive Corporation', 'Rachelle', 46, 'Toy, Halvorson and Kozey', 1989, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('019717282-2', 'Four Corners Property Trust, Inc.', 'Lewie', 47, 'Lockman Inc', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('508627123-1', 'Denny''s Corporation', 'Ailis', 48, 'Bernier Inc', 1988, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('608052246-2', 'Nuveen Diversified Dividend and Income Fund', 'Ami', 49, 'Vandervort Inc', 1988, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('508097698-5', 'Companhia de saneamento Basico Do Estado De Sao Paulo - Sabesp', 'Hill', 50, 'Mosciski, Crona and Walker', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('371610782-4', 'Icahn Enterprises L.P.', 'Burton', 51, 'Bergstrom-Lesch', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('188690337-9', 'Glaukos Corporation', 'Flossie', 52, 'Barrows, Sawayn and Rogahn', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('821524175-1', 'Selective Insurance Group, Inc.', 'Hillel', 53, 'Hills-Rosenbaum', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('868513612-1', 'Provident Financial Services, Inc', 'Melisenda', 54, 'Walter Inc', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('537876280-4', 'Park Sterling Corporation', 'Kelley', 55, 'Krajcik Group', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('946939952-8', 'Cascadian Therapeutics, Inc.', 'Chad', 56, 'Hauck, Walker and Ernser', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('179451381-7', 'Wendy''s Company (The)', 'Zachary', 57, 'Lynch Inc', 2005, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('934130087-8', 'Hartford Financial Services Group, Inc. (The)', 'Ciro', 58, 'Bergstrom and Sons', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('380126577-3', 'Global Eagle Entertainment Inc.', 'Karlee', 59, 'Bechtelar Inc', 2005, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('549322554-9', 'FRONTEO, Inc.', 'Bastien', 60, 'Sporer-Schiller', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('860099622-8', 'Restaurant Brands International Inc.', 'Gay', 61, 'Bradtke, Hagenes and Hahn', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('521978536-2', 'The First Bancshares, Inc.', 'Janos', 62, 'Lowe, Mueller and Von', 1987, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('226221705-X', 'American Tower Corporation (REIT)', 'Gibbie', 63, 'Doyle, McGlynn and Borer', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('358718301-5', 'Tanger Factory Outlet Centers, Inc.', 'Jilleen', 64, 'Runte-Rosenbaum', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('997861882-1', 'Autohome Inc.', 'Jake', 65, 'McCullough Inc', 2007, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('016641660-6', 'Vitamin Shoppe, Inc', 'Falkner', 66, 'Ruecker Inc', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('118306202-8', 'Western Asset Municipal High Income Fund, Inc.', 'Georgie', 67, 'Durgan, Klein and Dach', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('922695313-9', 'Sunstone Hotel Investors, Inc.', 'Gerrilee', 68, 'Miller, Ritchie and Boyle', 1992, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('811204616-6', 'Peregrine Pharmaceuticals Inc.', 'Dalenna', 69, 'Gottlieb LLC', 1985, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('213745492-0', 'New York Community Bancorp, Inc.', 'Perice', 70, 'Luettgen, Hane and Goodwin', 2005, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('485376464-X', 'Pacific Special Acquisition Corp.', 'Martainn', 71, 'Lubowitz, Rodriguez and Wintheiser', 2006, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('089633089-3', 'First Trust NASDAQ Clean Edge Green Energy Index Fund', 'Avrom', 72, 'Stroman LLC', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('852222432-3', 'China Online Education Group', 'Florence', 73, 'Hamill and Sons', 1993, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('317220425-1', 'KalVista Pharmaceuticals, Inc.', 'Leonidas', 74, 'Rogahn, Sanford and Kuhn', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('383942527-1', 'Kforce, Inc.', 'Raynard', 75, 'Donnelly, Ferry and Buckridge', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('861459222-1', 'Presidio, Inc.', 'Madalena', 76, 'Hauck, Daniel and Langworth', 1999, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('553515424-5', 'M&T Bank Corporation', 'Lalo', 77, 'Pfeffer and Sons', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('165226006-4', 'First Guaranty Bancshares, Inc.', 'Hunter', 78, 'Lynch, Blanda and Schuster', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('994897538-3', 'Tremor Video, Inc.', 'Cordey', 79, 'Hintz, Ernser and Fisher', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('471262264-4', 'Eclipse Resources Corporation', 'Inna', 80, 'Conroy Inc', 1984, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('661228585-0', 'LifePoint Health, Inc.', 'Blisse', 81, 'Strosin, Huel and Mosciski', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('643819412-3', 'Cambrex Corporation', 'Patsy', 82, 'Paucek-Bahringer', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('840348059-8', 'Donnelley Financial Solutions, Inc.', 'Beitris', 83, 'Schuppe-Herzog', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('103364239-8', 'Kimball International, Inc.', 'Hubert', 84, 'Bartoletti and Sons', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('910584446-0', 'Nanometrics Incorporated', 'Nicolis', 85, 'Towne Inc', 2001, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('580441818-1', 'Danaos Corporation', 'Ofilia', 86, 'Wintheiser, Reichert and Greenholt', 2009, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('113504433-3', 'Merrill Lynch & Co., Inc.', 'Dominick', 87, 'Berge, Emard and Lowe', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('304018211-0', 'Sterling Bancorp', 'Branden', 88, 'Terry, Rolfson and Johnson', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('221072669-7', 'Edgewater Technology, Inc.', 'Florry', 89, 'Mraz, Ondricka and Anderson', 1984, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('328269824-0', 'Renesola Ltd.', 'Saw', 90, 'Streich and Sons', 2001, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('965257913-0', 'Taiwan Fund, Inc. (The)', 'Madelaine', 91, 'Spinka-Ledner', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('763203493-5', 'Great Ajax Corp.', 'Marjie', 92, 'Moore-Stroman', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('658303216-3', 'Cenovus Energy Inc', 'Dolores', 93, 'Welch Group', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('827389258-1', 'CNX Coal Resources LP', 'Melinde', 94, 'Torp, Tremblay and Hessel', 1995, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('589221784-1', 'Webster Financial Corporation', 'Frankie', 95, 'Murray LLC', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('264215178-6', 'Transcontinental Realty Investors, Inc.', 'Esther', 96, 'Kozey-Walsh', 1995, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('585469224-4', 'Goldman Sachs Group, Inc. (The)', 'Shannon', 97, 'Miller-Wisozk', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('473237853-6', 'O''Reilly Automotive, Inc.', 'Giff', 98, 'Weissnat-Gutkowski', 1992, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('919244989-1', 'Voya Infrastructure, Industrials and Materials Fund', 'Pascale', 99, 'Von-Upton', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('523274053-9', 'New America High Income Fund, Inc. (The)', 'Alia', 100, 'Kilback Inc', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('923898358-5', 'Olin Corporation', 'Emmy', 101, 'Weber-Wiza', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('560068743-5', 'United Therapeutics Corporation', 'Dev', 102, 'Quitzon-Ledner', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('751200716-7', 'WEX Inc.', 'Louisa', 103, 'Wilderman, Mohr and Altenwerth', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('512018203-8', 'AMC Entertainment Holdings, Inc.', 'Elliott', 104, 'Ernser, Nikolaus and Schaden', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('924644754-9', 'Nustar GP Holdings, LLC', 'Kelsey', 105, 'Mueller-Stehr', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('543729583-9', 'Ocean Power Technologies, Inc.', 'Jeannine', 106, 'Smith Inc', 2003, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('571978120-X', 'The AES Corporation', 'Banky', 107, 'Wolf Group', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('110023902-2', 'New Ireland Fund, Inc. (The)', 'Rozele', 108, 'Willms-Schaden', 2003, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('497969793-3', 'Capital One Financial Corporation', 'Ryun', 109, 'Cronin, Witting and Schmeler', 1991, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('971711137-5', 'Dreyfus High Yield Strategies Fund', 'Ludvig', 110, 'Schaefer, West and Turner', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('063829597-1', 'Playa Hotels & Resorts N.V.', 'Adan', 111, 'Conroy-Goodwin', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('743499590-4', 'NCI Building Systems, Inc.', 'Ferrel', 112, 'Smitham, Macejkovic and Gulgowski', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('288614760-5', 'Global Medical REIT Inc.', 'Emmaline', 113, 'Nicolas, Hirthe and Lindgren', 2002, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('134702212-0', 'Chart Industries, Inc.', 'Gustavus', 114, 'Jones, Johnston and Braun', 2006, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('738734993-2', 'Chevron Corporation', 'Dora', 115, 'Marvin, Luettgen and Kuhn', 2005, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('193985483-0', 'China Commercial Credit, Inc.', 'Callie', 116, 'Purdy LLC', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('781877864-0', 'Xunlei Limited', 'Gayle', 117, 'Botsford, Stoltenberg and Skiles', 1996, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('486434677-1', 'Balchem Corporation', 'Vincent', 118, 'Hettinger Inc', 1999, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('091906040-4', 'TCG BDC, Inc.', 'Cordie', 119, 'Hansen and Sons', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('655864498-3', 'Teleflex Incorporated', 'Johnathon', 120, 'Howe-Kemmer', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('421557401-3', 'Blackrock MuniHoldings California Quality Fund,  Inc.', 'Ardath', 121, 'Morissette, Balistreri and Heidenreich', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('940124867-2', 'Concho Resources Inc.', 'Elsa', 122, 'Maggio-Rosenbaum', 2005, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('288302551-7', 'Snap Inc.', 'Gabriellia', 123, 'Buckridge LLC', 2011, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('696316998-5', 'Terra Nitrogen Company, L.P.', 'Juieta', 124, 'Satterfield-Koss', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('127272198-1', 'Bristow Group Inc', 'Lexy', 125, 'Goodwin Inc', 1967, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('358867127-7', 'Jounce Therapeutics, Inc.', 'Ellswerth', 126, 'Crooks Group', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('253889103-5', 'YRC Worldwide, Inc.', 'Thorpe', 127, 'Bins Inc', 2000, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('930246551-9', 'Sotherly Hotels Inc.', 'Dwain', 128, 'Kling LLC', 1996, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('250953864-0', 'Oppenheimer Holdings, Inc.', 'Tanner', 129, 'Blanda-Wolf', 2003, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('433285290-7', 'Cabot Oil & Gas Corporation', 'Rosemonde', 130, 'Hegmann Inc', 1986, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('704426123-X', 'Blueknight Energy Partners L.P., L.L.C.', 'Kermy', 131, 'Bode-Bernier', 1989, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('131734195-3', 'Sumitomo Mitsui Financial Group Inc', 'Cassius', 132, 'Koepp, Hoeger and Rohan', 1997, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('634729313-7', 'Wells Fargo & Company', 'Randy', 133, 'Stanton-Sanford', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('717720333-8', 'Chesapeake Granite Wash Trust', 'Leoine', 134, 'Rippin-Murphy', 1987, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('000260034-X', 'United States Cellular Corporation', 'Wilhelm', 135, 'Pfeffer and Sons', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('752064238-0', 'Fortress Transportation and Infrastructure Investors LLC', 'Chrotoem', 136, 'Waelchi, Kessler and Yundt', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('238024623-8', 'Nutraceutical International Corporation', 'Svend', 137, 'Klocko-Altenwerth', 1986, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('448367490-0', 'Wheeler Real Estate Investment Trust, Inc.', 'Scot', 138, 'Wiegand LLC', 1975, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('008654973-1', 'Charter Financial Corp.', 'Celle', 139, 'Grant and Sons', 1994, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('246224790-4', 'CYS Investments, Inc.', 'Latashia', 140, 'Walker Group', 2012, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('768516045-5', 'DASAN Zhone Solutions, Inc.', 'Staffard', 141, 'Runte-Fahey', 2013, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('581127363-0', 'Raytheon Company', 'Kellyann', 142, 'Heidenreich LLC', 2010, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('062796297-1', 'Consolidated Edison Inc', 'Wilhelmina', 143, 'Bailey, Maggio and Reichel', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('331528568-3', 'Exelixis, Inc.', 'Drake', 144, 'Lindgren-Crooks', 1996, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('422018700-6', 'Edge Therapeutics, Inc.', 'Maureene', 145, 'Schumm-Waters', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('777276908-3', 'First Trust Total US Market AlphaDEX ETF', 'Sal', 146, 'Rodriguez-Boyer', 1998, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('334201230-7', 'Instructure, Inc.', 'Cecilla', 147, 'Little, Carter and Skiles', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('407688794-8', 'Pitney Bowes Inc.', 'Ardine', 148, 'Schulist Group', 2008, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('400846698-3', 'Ivy NextShares', 'Andeee', 149, 'Kassulke LLC', 2004, 1);
insert into LIBRO (ISBN, NOMBRE, AUTOR, EDICION, EDITORIAL, AÑO, CODIGO_CURSO) values ('077033702-3', 'Petroleo Brasileiro S.A.- Petrobras', 'Fred', 150, 'O''Conner Group', 2009, 1);
