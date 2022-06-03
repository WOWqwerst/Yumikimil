CREATE DATABASE  IF NOT EXISTS `yumkimil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `yumkimil`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: yumkimil
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acceso`
--

DROP TABLE IF EXISTS `acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acceso` (
  `idAcceso` int NOT NULL AUTO_INCREMENT,
  `alumno` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`idAcceso`),
  UNIQUE KEY `idAcceso` (`idAcceso`),
  KEY `fk_acceso_alumno` (`alumno`),
  CONSTRAINT `fk_acceso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceso`
--

LOCK TABLES `acceso` WRITE;
/*!40000 ALTER TABLE `acceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `control` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) NOT NULL,
  `materno` varchar(45) DEFAULT '-',
  `passwd` varchar(64) NOT NULL,
  PRIMARY KEY (`control`),
  UNIQUE KEY `control` (`control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('12611','GUILLERMO','RIVERA','NEGRETE','750c5570c2cf712580c2f744a033ac74543b2d18af5912d50d6a40df1b62114b'),('13143','ULISES','GARCIA','TOLEDANO','194f4de6fa09b01ddf79987e7c4e03149e4c152be1fcbdd6c1915e2257ab6174'),('17390','CRISTIAN EDUARDO','SANTAMARIA','TOVAR','c79848378e74450dc9ad792857c9f20f624e57f679b997bd067d8d30b1b78a47'),('19950','BRIAN ALAN','YESCAS','GARCIA','4e1491851e0882fba537a1197d0ed4eea49cb2b8a179b4d7b181b8c8a382b0fc'),('20412','CARLOS HUMBERTO','ESPINOZA','SALDIVAR','5299ca5d728189d5f8d4ca0db1a35bb6fe9059280d0528c0c2c8a26c8e1bc8e7'),('20416','CARLOS GUSTAVO','PAREDES','ARRIETA','a8c46f63d6455446067d16bd36814479202bc238a42243f7f858a7571578d4b3'),('20459','JUAN CARLOS','LOPEZ','ESTRADA','2f7fa4c79a27f086b957764ed074bcb024cbd2a35640268e30096779d917fa32'),('20461','JOSUE','BARBERENA','PROCEL','ba5b03505a897b003ed1f5eac91009d9957d0910ac9d463b775a5f75b5bb160b'),('20469','SANDRA ANGELICA ','FLORES','SOROA','56d8e3c893e36c53c334c84c8be7186cb20fba6aa9507fedba5fe74ac9dffc34'),('20483','LUIS DANIEL','AGUIRRE','CUEVAS','88d92ec9ed7224b98354d91df159988a87a938f6bbcd94b7b6525fe3edf4aff3'),('20540','GERARDO','BARTOLO','CRUZ','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),('20548','ALFREDO ISMAEL','HERNANDEZ','LOPEZ','927b7044d38b12076cb848c1756f0e60cab21f888bb0065df053f69fbf724a59'),('20565','JESUS EDEN','REYES','MENDEZ','8b753cc1d276a2ed28d3cff879b88641914102584c1bb0f2c9c22cbb2af267f6'),('20581','BRAULIO RAUL','ROMERO','ROMERO','9a7846c3382d619ce35dfb5c02240c14d50af2a53b6ad38464abb1a27ead5a4e'),('20602','LUIS ARTURO','DE LA PEÑA ALVAREZ','TOSTADO','ac98272c48be599658e1b666b8c83b5e860e3449a230fa50267aa4622acc82b8'),('20626','GONZALO','GOMEZ','GUIZASOLA','a70c0a2fb088f3eaab78ad04c32f957f9f9060bc6fe3aa6ce6ef72b4dd955436'),('20632','DAVID ELISEO','LAZCANO','MARTINEZ','58174a19c1f4599fea708a757acb120e845a99795a85566ce2bc12a2f7d1240d'),('20636','ELIAS ALEJANDRO','FLORES','RODRIGUEZ','4c975f57c560ea0816e913f0304fc93da9b0132a155ce34b35db206e15875f52'),('20638','ALVARO EDUARDO','SALINAS','LOPEZ','13d39e8fe4fcb7f1072f78b6bcee4a289c2e3b97ba73194c36fead59593ae13d'),('20642','JOCELYNE WALESKA','GONZALEZ','ESCOBAR','6f4a340010d079dafe63a83561c414eb2f162398802bf859bf746c060b7c8eb9'),('20649','CHRISTIAN ROSXAV','ROMERO','ESTRADA','342431bef8eb6b240127e2551e9734aa6df23715c62f88fcde57b4f89ed0023a'),('20661','CINTYA AILED','VIVANCO','BORGONIO','af0a78b573f36aac0333ac60d9db0bc337af2149cc5175acc7bcc23cf199ad62'),('20666','FERNANDO ADRIAN','GONZALEZ','ORDAZ','391cf6f23bb4e97b61eac0a5a68c37a1103c6ebae77a00c3635e354e597893f9'),('20678','ANGEL ARTURO','GARCIA','MALDONADO','e37e5781b6e8a8a7532c056a1e96d375690304a3a25fa7bcab5ee3d6252165ec'),('20683','MONTSERRAT','MAGES','TUDON','ea7978af50580224a903dd14c41fdda55dff93cf9f61e21d44d64b17b679c652'),('20690','RODRIGO','ESQUIVEL','GARFIAS','4603f8fe8f6a77af4e1c502284b7f8ff7af625d33d982f3e8fcb30a6201a60af'),('20695','EDGAR','LOPEZ','DE LA O','ad4bdd35e2060ad2d28ceff903f91fa8277ed30e190e240be69e741871e7c2c9'),('20701','FRANCISCO JAVIER','GARCIA','HERNANDEZ','f2be8b1ec1bca825fb32b68347e2145dfe12bc2472a20ac2a55aa264765df9bf'),('20706','CRISTHIAN OMAR','LARIOS','MATIAS','0482e374a683c23f3ba43d31639452d01aec76ace6e2efb75b503d72be1d11c3'),('20717','OSCAR','RODRIGUEZ','MIRANDA','560db1723a3d1deda956f0ecb090c59655fd0a4145fa6f7459c9a32a7850d465'),('20726','CHRISTOPHER GIOVANNI','NERI','ANAYA','e1597321835ae7bae8c7ae8a3e918fd08db037dd46f629981317e77ed43418ca'),('20732','GIOVANNI OSMAR','MARQUEZ','PEREZ','361c3bb7ef5caa3cf00bee22c7d232969677daa9a288cc9258ea0d6de8914673'),('20761','FRANCISCO JOSE','AGUILAR','ZARAGOZA','ec4eb6fe590a0e612a6cfb2b015216486ef74a547686d86e1a5a60366c2884c3'),('20766','ABRAHAM','MORENO','CRUZ','b47cc9dc7ea0be9311deb4f0bafb9c9268c7b6725cc632399f825a852e9d8214'),('20775','BRANDON URIEL','FLORES','RAMIREZ','adb2e45feaed2d00845e6c794e112d55f5c516fa77e12bbef718723b120bd6f5'),('20779','GUILLERMO','ALEJANDRE','CALDERON','f70b235a6240d448668c904a559428bed0e6458f9502fed9d0d55f18bd6afeb2'),('20780','EDUARDO FABRICIO','PERALTA','BERISTAIN','30197cbd782cdfa3cad4c1deeaa8807171806d2640e22edc905dc29fb7f2eabf'),('20781','EDUARDO MARIÑO','MARTINEZ','VAZQUEZ','ef78bf5f8567f75b0dff4b1e207aaa060325e47c1f2957c5ae63e626b67a26d2'),('20784','DIEGO AUGUSTO','HUERTA','SANTIAGO','b4ee226a6a6176712846aebc7e04b6d751048a41e189f7e370dca7a27b10e5a3'),('20817','FERNANDO','MARTINEZ','CERVANTES','0af2ca767631081cf2e9451649ea899aa5f86bfdf4e6eebcffe1a9c3e25ceee1'),('20823','RICARDO','ARROYO','IBARRA','a021cb7b67f427f06049be1ea5c3bf6ca49844430b38f977aea892e252203fbf'),('20841','ALAN','VAZQUEZ','GALINDO','75409fb4fcc0016592a1899dd08e6a9e50aac703dd3b511ae37ac72577b64b79'),('20845','ANGELICA','ROMERO','MALDONADO','9ebba8d207038f19bfa0375f205705f0e551d3339e88bbdae227de7161f6eb75'),('20861','JORGE','RIVERA','MONTALVO','f598d21e478c3b72970b5cc7f1ed5953878426a167a7a79b5a1e75463754a172'),('20891','KARLA YESSENIA','GARCIA','BAUTISTA','e0af15d9ad392edc65976d234fa29fb509394a1fd4e3533acd0b22b72349d26f'),('20901','DIANA','SEGOVIA','DIAZ','91f0092e40685fbdb07f3fedba64ad59c1c6b2cfa7116af68e9465384c494598'),('20998','OMAR ALEXIS','NIETO','LOVERA','1d6859ef5e613269ed01cae7739ddcaa8488f5ab1cd589f0f5f360d6ddbaecd1'),('21069','LUIS ENRIQUE','LOPEZ','SALVADOR','f243f4f81dd3e0deb8e4929e89f3fa8c247ca05c9f8840e6eb9f9ae6b10cb72a'),('21093','JESUS EDUARDO','JUAREZ','FUENTES','4765250db70cc65d965294d5a8e9bc66c8f7df6dfb1f04868bf80ded9c7afd52'),('21111','KELLY DAYANE','HERNANDEZ','SOLANO','ee006519acf5ee196d51f524f7e098772fb42b03aefdc09c7a463d2646f14705'),('21114','OSCAR EDUARDO','VERA','DORANTES','33d2b5ce7da1725dc7b73195aa3264a087363808af93fddabbd83a447e66ce85'),('21129','DAVID MISAEL','MIJARES','FLORES','4d556e7f69a9b70b926dc250e480d4bd5b689eaab536ecd450a89a21d35220a5'),('21133','GEOVANNI FARID','CASTILLO','RODRIGUEZ','0be4c6285b9876a170df69b3fb6d626fda5909cc06cabbd0b6b37b3a92bc0da4'),('21137','YOSELIN BERENICE','QUIROZ','NICOLAS','ae0adc0755b5b3e0e9b5720568e37ad56fc3fc78556651cbbadc2160bb30ac63'),('21157','JESUS ALEJANDRO','BECERRA','ESQUIVEL','ff645ba665fe3f4009e98e202bae5695e9a3a36d90d854d3cea699aae4a2f5f7'),('21200','GAEL ARTURO','SANCHEZ','ZERTUCHE','c03a09935d4f119ae1898895d81a9f3db3833763e619708ebf0fa40cb487281a'),('21241','MARLA YARET','JUAREZ','CASTRO','a771bcff8cf7336d78127cec97cc2e6ce00025914287f631f92b37aa9d9f726e'),('21254','RICARDO','MARTINEZ','SANCHEZ','9841a2c0f9b4cf3a442dc0633af7bc8ec09d92171db356e2717f1f7eda4af12b'),('21258','MARIA DE LA LUZ','BARRIGA','DIAZ','78e088de08db2f76d98851523b98dc5056224dac33c79a7de7cb5c4ca14a7d91'),('21273','DONOVAN JORGE','CASTILLO','MORONES','c1ec950188c8ac8af5a50d2da0c8837f644d41e2562d004ed643482179d003c2'),('21299','RUBEN','SOSA','BEATRIZ','b37bb790714ec2506228a1fdb5acbcc4a1ae760226fef46d7dab2ab433a9d4b1'),('21349','BRANDON','CRUZ','SEGUNDO','b02fdf113e8368fc4d04fc7d9266d1df262cd327f76d8b20b540abe0c2e1535b'),('21547','CESAR FERNANDO','PEREZ','MARQUEZ','521ea76151193e40002d442ad4bd49356a32d6c56f8da0d833cfe1783617085f'),('21565','EDGAR YAEL','CARDENAS','MARTINEZ','7aef6e13e02e3350e58d20b42341ccd081ec75b413e75f532398f62f6d883dc1'),('21832','JONATHAN HAZEL','ZAMORA','MELO','8147f4004d6960c8cad420d36f68182e0d1e8ea7cd0ced1133dec20909089533'),('21934','NAHUM','GOMEZ','ORTIZ','9e899c5671534aaa389bbdc03628791e0d9900028ae0153571f01d1f6f890da7'),('22034','YAIR','ALVAREZ','SANCHEZ','6323d05e3f6795c0614b2cebfc3a970572f2a8fed7667a84ca13e85880ab46a7'),('22321','ESTEBAN','CORTES','VARGAS','c5b08d1006c8207047405ab63288aa11f5af488d4459da168ef9bd239bf645af'),('22363','MAURICIO','MARTINEZ','CORTES','924609eae9fde928936968bf129e3624cab9d2420e1ab18152e82a6663dbd325'),('22527','ALEJANDRO MANUEL','MONDRAGON','CASTRO','795ab7088d1df0c67f903e1218fd5a0ada518ee6e19ed2138cbd092e108a03ac'),('22531','SERGIO ESTEBAN','LEDESMA','JALPA','105597dd56b65e1bc7b45981f4417af82c025eaf2217f17aea21e913641aed66'),('22575','JOSE ANTONIO','FLORES','GARCIA','2500f51807743c638a0682a4d74553bb1a66d1727007e6434fa8f372eae59719'),('22620','RAUL EMMANUEL','ANGULO','BELLO','63260177628a3f71fc6199f6d28ea695fa36861cb6d86a5196d015fe03c1f1c9'),('22622','GERARDO','PIMENTEL','IBARRA','72a025714561e0d96c1142a56b0135db1b8b1b1b2c16b17b125690d576d1cb56'),('22625','URIAS','BARRIENTOS','PEDRAZA','b59998ca5b8ed2a1e9efe458df14b063f8e2bb1f7f54e73ce9994c883b0511ac'),('22640','CLARA YVONNE','PACHECO','ROMERO','dc5b0b4ee58a57528ed98ee16a6aa23dfc2311970d3a1d4c3fcdc27ff85fb93e'),('22761','JUAN ESTEBAN','HUERTA','ASTIVIA','f581c49910e8fce3f255fcc6bea19afc43bd48368beae87753fe4f2a253de66a'),('22787','FERNANDO','MENDEZ','LAMADRID','8288d34bd388b61399b6e25ff4e232cdab57910deda5b42fc5018cd15ddb1b70'),('22800','MISHELL EMMANUEL','ANGUIANO','RIVAS','a9ac07f8234c34db3b82947bec665d5468a9c33d372a69fc5d057a95a4def65c'),('22804','KARLA ISABEL','RAMIREZ','ACEVEDO','4dc9ddca148b335f157f82bae2e28c76bfcb04e0cf6f6385a4ebe2037debf680'),('22822','ANGEL MARTIN','RENDON','REYES','e03261f846989d76ba100e2847d2d2730c8aafc9b974d69e06d46c0de3277d8b'),('22823','ANDREA FERNANDA','ORTEGA','CORDERO','3b7186a51e6dd9a5ff7f26acf8bfb3e2314441efef63e2181eddf21634330044'),('22824','FERNANDO GUADALUPE','PAVON','BECERRIL','d6cd2136e6fc4995eb1ac0de7a0762539b5204a1c54f55f2ea601b82acaaba05'),('22877','NAOMI','ZARATE','AVILA','d60357af5db09dcb4ff0e9b7cd149d996f311e0025a2858938702f63eed0357a'),('22896','MIGUEL ANGEL','ZARATE','PATLAN','48e8b44c9a45f990209fd49e26024bd857ee969c5ff7c5fd61cd90bbf264332b'),('22914','VIRIDIANA','GRANJA','CASTILLO','06372c26c61344ab47249285082910df80930cdc7ed15c7170ec7ce6a17e6af4'),('22917','HECTOR DANIEL','HERNANDEZ','CARRANZA','ab6a346f416ec51e7de0a2e6ab3182f8d2f4870dc199524c4e641db5cf826535'),('22920','VALERIA MARIEL','RICO','JIMENEZ','f31c9090f0721df074820160e82c6a0b78750e90b694505353741f7d1e02e7d1'),('22933','JAIME URIEL','GUZMAN','OLVERA','3742e1a12fe2179f829674a2f8e4e1299538111e51fc0bdfd5646296ca146053'),('22941','EDUARDO','MORENO','LOPEZ','f7aa32961b3b7caf90db20f7753bf506c2526f13458e94bf4c74dc656a4a0aa9'),('22942','JAVIER','ESPINDOLA','VALENZUELA','1de6469b9e77e0d883756264b8c2afe1622a27268b7f68923345d4c6f2089137'),('22950','FANNY LIZET','OJEDA','BARRERA','f12615d5ef367a09be4a6d90c5250da8bd5624629466f9d395781d56fd7940f7'),('22982','AXEL JARED','MONTALVO','MARTINEZ','c5b3edab948da2e2f70364a2177d1edc2cddea2ff730530685217c0eb9f1d751'),('22983','CHRISTOPHER ARMANDO','MEDINA','LEON','a95015e105cbd8e0d5dcc03a52f6534a85f9d5313267bb73687a9326de86aa59'),('22993','JOSE DE JESUS','AYALA','AYALA','38307094d613b0cb74f8d15711de74e95eaac8c132b7ad7adf3fb5f2554d5007'),('22995','EDITH BERENICE','JUAREZ','APOLINAR','29878066aed7e504c5386f64cabe7c80be464ae4d615e01ffeb286a6e83c9352'),('23026','ALEJANDRO','GUERRERO','FLORES','8c5b073e8b77fa90ce46faf3278f11791a866e4f352b9ff8733699af89cdbc75'),('23060','GUILLERMO JAVIER','LEON','CASTRO','7c8c5d6b05571c6f8ba5b44987fb659a2d01f3f59d6fd687cebd64d17c750c29'),('23066','JESUS ALEJANDRO','DUFFLART','HERNANDEZ','b531a2e37cafff6750caed50b5ad3881f984a6b74078caa4380b6d3be8fee412'),('23086','LUIS FERNANDO','NAVARRETE','NAVA','54a5ff12a8dd4062c11acdfd6ff22fdc35d130df76c8b90026dc15a0e0a5f789'),('23100','NATALIA','LEZAMA','CABRERA','fe040ded48f845ffbb7cad656a14422398e97ef1b7ea70852316a4ee40fe0f35'),('23141','LUIS ANTONIO','SANCHEZ','MIRANDA','e4f4d44a13ae4cb6a212a641324c641019c319454c827a0dbe386976076c0113'),('23180','VALERIA','ACOSTA','AMARO','62bf2b08649603aa63bf8f4bc2d10a785fd43d34247ecd1e53fb4acdc2eec539'),('23184','ELISEO','RODRIGUEZ','GARCIA','b2c82bbb1741cb913f997ac1e2a0fc9e6e96eb778f92c766151a88cd6e20e0b8'),('23185','ADRIAN','MANJARREZ','ESCAMILLA','d20447325fedd2e3ce9bd7d713ab6db07756c723d32b184d03cf5555daa9be18'),('23194','MARCO ANTONIO','ESCAMILLA','BALDERAS','9b21ec226005cf8e69d3e3bec07a6c636b8d53f3fe27816af3e523b4d3ced92d'),('23199','ALONDRA XIOMARA','ROCHA','AGUILERA','6b4218ce2511e8f08955f37f79666db88f58b3623236a0b60b853358123395e0'),('23237','NELLY JAZMIN','SANCHEZ','CASTILLO','291db34d1eea2f406a3ec2df06838b3f68994c2561864c55371ca7d233c7d5f1'),('23255','FERNANDO','PEÑA','ELIZONDO','30f2296a8893a87f1e03395413ec40079624b87c8b1d3d04bb88b63b5437423c'),('23264','DIANA LUCERO','MORALES','MEDINA','518fff530a3fac9fab97218b8edd517e6252efd0564b168fb02be0922ffd7bb4'),('23270','FERNANDO','PEREZ','HERNANDEZ','b56723f1463638b91834096473fe9d23da21fddbca9f6eef32ba28a45365b888'),('23310','PAOLA','TOXQUI','GARCIA','11c9978abd329e576b909cb46133cca7bf5d59d8d376d3b9feaf22c2d3ab8f23'),('23358','RODRIGO ALEJANDRO','FLORES','AMAYO','b13ebac1a6b5ad7448fac0096a267994ced713f640031c78a0d5a1b8af1e223b'),('23361','FRIDA SOFIA','MEDINA','SANCHEZ','41a78df1c4d8edc4225fa50d446c98841cb9150db7c39417641375277802b1c9'),('23367','NATALIA','RAMIREZ','ZARZA','ef3aff48e160cce4c97b5ebc563980186a4242895bc4bcc131d291dd53cafbf8'),('23374','LUIS ANGEL','MARTINEZ','COLIN','9c9a6aa42f6a6d36192f8f74e2e01d185d8b71fcbfd58d04234d9eaa49715d50'),('23393','DANIEL','SANCHEZ','PEREZ','f15a61d09e63f21839df45984cafa8c55f78a637310bb71dbebcbae2e1d65b6c'),('23394','MARIANA','GASTALDI','CRUZ','f583ab30c5a8069cf934f163023a18cc6a82b77543f87646e9d97fcc610d0976'),('23396','ARAGON RAFAEL','BANQUELLS','GONZALEZ','a83765ada5ce2b941e05505c791d43904e25596b86ccb6446cbc13d069652ee8'),('23398','SAMANTHA','JIMENEZ','SORIA','0bb37ee83409553f3b611eb1dd286c6211f33197bdaa9362adc7b5cce2976b12'),('23421','ALINE','CRUZ','APARICIO','9dbb165e580d1927920bd2433d8f8b17d7eabee7c075b3fd5df8f5ea77defa8c'),('23423','RODRIGO IMANOL','GARCIA','BARRAGAN','455473bb653666fcac550a5e00453a10783c44720a70e08e7f44d8b7498d522f'),('23426','ANALY','GONZALEZ','GONZALEZ','49ddbea3ce8f7ad89aa5e44eeb5fbb1b790e1ed60e29172f929cab60f5469821'),('23455','JUAN PABLO','SALAZAR','QUINTANA','9bc20507588960383845985d3a8f458230e3661b79384fe44c24e7fb61ec67a1'),('23460','AXEL JESUS','ESPINOSA','ROMAN','be21d119a8fdb784dddc6a352d5b14cc590a6aa9ea6ce0051cef41d32844e02f'),('23462','JOSE GUADALUPE','LOPEZ','DAZA','6c91dcc50e29976eb45c755339ebeac5c11c481f48ecb173df891fa79617aa86'),('23468','ABRAHAM','GRACIA','MIRANDA','87ff264258bb1f8b0fb188378223c5bb385dd6043d1797308894727ef9d9fe34'),('23471','ABRAHAM ALBERTO','DE LA ROSA','AGUAYO','bfd7d199a71d7a30a40600681cdda48fa758eda4ecddd914fd4842b03163be91'),('23492','JOSMAR JOSUE','MARTINEZ','RIVERA','d563458d32e170617c3bf77e86895bde881ecfa8f6dc1f6df5f63b3d49b822d1'),('23502','DIANA CAROLINA','GONZALEZ','GONZALEZ','d393f0249fa31f78c192e50ecdd6c96456970dd5f019c0ed3c12d28dd9a6b81f'),('23514','GUILLERMO','PEREZ','LOZADA','6d1f87220194f87c92f0fc87066ba0655b4f25be41e15a1b716f4bec08cb8025'),('23519','KARINA MICHELLE','ROBLES','MALDONADO','4e18691e087b357d56a217f6c639e311d67fdd81cd3356f4bf14b938e972838e'),('23540','RICARDO','ANGEL','ROBLES','84ac3def7579a07b7a25fbec2c4578048279e8f10a2e0eaab4250bc6a9111718'),('23544','LUIS EDUARDO','HERNANDEZ','OJEDA','df140a1436624b8b0be98db42710e6ffba30b5bb499ec52935fc7e354a12939e'),('23546','PABLO','ANTONIO','GUTIERREZ','bed03e8969608dc13308bd3e28ae8fa835150892f398aaeedb7226d7d1fd11d2'),('23555','GALA PAOLA','LARA','AHUMADA','eddc2201ab3e6112d65f1a1770303a1817666ca71ea1f6eacb4d8342fdf224a3'),('23556','SANDRA EDITH','GONZALEZ','CALDERON','66ef5a7125a7c1b33b01dd1de09cf2b300cb96efd815385e4ab6278e08c321a0'),('23602','YAZMIN VANESSA','ARROYO','LEON','c5cae39ec45b00581682f8a033c5b4f2c89456eb916c49cb7cb78f4316e3dd47'),('23615','PEDRO ANTONIO','ROMERO','ORTIZ','5de017a3428926ac51bc87c0d9938c350979ef30871a011557c08a40b6f57364'),('23630','MIGUEL SAID','URIBE','ESCAMILLA','508034c12756d86352917b15c207971d4d4f7a245ec2343d5ee74831c11e1e50'),('23640','CESAR URIEL','JIMENEZ','AGUILAR','57507605172b1f93f6dce0decb6a415e4d6af1a1f5336a6bdf2090ca75a685d2'),('23755','ARELI NOEMI','MARIN','OCHOA','feac57e8fbc5879517413410ea68bc6689ecfd98a3aa86cec8bf4a2544336945'),('23758','CARLA XIMENA','TEJEDA','OSORIO','05d50cf358ae70e7c9aa5fe49b6bfcaf353037f40e61083ce95c1c801c548e4f'),('23774','YAEL','ZENDEJAS','ESQUIVIAS','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),('23777','LORENA','RODRIGUEZ','MENDOZA','ba9054c9d4d84727cd56c45540bb8a38f6e2dfd9d305f97029cf7767922cd6ce'),('23781','PAOLA','YAÑEZ','COLIN','1f82a2ebe493bd35d08261f73c170d561179fbbc2846483235a7a6ece091b5ff'),('23788','FERNANDO IVAN','VAZQUEZ','AYALA','bcdbc6afd6985c4d89bc9dde9a4d02a40ccf43d812a8b90de2dee55fdc83441d'),('23794','ROGELIO','GONZALEZ','CABRERA','2d6d6d1c2da45ea39619e5a4b510d7455f2f55a62947dfe603f1db001b3f8725'),('23841','ALEJANDRO','CHAVEZ','DELGADILLO','1ae10058619e893d2f8ae159e141ce2bb6a14f22f7042696840e27ef44d50a03'),('23850','HUGO IVAN','GUTIERREZ','PANIAGUA','02d9bd03ac3aa355c31d10863857e156a7988f4316dac8e874afa18ceea6daf3'),('23855','RODOLFO EDUARDO','HERNANDEZ','BARCENAS','c26799d11642a87a5e47603eda6a1482ce29c717eabae880366eb4287ee0ab75'),('23867','ERICK','MENDOZA','ABARCA','54f611f7c679a2715d3e27d146663f87af3ecd4e5fd5b875274613c74ff81432'),('23873','ALEJANDRO','CARDENAS','DE LA PORTILLA','15ced3fafec65d932d4a42b9ab4f0debb4df4d7d743644dad5433c58080d3408'),('23877','ANA PAOLA','SANCHEZ','MONTIEL','1636c75c4e5054cd1e4ca7cb7397f71b197239f8a93ff3cb4cd1ec67a0249ae3'),('23880','SERGIO DANIEL','ZARAGOZA','TROVAMALA','16de2384ce09aa6bd2dea58053be52d0d83185f0eb28787f88ee5e8783bca74b'),('23886','HAZEL DARIANA','GONZALEZ','PINEDA','acb48ebcafccaaa5670345e006a0c87acf9de4dbd1b03899584c02bb05dbf9ae'),('23889','JOSE EDUARDO','ORTEGA','CORONA','28369b2486a269d6553f516bc093a2762d926fbdb4bfef00194bf6c7cb173974'),('23901','FRANCISCO','ROSAS','MENDEZ','6e3f71994df1983e2e0024f65b25335cb89d9b21f0802c4bb0b71479d8bbde09'),('23904','MIGUEL ANGEL','RODRIGUEZ','GARCIA','1c158ae00d0e15e0a82d44e2c15d37de1939a825dd602bb99c8ae8c00785dc10'),('23905','VICTOR','MEDINA','OROZCO','64257dceec37143404f533fa1540093b805d0bed0ce04c91053df1aec83842a8'),('23909','DAMARIS DAMAYANTI','AZUCENO','ABUNDIS','b8623123d6eeb1940aa342fecf947e0e97d058af856da09c544cd477295ec5b2'),('23932','ANDREA XIMENA','LOPEZ','ZAMORA','9c08b834b9decbcb915cae338793e54b9f5ee70f859030bea4783db2f570e888'),('23933','CASANDRA','REYES','LOZA','548478295759ea738a8e603f0e8c6c1023e91d38818cbb56bf02ed1c9ea45bfd'),('23936','LIZETH','LEON','BRAVO','b3d94bd7ad7b86b13d13998cfa190eaf9be3cd4006c342d3a19a37d1acae9da9'),('23937','MIGUEL ANGEL','ASCENCIO','RAFAEL','2b0f9972bd155431d2b7d16934c3a884a150aed7b11290301d3cf0151e59dca0'),('23947','MARIO JOEL','CHEANG','SILVA','8bef11eb04ee0479572378c29eba9f078bb8878ad982149cc6f4cad8471dab38'),('23950','CRISTIAN ADRIAN','HERNANDEZ','MURILLO','836a97837efe3ea02204e74b90a8384590e1be85f08c86b2c14e22d6aeb8127f'),('23958','HECTOR IVAN','MAR','GONZALEZ','417ca83737d164772be0d1b7694aa7c0ee7f68f0f60303ad329f99c654b05c20'),('23968','ERIKA DANIELA','TELLEZ','VEGA','942d712134e1baea118130487992b8761bbe6339ca1151e7ae6f848ada5dc8f1'),('24000',' JORGE ALONSO','BERONA','-REYES','06e01dc1011ecca65c2f9fef9811bbf5eac2f498d3ebaccbcd640ab8ab452301'),('24005','LUIS FERNANDO','MORADO','DEL ANGEL','2e9fb4b96070333d8271e7f92f0b2e0b5f8db0b0ce1974b353bad9ac44313d13'),('24010','FABRICIO','RODRIGUEZ','TAPIA','691c8cb9271e7ec2bd690dccef50b37d81fadeaea67130f53f386e09b2e0120f'),('24023','TALIA','GUTIERREZ','MACIQUES','de50779fd06ae2017add9444940ab3431e559239d9456593821b8cf7bcd3e5b0'),('24047','JORGE','MARQUEZ','PALAFOX','53c008a429fbae5f607fe5caa35f040f971ef775e82fbbe8a48e9e8ac4cbb52a'),('24050','JUAN PABLO','DE LA O','SIXTO','4da14a9a4f86b028b34ee87d74577c8e6128434a68499493babaa6529af64c7c'),('24123','MAURICIO RAMON','PULIDO','DE LA ROSA','e0abff7d94b70a71c8eee20f4c7f78d0a7c15ae5a2c079346d25835811c40020'),('24126','MAXIMILIANO','OVIEDO','MORA','0cabe49366c473a4923f8aed9282c61ed952dae0c63a4f142ef4f9d943ca24ac'),('24128','ESPERANZA','AMEZCUA','SORIA','213b070edee56ff02c886ed29d6b1a5806685929c079f177535d42192dee5bd2'),('24234','ALEXIS LEONARDO','SANCHEZ','REYES','671e1837a65b7be76d5c09140fe4020d52086404502bfc2454c05e62485b9c2a'),('24240','RODRIGO','GARCIA','HERNANDEZ','049b1ea5c6983c039b440567b42062b32cfdc62ca5c7927d9f3903ab0da2485a'),('24243','PAOLA YATZIRY','GONZALEZ','PEÑA','a3e2c087e3f9f1e8a1239a99f96cbd55c3bcf838877ad6bddfae1c70f2b34179'),('24250','SAUL','VILLANUEVA','MARTINEZ','3820b2c27c81f92d4a2b1ba9aa14296159b61124c43eb4bc4f91717dafef646e'),('24257','KARLA PATRICIA','ORNELAS','TELLEZ','78fd78ef09635a3e009337037013f7ade8fb5fcb331ffe3da58161a82c58fea2'),('24272','FERNANDO ALEXISS','HERNANDEZ','LARA','a6be835812fa93219aff5ce4427884d85bb2ef7eefea113676d43ce1f6be1587'),('24277','ADILENE LIZETH','LOPEZ','VALENCIA','2559fc0f2cdc8120c7d6bc02834ffe65d97a305ea1b4c2d6bec7e928717d3f69'),('24293','ABRAHAM JOSHUA','ORTIZ','QUINO','f7f6ceab06dd5750123af6a5a6706c03d65d22fe0a98823ad27b20012601c1bd'),('24304','NICOLAS CAMILO','SANDOVAL','RAMIREZ','730725274ea25577ab01e6d7c002721eba83167e726fec5479288cc13c81b512'),('24324','FATIMA','RIVA PALACIO','GODOY','c0ab0575a66354b1838a9fb818ed65b8b90343999443f74579d0da03489b9735');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnocurso`
--

DROP TABLE IF EXISTS `alumnocurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnocurso` (
  `idAlumnoCurso` int NOT NULL AUTO_INCREMENT,
  `alumno` varchar(5) NOT NULL,
  `curso` int NOT NULL,
  PRIMARY KEY (`idAlumnoCurso`,`alumno`,`curso`),
  UNIQUE KEY `idAlumnoCurso` (`idAlumnoCurso`),
  KEY `fk_alumnocurso_alumno` (`alumno`),
  KEY `fk_alumnocurso_curso` (`curso`),
  CONSTRAINT `fk_alumnocurso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`),
  CONSTRAINT `fk_alumnocurso_curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnocurso`
--

LOCK TABLES `alumnocurso` WRITE;
/*!40000 ALTER TABLE `alumnocurso` DISABLE KEYS */;
INSERT INTO `alumnocurso` VALUES (1,'23947',1),(2,'23471',1),(3,'23358',1),(4,'23423',1),(5,'23886',1),(6,'23855',1),(7,'22917',1),(8,'23544',1),(9,'23932',1),(10,'23185',1),(11,'23185',1),(12,'23958',1),(13,'23867',1),(14,'23086',1),(15,'23270',1),(16,'23367',1),(17,'23933',1),(18,'23901',1),(19,'23066',4),(20,'23462',4),(21,'22824',4),(22,'23904',4),(23,'23237',4),(24,'22034',6),(25,'22620',6),(26,'22575',6),(27,'22761',6),(28,'22531',6),(29,'23060',6),(30,'22640',6),(31,'23184',6),(32,'20483',8),(33,'20779',8),(34,'20461',8),(35,'22625',8),(36,'20602',8),(37,'21241',8),(38,'21093',8),(39,'21069',8),(40,'20817',8),(41,'20416',8),(42,'21137',8),(43,'21114',8),(44,'20845',8),(45,'20638',8),(46,'20901',8),(47,'21299',8),(48,'20823',7),(49,'21157',7),(50,'21565',7),(51,'21133',7),(52,'21349',7),(53,'20690',7),(54,'20775',7),(55,'20636',7),(56,'20891',7),(57,'20701',7),(58,'20678',7),(59,'20642',7),(60,'20666',7),(61,'21111',7),(62,'20784',7),(63,'20706',7),(64,'20695',7),(65,'20732',7),(66,'20781',7),(67,'20581',7),(68,'21129',7),(69,'20726',7),(70,'20780',7),(71,'20717',7),(72,'20649',7),(73,'20841',7),(74,'20661',7),(75,'23396',2),(76,'24000',2),(77,'23873',2),(78,'23841',2),(79,'23394',2),(80,'23426',2),(81,'23502',2),(82,'22914',2),(83,'23026',2),(84,'23850',2),(85,'22933',2),(86,'23374',2),(87,'23492',2),(88,'22983',2),(89,'23264',2),(90,'22950',2),(91,'22622',2),(92,'22804',2),(93,'22920',2),(94,'23777',2),(95,'23615',2),(96,'23877',2),(97,'23758',2),(98,'23781',2),(99,'22877',2),(100,'23774',2),(101,'22800',3),(102,'23546',3),(103,'23937',3),(104,'23194',3),(105,'23468',3),(106,'23640',3),(107,'24005',3),(108,'22941',3),(109,'23968',3),(110,'20761',9),(111,'21258',9),(112,'20540',9),(113,'21273',9),(114,'20412',9),(115,'20469',9),(116,'13143',9),(117,'20626',9),(118,'20548',9),(119,'20632',9),(120,'20459',9),(121,'20683',9),(122,'21254',9),(123,'20766',9),(124,'20565',9),(125,'20861',9),(126,'12611',9),(127,'21200',9),(128,'17390',9),(129,'19950',9);
/*!40000 ALTER TABLE `alumnocurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `clave` varchar(8) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `carrera` varchar(7) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`),
  KEY `fk_asignatura_carrera` (`carrera`),
  CONSTRAINT `fk_asignatura_carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES ('LADN0102','INFORMÁTICA','ADN2001'),('LADN0211','ESTADÍSTICA BÁSICA','ADN2001'),('LAET0211','INFORMÁTICA II','AET2009'),('LCYF0211','ESTADÍSTICA BÁSICA','CYF2001'),('LGTM0317','INFORMÁTICA APLICADA','GTM2009'),('LISC0207','ALGEBRA LINEAL','ISC2018'),('LISC0209','FUNDAMENTOS DE PROGRAMACIÓN','ISC2018'),('LISC0315','ESTRUCTURA DE DATOS','ISC2018'),('LISC0527','SISTEMAS OPERATIVOS','ISC2018'),('LISC0632','BASES DE DATOS','ISC2018'),('LISC0633','INGENIERÍA DE SOFTWARE','ISC2018'),('LISC0845','BASES DE DATOS AVANZADAS','ISC2005'),('LISC0952','TECNOLOGÍAS ELECTRÓNICAS DE INFORMACIÓN','ISC2018'),('LISC0953','TECNOLOGÍAS DE INFORMACIÓN EMERGENTE','ISC2005');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `clave` varchar(7) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES ('ADN2001','ADMINSTRACIÓN DE NEGOCIOS'),('AET2009','ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS'),('CYF2001','CONTADURÍA Y FINANZAS'),('GTM2009','GASTRONOMIA'),('ISC2005','INGENIERÍA EN SISTEMAS COMPUTACIONALES'),('ISC2018','INGENIERÍA EN SISTEMAS COMPUTACIONALES'),('NIA2003','NEGOCIOS INTERNACIONALES Y ADUANALES');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuatrimestre`
--

DROP TABLE IF EXISTS `cuatrimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuatrimestre` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(6) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuatrimestre`
--

LOCK TABLES `cuatrimestre` WRITE;
/*!40000 ALTER TABLE `cuatrimestre` DISABLE KEYS */;
INSERT INTO `cuatrimestre` VALUES (1,'2019-3'),(2,'2020-1'),(3,'2020-2'),(4,'2020-3');
/*!40000 ALTER TABLE `cuatrimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(10) NOT NULL,
  `cuatrimestre` int NOT NULL,
  `turno` int NOT NULL,
  `asignatura` varchar(8) NOT NULL,
  PRIMARY KEY (`idCurso`),
  UNIQUE KEY `idCurso` (`idCurso`),
  KEY `fk_curso_grupo` (`grupo`),
  KEY `fk_curso_cuatrimestre` (`cuatrimestre`),
  KEY `fk_curso_turno` (`turno`),
  KEY `fk_curso_asignatura` (`asignatura`),
  CONSTRAINT `fk_curso_asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  CONSTRAINT `fk_curso_cuatrimestre` FOREIGN KEY (`cuatrimestre`) REFERENCES `cuatrimestre` (`clave`),
  CONSTRAINT `fk_curso_grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`clave`),
  CONSTRAINT `fk_curso_turno` FOREIGN KEY (`turno`) REFERENCES `turno` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'ISCM33818',4,1,'LISC0315'),(2,'GTMM33408',4,1,'LGTM0317'),(3,'ISCV33818',4,2,'LISC0315'),(4,'ISCN33818',4,3,'LISC0315'),(5,'ISCV63818',4,2,'LISC0633'),(6,'ISCN63818',4,3,'LISC0632'),(7,'ISCV938A05',4,2,'LISC0953'),(8,'ISCV938B05',4,2,'LISC0952'),(9,'ISCN93818',4,3,'LISC0952');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(7) NOT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
INSERT INTO `evaluacion` VALUES (1,'PARCIAL'),(2,'FINAL'),(3,'EXORD');
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `generales`
--

DROP TABLE IF EXISTS `generales`;
/*!50001 DROP VIEW IF EXISTS `generales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `generales` AS SELECT 
 1 AS `alumno`,
 1 AS `grupo`,
 1 AS `materia`,
 1 AS `turno`,
 1 AS `periodo`,
 1 AS `cuatrimestre`,
 1 AS `codigo`,
 1 AS `imagen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `clave` varchar(10) NOT NULL,
  `descripcion` varchar(150) DEFAULT '-',
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES ('ADNM13110','-'),('ADNM23110','-'),('AETM23908','-'),('CYFM23210','-'),('GTMM33408','-'),('ISCM23818','-'),('ISCM33818','-'),('ISCN23818','-'),('ISCN33818','-'),('ISCN53818','-'),('ISCN63818','-'),('ISCN93818','-'),('ISCV33818','-'),('ISCV63818','-'),('ISCV838A05','-'),('ISCV838B05','-'),('ISCV938A05','-'),('ISCV938B05','-');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguridad`
--

DROP TABLE IF EXISTS `seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguridad` (
  `idSeguridad` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `llave` varchar(64) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `evaluacion` int NOT NULL,
  `alumno` int NOT NULL,
  PRIMARY KEY (`idSeguridad`),
  UNIQUE KEY `idSeguridad` (`idSeguridad`),
  KEY `fk_seguridad_evaluacion` (`evaluacion`),
  KEY `fk_seguridad_alumnocurso` (`alumno`),
  CONSTRAINT `fk_seguridad_alumnocurso` FOREIGN KEY (`alumno`) REFERENCES `alumnocurso` (`idAlumnoCurso`),
  CONSTRAINT `fk_seguridad_evaluacion` FOREIGN KEY (`evaluacion`) REFERENCES `evaluacion` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguridad`
--

LOCK TABLES `seguridad` WRITE;
/*!40000 ALTER TABLE `seguridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'MATUTINO'),(2,'VESPERTINO'),(3,'NOCTURNO'),(4,'SABATINO'),(5,'MIXTO');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `generales`
--

/*!50001 DROP VIEW IF EXISTS `generales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ym`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `generales` AS select concat(`alumno`.`nombre`,' ',`alumno`.`paterno`,' ',`alumno`.`materno`) AS `alumno`,`grupo`.`clave` AS `grupo`,`asignatura`.`nombre` AS `materia`,`turno`.`nombre` AS `turno`,`evaluacion`.`nombre` AS `periodo`,`cuatrimestre`.`nombre` AS `cuatrimestre`,`seguridad`.`llave` AS `codigo`,`seguridad`.`imagen` AS `imagen` from ((((((((`alumno` join `alumnocurso` on((`alumno`.`control` = `alumnocurso`.`alumno`))) join `curso` on((`alumnocurso`.`curso` = `curso`.`idCurso`))) join `seguridad` on((`alumnocurso`.`idAlumnoCurso` = `seguridad`.`alumno`))) join `evaluacion` on((`seguridad`.`evaluacion` = `evaluacion`.`clave`))) join `turno` on((`curso`.`turno` = `turno`.`clave`))) join `asignatura` on((`curso`.`asignatura` = `asignatura`.`clave`))) join `cuatrimestre` on((`curso`.`cuatrimestre` = `cuatrimestre`.`clave`))) join `grupo` on((`curso`.`grupo` = `grupo`.`clave`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-30 19:52:34