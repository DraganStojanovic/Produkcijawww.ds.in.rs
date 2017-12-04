-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: newsbay
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'technology'),(2,'nature'),(3,'sports');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `posts_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `time` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`comment_id`),
  KEY `fk_posts_id_idx` (`posts_id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_posts_id` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`posts_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `posts_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `author` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`posts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Nature - Sibirski Tigar','Sibirski tigar (Panthera tigris altaica) ili veliki tigar mandžurije stanovnik je Azije. To je divna, prekrasno ukrašena i obojena mačka. Vitka je, viša i lakše građena mačka od lava. Sibirski tigar može biti dug od vrha njuške do kraja repa čak do 4 metra. Visina do ramena može biti do 1,10 metara, što ga čini najvećim i nasnažnijim među tigrovima. Težina koju može doseći prelazi nevjerojatnih 300 kilograma. Crne pruge na tigrovu hrđavo-žutom krznu prekrasno su raspoređene po cijelom tijelu; ne postoje dvije identične životinje, a pruge se mogu usporediti sa otiskom prstiju kod čovjeka. Osnovna boja na leđima je tamnija, sa strane malo svjetlija. Sa donje strane tijela i unutrašnjost nogu krzno je bijele boje. Dlaka sibirskog tigra je dulja i gušca od dlake ostalih tigrova, a što je posljedica okoline u kojoj on obitava (Sibir). Glava mu je okrugla, urešena manjim ušima, na kojima sa stražnje strane dolazi po jedna veća bijela mrlja. Oči su mu žutosmeđe, a njuška nešto kraća od njuške lava. Brkovi dužine i do 20 cm ukras su glave, dok s bočnih strana obraza ima dulju dlaku koja strši i nalikuje bradi. Jezik mu je dug i hrapav, a u čeljustima ima snažne očnjake s vrlo oštrim rubom s unutarnje strane, poput noža, a njihova dužina seže i do 6 cm. Na dugim i snažnim nogama ima ogromne šape s pet prstiju s oštrim i dugim kandžama, koje prema potrebi uvlači ili izvlači. Rep sibirskog tigra je dugačak cca 100 cm, svjetliji i ukrašen tamnim kolutovima.','images/tigar.jpg','nature','2016-07-22 19:38:35','Dragan Stojanovic'),(2,'Tehnology - Informacione tehnologije','Studiranjem na programu Informacione tehnologije pripremićete se za rad na celokupnom procesu projektovanja, izrade i implementacije softvera. Od početne analize, planiranja i dizajna, preko kodiranja i testiranja do instalacije i održavanja softvera na mestu njegovog korišćenja. Studiranje podrazumeva rad na konkretnim projektima sa ciljem samostalne izrade softverskih rešenja. Upoznajte se sa algoritamskim modelovanjem, objektno orijentisanim principima, strukturama podataka, web programiranjem, bazama podataka i upitnim jezicima, dizajnom interfejsa aplikacija, testiranjem i održavanjem softvera, elementima sigurnosti i zaštite podataka i računarskih sistema.','images/technology.jpg','Technology','2016-07-22 19:38:46','Dragan Stojanovic'),(3,'Sports - NFL League','Markus Vik 32-god eks kvoterbek pokazao je i nakon završetka NFL karijere da ume da pobegne “protivnicima” . Amerikanac se posle kratke rasprave sa policajcima u prodavnici uputio u beg. Činio se uspešan, da bi posle trčanja na kom bi mu i najbolji sprinteri pozavideli “sačekao” organe reda sedeći na asfaltu pored puta! Da li usled nedostatka kondicije ili iz nekog drugog razloga Markus je sedeći primio vest da je uhapšen.','images/sports1.jpg','Sports','2016-07-22 21:26:04','Aca Stojanovic'),(4,'Nature - Delfini su prijatelji','Poznato je da na svetu ima 4600 vrsta sisara(sisari-klasa Mammalia) podjeljenih u 21 red. Jedan od tih redova je red kitova i delfina (Cetacea) koji se sastoji od 78 različitih vrsta.Delfini spadaju u grupu sisara Monotremata-sisara koji nose jaja.Postoji oko 40 vrsta delfina u 17 rodova. Veličina im varira od 1.2 m i 40 kg  do 9.5 m i 10 tona. Mogu se naći posvuda, najčešće u plitkim morima kontinentalnih šelfova. Mesojedi su i hrane se uglavnom ribom i lignjama.Delfin nastanjuje gotovo sva mora , odličan je plivač pa i nije čudo što može dostići brzinu čak do 40 km/h .Pored morskih postoje i slatkovodni ili riječni delfini koji nastanjuju rijeke Azije i Južne Amerike .Delfini se smatraju veoma inteligentnim zivotinjama, što je dokaz njihov veliki mozak sa visoko struktuiranom moždanom korom.  Jako su društvene životinje i poznate su po svom prijateljskom odnosu sa ljudima, pa im u vodi često prilaze sa naznakom da žele igru sa njima.','images/delfini.jpg','nature','0000-00-00 00:00:00','Milan Brkic'),(5,'Technology - PHP','PHP je jednostavan i istovremeno power Script programski jezik za izradu dinamičkog web sadržaja. Milioni web stranica na kojima se koristi PHP dokaz su njegove popularnosti i kapaciteta. Koriste ga programeri koji cene njegovu fleksibilnost i brzinu, web dizajneri kojima odgovaraju njegove mogućnosti i lakoća upotrebe. Izuzetno je jednostavan za učenje, a sa naučenim se postiže jako mnogo.PHP je najpopularniji web programski jezik. Radi kako na Windows, tako i na Linux platformama. Pogodan je za izradu svih vrsta web aplikacija, od onih malih koje predstavljaju samo deo jedne internet stranice, pa do velikih kompleksnih sajtova zasnovanih na Web 2.0 konceptu.Najčešće se koristi kao razvojna platforma za interaktivne internet stranice. Pored navedenih mogućnosti, omogućava i rad sa bazama podataka kao što je MySQL, te je i rad u ovoj bazi podataka uključen u programu PHP Web Development na ITAcademy.Po završetku programa bićete spremni samostalno da izradite sopstvene web aplikacije. Znanje PHP i MySQL programiranja i administracije je nešto što Vam osigurava siguran napredak na polju internet programiranja uopšte. Naučićete osnovne i napredne tehnike PHP-a, instalaciju (Apache, PHP), sintaksu (proširena sintaksa PHP-a), a zatim napredni PHP i MySQL: baze podataka i PHP i osnove objektno orijentisanog programiranja u PHP-u.','images/technology2.jpg','Technology','0000-00-00 00:00:00','Ivan Mikic'),(6,'Sports - Ivana Spanović','Ivana je postala prva od svih Srpskih atletičarka koja je pod zastavom Republike Srbije osvojila zlatnu medalju na evropskim prvenstvima na otvorenom! Najbolja srpska atletičarka pobedila je u Amsterdamu skokom 6,94 metara, u drugoj seriji.POSLE repa i pletenice, bilo je vreme da na glavi Ivane Španović zasija punđa koja simbolizuje krunu za kraljicu evropske atletike! Posle 26 godina je srpska „kraljica sportova“ dočekala zlato na EP na otvorenom! Dvoranska šamppionka Evrope objedinila je titule na dva najjača šampionata Starog kontinenta, ubedljivim trijumfom u finalu skoka u dalj na EP u Amsterdamu – letom od 6,94 u drugoj seriji.Titula se nije dovodila u pitanje od prvog skoka u kvalifikacijama (6,90). Ivana nije imala pravu konkurenciju na prvenstvu koje se održava manje od mesec dana pre početka Olimpijskih igara, daleko iza ostale su Britanka Džasmin Sajers 6,86 i Nemica Malaika Mihambo 6,65.Među slabijim rivalkama i po veoma hladnom vremenu, naša najbolja atletičarka nije uspela da izvede let od sedam metara, koji je postao njena uža specijalnost u finalima velikih takmičenja. Ali, simbolika broja sedam u njenoj karijeri može da se prepričava i posle ovog Šampionata.','images/sport2.jpg','Sports','0000-00-00 00:00:00','Aca Stojanovic'),(7,'Nature - Nesto o Vukovima','Vuk ide u red najvrjednijih najprilagodljivijih predatora među sisavcima. Najveći je pripadnik porodice pasa. U svijetu su poznate tri vrste vukova : sivi vuk (Canis lupus), crveni vuk (Canis rufus) i abesinijski vuk (Canis simensis).Procjenjuje se da u svijetu danas ima oko 150 000 sivih vukova i oko 550 abesinijskih vukova. Crveni vuk u prirodi je istrebljen, no provodi se program njegova uzgoja u zatočeništvu i ponovnog naseljavanja. Vuk je zemljopisno rasprostranjeniji od gotovo svih drugih sisavaca. Tako se populacije vukova prostiru na 41 zemlju svijeta. Osim u Kanadi, koja s oko 60 000 primjeraka prednjači, u Mongoliji i Rusiji, s oko 30 000 primjeraka, najviše ih ima u SAD-u (Aljaska), Kini, Ukrajini, Bjelorusiji, Rumunjskoj, Španjolskoj i Indiji. Kod  nas živi sivi vuk, koji je inače proširen na cijeloj sjevernoj polutki Zemlje. Odrasli sivi vuk teži u prosjeku 31kg. Dugačak je, od vrha njuške do kraja repa, oko 170 cm, a visok u prosjeku 70 cm. Krzno mu je sive boje. Vukovi kao vrsta, u uporedbi s drugim pripadnicima porodice zvijeri, nemaju velikih zahtjeva prema staništu. Osnovni su uvjeti, kojima ono mora udovoljavati, blizina hrane i zaklon. Do današnjih dana uspjeli su se održati u teško pristupačnim područjima, ali žive i u neposrednoj blizini čovjeka. Najviše im pogoduju guste šume i gustiši s uklopljenim livadama. Podnose i ogoljela staništa, u područjima niskoga krša. Vuk je teritorijalna vrsta koja obično živi u manjim ili većim čoporima. Vukovi u čoporu putuju, love, hrane se i odmaraju, dakle, zajedno su tokom cijele godine. Prostor na kojemu žive obelježavaju urinom, izmetom, grebanjem tla i zavijanjem. Braneći životni prostor od rugih vukova, osiguravaju sebi plijen. Strani vuk koji uđe u teritorij domaćeg čopora bit će - bude li otkriven - gotovo redovito ubijen, pa i pojeden. Vukovi se sporazumijevaju zavijanjem, režanjem, cviljenjem, lavežom, govorom očiju i tijela, ostavljanjem tragova i mirisima. ','images/vukovi.jpg','nature','0000-00-00 00:00:00','Misa Ignjatovic'),(8,'Technology - Nvidia GTX 1080','Tokom zadnjih nekoliko dana, kada je sve više korisnika uspeva da nabavi nVidia GTX 1080 ili GTX 1070 kartice, počinju da se pojavljuju neki problemi sa povezivanjem HTC Vive sistema. Dotični problem nastaje kada treba povezati grafičku kartu sa Vive-om preko „display port-a“, kada Vive i SteamVR softver prijavljuju grešku i ne mogu detektovati priključen HMD. Identično povezivanje bez problema radi na prethodnoj GTX generaciji karti, pa je dosta čudno što se sada pojavljuje ova nekompatibilnost.Naravno, sve normalno radi kada se Vive priključi preko HDMI veze, ali je činjenica da referentni GTX 1080 dizajn podrazumeva samo jedan HDMI. U toj situaciji, ako je HDMI potreban za povezivanje sa monitorom ili televizorom, nije moguće povezati HTC Vive. Situacija je ista i sa obe verzije drajvera  koji su se pojavili sa GTX 1080, a nVidia se još nije zvanično oglasila povodom ovog problema. Situacija ipak nije toliko dramatična, jer se može iskoristiti DVI priključak i nabaviti odgovarajući adapter, ali je opet malo neprijatno za korisnika i kompaniju nVidia. Dakle, ukoliko vam je neophodan HDMI za povezivanje monitora, mora se odabrati neki GTX 1080 model koji ima dva HDMI priključka, kao što je na primer Asus GTX1080 Strix.','images/technology3.jpg','Technology','0000-00-00 00:00:00','Kaspersky Lab'),(9,'Sports - Gotovo je odustali su  od napadača','Karlos Baka karijeru neće nastaviti u redovima Vest Hema, to je od danas sigurno, kako je ekipa Slavena Bilića i zvanično odustala od iskusnog Kolumbijca.Baka je sjajnim partijama najpre u dresu Sevilje, a onda i u dresu Milana, privukao interesovanje velikog broja klubova, a Vest Hem je do sada bio najuporniji.\"Kamen\" spoticanja je bila Bakina želja da naredne sezone igra Ligu Šampiona, što \"Čekićari\" ne mogu da mu ponude.On je u više navrata izjavio da bi želeo karijeru da nastavi u Atletiko Madridu, ali su \"Jorgandžije\" demantovale celu priču, rekavši da nisu zainteresovani za njegove usluge.','images/sports3.jpg','Sports','0000-00-00 00:00:00','Aca Stojanovic'),(10,'Nature - Beloglavi Sup','Beloglavi sup je najveća ptica grabljivica. Rasprostranjen je u severnoj Africi, južnoj i jugoistočnoj Evropi, jugozapadnoj Aziji, Arabiji, severozapadnom Pakistanu i centralnoj Aziji. U Srbiji se može naći u klisurama reka Uvac, Mileševka i Trešnjica .Dugačak je 95 – 110 cm, težak između 6 i 11 kg i sa rasponom krila između 2,40 i 2,80 m. Odrasle ptice se od mladih razlikuju po belo obojenoj pernatoj ogrlici i nitastom tipu perja, dok mlade ptice imaju smeđu pernatu ogrlicu s perima nešto širih zastavica. Odrasle ptice imaju jače svetliju donju stranu krila i svetlo-smeđu obojenost perja sa svetlijim tonom.  Gnezdo gradi isključivo na stenama i u njega snese jedno jaje, ređe dva. Inkubacija traje 50 dana, a mladunci gnezdo napuštaju nakon 4 meseca.Tokom poslednjih pedesetak godina, broj beloglavih supova se naglo smanjio jer je hrane bilo sve manje, a uznemiravanje i ubijanje od strane čoveka postalo je sve veće. Često su bili lovljeni i trovani. Vrsta je pre dvadesetak godina bila pred izumiranjem. U Srbiji brojnost im je u porastu, zbog unapređenja zaštite i prihranjivanja. U toku 2010. godine u svim kolonijama beloglavog supa u Srbiji ukupno je evidentirano 106 gnezdećih parova koji su započeli inkubaciju; 81 par je podigao po jednog mladunca. Životni vek  im je 37 godina. Zanimljivo - Beloglavi sup je prva maskota Olimpijskog tima Srbije, koja će predvoditi naše olimpijce na Igrama u Londonu 2012.','images/beloglavisup.jpg','nature','0000-00-00 00:00:00','Milan Gacic'),(11,'Technology - Intel i7k','Kao zamena za Core i7 3770K, model koji je nama došao na test pokazao se vrlo sličan kao procesor prethodne generacije. Osim različitog podnožja i rasporeda konektora kojih sada ima pet manje oba procesora izrađena su u istom (22 nm) proizvodnom procesu, oba imaju istu nominalnu (3,5 GHz) i istu Turbo frekvenciju (3,9 GHz), sa po četiri fizička i dodatna četiri logička jezgra. Količina keš memorije nije promenjena pa i 4770K ima 2x 32 KB instrukcijskog i 2x 32 KB keša za podatke na prvom nivou. Keš drugog nivoa (L2) broji ukupno 1 MB (256 KB po jezgru) dok deljene L3 keš memorije ima ukupno 8 MB. Kako se radi o \"K\" verziji procesora, množilac je \"otključan\", pa je ovaj procesor idealan za overklokere i one koji ne žele da se zadržavaju na nominalnim taktovima. Ono što nas je malo iznenadilo je maksimalni TDP koji je povećan na 84 W, naspram 77 W kod 3770K. Naš model ima najjači GT2 GPU - HD 4600 sa 20 EU i taktom koji se kreće u rasponu od 350 do 1250 MHz.','images/technology4.jpg','Technology','0000-00-00 00:00:00','Intel Corp'),(12,'Sports - Millwall FC','Ovo je jedan od onih klubova za koji mnogo ljudi sa naših prostora navija. Ovo je takođe klub koji podržava i Del Boy Trotter. Otac Rodney Trotter-a je rekao da će Millwall osvojiti kup. Malo im je falilo da to i učine maja 2004. godine ali ih je u tome sprečio veliki Manchester United (3:0), ali hajdemo redom.FC Millwall nam dolazi iz jugoistočnog Londona tačnije iz New Cross-a. O samom Londonu neću trošiti mnogo reči, samo ću reći da je to glavni grad Engleske, i da ima oko 8.600.000 stanovnika.Fudbalski klub Millwall osnovan je 1885. godine od starne lučkih radnika koji su dolazili iz Škotske tako da su dresovi kluba tradicionalno plave boje.Svoju prvu sezonu su igrali pod imenom \"Millwall Rovers\" na stadionu \"Gengall Road\". Četiri godine kasnije menjaju ime u \"Millwall Athletic\" i pod tim imenom igraju dva polufinala FA CUP-a. Svega par godina kasnije sele se na novi stadion \"The Den\", i tu ostaju pune 83 godine. Svoje današnje ime nose od 1920. godine kada su iz svog imena izbacili reč \"Athletic\".Za vreme drugog svetskog rata igraju finale Ratnog Kupa (Millwall - Chelsea) kome je pristustvovalo 90.000 gledalaca. Tokom ratnih godina mnogi klubovi ostaju bez igrača koji su stradali u ratu, a Millwall je to najviše osetio na svojoj koži. Sam stadion je pretrpeo ratna razaranja 1943. godine tako da su bili prisiljeni svoje utakmice igrati na stadionu drugih klubova.Na svoj stadion se vraćaju u februaru 1944. godine kada je stadion kompletno renoviran zahvaljujući volonterskom radu svojih pristalica.Naredne godine ne donose ništa bolje rezultate jer klub sve vreme tavori u nižim ligama. Sve je tako bilo do 1988. godine kada su zahvaljujući svom dvojcu Teddy Sheringamu i Tony Cascarinu dočekali i taj dan da igraju u eliti. Pomenuti dvojac je postizao u proseku po 25 golova u naredne dve sezone, ali ni to im nije pomoglo da se duže zadrže u eliti. Nakon dve godine vraćaju se u drugu ligu.Naredne godine ne donose ništa bolje rezultate jer klub sve vreme tavori u nižim ligama. Sve je tako bilo do 1988. godine kada su zahvaljujući svom dvojcu Teddy Sheringamu i Tony Cascarinu dočekali i taj dan da igraju u eliti. Pomenuti dvojac je postizao u proseku po 25 golova u naredne dve sezone, ali ni to im nije pomoglo da se duže zadrže u eliti. Nakon dve godine vraćaju se u drugu liguNakon 16 godina, tačnije maja 2004. godine igrali su svoje prvo finale FA CUP-a protiv Manchester United-a na Millennium Stadionu u Kardifu. Crvenim Đavolima je to bio 16. put da igraju finala FA CUP-a i do tada su isti osvajali 10 puta. Za lavove je to bilo prvo finale a do tada su tri puta stizali do polufinala (1900., 1903., 1937. godine). Ekipa Man Utd je bila bolja u ovom duelu i kada se setimo da su tada za Đavole igrali Nistelrooy, Cristiano Ronaldo, Ryan Giggs ... rezultat od 3:0 je sasvim realan.Za razliku od drugih klubova koji se takmiče u ovom ili nižim rangovima takmičenja Millwall poseduje nešto na čemu mu mogu pozavideti i najveći fudbalski klubovi planete.Pogađate, to su navijači. Sem samih navijača u Engleskoj malo ko voli ovaj klub. Za to fanovi Millwall-a ne mare mnogo.    “No One Likes Us We Don’t Care” (Niko nas ne voli i nije nas briga) je stih iz pesme Roda Stewarta a ujedno i slogan navijača.','images/sports4.jpg','Sports','0000-00-00 00:00:00','Aca Stojanovic'),(13,'Nature - Terijeri prva krv','Iako britanskog porekla (potiče od foks-terijera, velškog terijera i starog engleskog terijera), nemački lovački terijer, stvoren u 19. veku je nemački pas. Nemački lovački terijer zamišljen je pre svega kao radni pas i poseduje odlične kvalitete lovca. On je jedan od retkih terijera koji nije postao pas za društvo. Živ je i borben i napada kako lisicu tako i divlju svinju. Dobro donosi sitnu divljač, a takođe je dobar krvoslednik. Nemački lovački terijer je neustrašiv i tvrdoglav, sluša samo svog gospodara i veoma je nepoverljiv prema strancima. Dužina tela ovog terijera prevazilazi njegovu visinu. Leđa su mu prava i snažna, grudni koš dubok, prednje noge prave i mišićave, a stražnje noge čvrste sa niskim skočnim zglobovima. Lobanja mu je između ušiju šira, a u predelu njuške uža od lobanje foks-terijera. Njuška je snažna sa karakterističnom donjom vilicom. Zubi su jaki i makazasti. Male, tamne i upale oči imaju odlučan pogled. Uši su u obliku slova V, visoko postavljene i blago pripijene uz obraze. Rep je više horizontalan nego nagnut.  Dlaka je glatka, zgusnuta, oštra i dosta kratka. Najčešće je crne, sivo-crne ili tamnosmeđe boje sa crvenkastim oznakama na glavi, grudima, nogama i perianalnom predelu. Nedostatak pretkutnjaka, uspravne uši, ili uši u obliku lale ili ruže, vunasta, tanka i jako kratka dlaka i stomak bez dlaka smatraju se manama.','images/terijeri.jpg','nature','0000-00-00 00:00:00','King'),(14,'Technology - UHD 4K Televizori','Ultra HD je video format koji je predložila japanska javna televizijska mreža NHK. a definirala i odobrila Internacionalna Telekomunikacijska Zajednica (ITU). 17. listopada 2012. godine je Udruženje za Potrošačku Elektroniku (CEA) službeno objavila kako će termin “Ultra HD” biti korišten na svim zaslonima koji imaju format slike 16×9 i barem jedan digitalni priključak koji može poslati rezoluciju od minimalno 3840×2160 piksela. Kada govorimo o Ultra HD-u, u prvom redu mislimo na rezoluciju slike koja je veća od one koju znamo pod imenom Full HD. Full HD označava sliku koja ima 1920 piksela postavljenih u 1080 linija, što danas nalazimo na svim televizorima od niže srednje pa do visoke klase. Ultra HD podrazumijeva dva puta veći broj piksela i linija u svojoj osnovnoj varijanti, a koja se može nazvati i Quad Full HD jer posjeduje četiri puta više piksela nego Full HD zaslon. Svi Ultra HD televizori koji su se pojavili na tržištu od 2012. pa do danas posjeduju Ultra HD rezoluciju s 3840 piksela u 2160 linija, što drugim riječima znači da posjeduju 4 puta više piksela nego Full HD televizori. S obzirom da postoje dvije Ultra HD rezolucije, 3840 x 2160 i 7680 x 4320, zbog lakšeg identificiranja se često prva naziva Ultra HD 4K, a potonja Ultra HD 8K.','images/technology5.jpg','Technology','0000-00-00 00:00:00','MIkelli'),(15,'Sports - Vaterpolo Svet','Srpski vaterpolisti odigrali su u utorak pripremnu utakmicu sa Italijom u Ćivitavekiji, a slavila je domaća reprezentacija rezultatom 10:9. Dejan Savić je u ovom meču odmorio Filipa Filipovića, Andriju Prlainovića i Duška Pijetlovića, a utakmicu su obeležili i jubileji Gojka Pijetlovića i Stefana Mitrovića, koji su po 200. put igrali za reprezentaciju. Italijani su poveli 2:0, a u nastavku je Srbija dva puta prišla na gol minusa. Posle treće četvrtine domaći su imali tri gola prednosti (8:5) i uspeli su u poslednjih osam minuta da sačuvaju vođstvo.Najefikasniji kod pobednika bio je Mišel Bodegas sa tri gola, koliko su postigli i Dušan Mandić i Miloš Ćuk. Po jedan pogodak postigli su Strahinja Rašović, Milan Aleksić i Stefan Mitrović.','images/sports5.jpg','Sports','0000-00-00 00:00:00','Aca Stojanovic');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `user_f_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `user_l_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user_password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `user_gender` text COLLATE utf8_unicode_ci,
  `user_marital_status` text COLLATE utf8_unicode_ci,
  `user_phone_no` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `user_designation` text COLLATE utf8_unicode_ci,
  `user_website` text COLLATE utf8_unicode_ci,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_about_me` text CHARACTER SET utf8,
  `category` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'active',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'DraganS','Dragan','Stojanovic','draganstojanovic3@gmail.com','Beretta108098','male','married','123115]','web','www.test.com','Vojvode Misica 43','Nisam tako los','active'),(2,'Andja','Andjela','Stojanovic','andja@yahoo.com','asdf','femal','single','123155151','copy','www.rose.com','Kralja Milutina 17','student','active'),(3,'Shomy','Milenko','Stojanovic','milenkostojanovic3@gmail.com','qwer','male','single','4256-0802','logistic','www.quto.com','Kralja Milutina 17','Zezanje ladovina','active'),(4,'Boka','Boban','Stojanovic','boki@yahoo.com','zxcv','male','married','6453341767','saler','www.prodaja.com','Vuka Karadzica 105','Svasta','active'),(5,'Mara','Marija','Stojanovic','marine_djakonije@hotmail.com','asdf','female','married','+3811187231245','Cake Boss','MarineDjakonije.com','Male Brgulice','Ja sam Cake Boss','active'),(6,'Majce','Maja','Kacavenda','maja@hotmail.com','12312fasfafa','female','married','+3811187231675','Cake Bosses','MarineDjakonije.com','Male Brgulice','Ja sam Cake Boss','active'),(7,'Miki','Mitar','Kacavenda','Kacavendamik@gmail.com','sada2125132','male','married','+3811187234353','Furniture Boss','www.furniture.com','Kralja Milutina 21','Kumara.','active'),(8,'Mikile','Mica','Kaca','kajkulica@hotmail.com','sad23sadasd','male','married','+3811187234353','Furniture Boss','www.furniture.com','Kralja Milutina 21','Kumara.','active'),(9,'Six','Nina','Simone','Simone@yahoo.com','2313sdada','female','divorced','+9811187231249','Singer','www.ninasimone.com','Chicago','I im singer.','active'),(10,'ss','Kikadf','Lesass','lesaa@yahoo.com',')!&_*!^ISALKHlklagfkh','male','divorced','+0098545221321','pevac','www.pevacasd.com','Beogradska 131','Ja pevams','active'),(11,'Kikiss','Kikaaaa','wsa','lesa1@yahoo.com',')(&%^_()!aksjdlak','male','divorced','+009854522132','pevac','www.pevadasdc.com','Beogradska 1112','Ja pevama','active'),(12,'Kikiqw','Kikaaa','Lesag','lesa2@yahoo.com','asdf','male','divorced','+0098545223114','pevac','www.pevadasfdc.com','Beogradska 11w','Ja pevam.','active'),(13,'Kiki11','Kikas','Lesat','lesa3@yahoo.com','qwer','male','divorced','+009854522778','pevac','www.pevafagfgc.com','Beogradska 151','Ja sam pevac.','active'),(14,'Neca','Nemanja','Milenkovic','neca@yahoo.com','0f4085fe8ee9b042b34f30c36704a956','male','single','+3816522192939','zavarivac','www.var.com','zaseka 11','Dobar momak','active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'newsbay'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-29  0:58:12
