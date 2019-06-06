-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 02:14 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_iteh`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`email`, `ime`, `prezime`, `sifra`, `uloga`) VALUES
('anyancosplay@gmail.com', 'Anja', 'Basara', '!\"#$%&/()=$%DFGBHJfghJ$%677$%d227ae4168da4a26407b1709bfc388be ', 'administrator'),
('luxybaxy@gmail.com', 'Luka', 'Baljak', '!\"#$%&/()=$%DFGBHJfghJ$%677$%d227ae4168da4a26407b1709bfc388be ', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `definicija`
--

CREATE TABLE `definicija` (
  `DefinicijaID` int(5) NOT NULL,
  `TekstDefinicije` varchar(2500) NOT NULL,
  `EmailDefinicija` varchar(50) NOT NULL,
  `TipDefinicijeID` int(5) NOT NULL,
  `DatumDefinicija` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `definicija`
--

INSERT INTO `definicija` (`DefinicijaID`, `TekstDefinicije`, `EmailDefinicija`, `TipDefinicijeID`, `DatumDefinicija`) VALUES
(1, 'U PHP fajlu, blok koji je okružen jezičkim strukturama <?php i ?> se smatra PHP kodom i izvršava se, a ostatak van tih znakova se smatra tekstom koji jednostavno treba da se ispiše na standardni izlaz, bez interpretiranja. PHP kod se može napisati bilo gde u okviru <body> taga HTML dokumenta. U nekim slučajevima, PHP kod se piše u okviru <head> taga. PHP kod se nalazi u okviru HTML koda i izvršava se na serveru.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:21:00'),
(2, 'Postoje dve osnovne komande koje služe za prikazivanje teksta na browser–u: echo i print. Razlika između ove dve funkcije je samo u tome što funkcija print može da vrati vrednost true/false, a echo nema tu mogućnost. Echo je za nijansu brža pri izvršavanju programa.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:21:36'),
(3, 'Ako se na primer u PHP skripti koristi komanda echo \"&lt;br&gt;\", dešava se sledeće: Web server izvršava echo “&lt;br&gt;” kod. Rezultat tog koda će biti <br>. Zatim, Web server šalje browser-u klijenta izvršeni kod. Kada browser klijenta vidi &lt;br&gt;, kao rezultat PHP koda koji treba da prikaže, razumeće da je rezultat PHP koda ustvari HTML kod koji browser treba da izvrši. Browser će izvršiti HTML kod i konkretno u ovom primeru, kursor će preći u sledeći red. ', 'anyancosplay@gmail.com', 1, '2018-02-17 00:22:26'),
(4, 'Postoje dve osnovne vrste komentara u PHP-u: jednolinijski (single-line comment) i višelinijski (large comment block) komentari. Za jednolinijske komentare se koristi symbol “//”, a za višelinijski komentari se pišu između “ /*“ i “ */” simbola.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:42:59'),
(5, 'Sve varijable u PHP-u počinju simbolom dolar simbolom “ $ “. Pravilno postavljena (setovana) promenljiva ima sledeću sintaksu: $ime_promenljive=vrednost; U PHP- u promenljiva ne mora da se deklariše pre nego što se postavi, što znači da ne mora da se navede tip promenljive kao u drugim programskim jezicima. U PHP-u se promenljive automatski deklarišu kada se koriste. U PHP-u ne postoje fiksni tipovi podataka. Naime, ne mora se definisati tip varijable pre njenog korišćenja i varijabla se može deklarisati bilo kada unutar skripte i pridruživati joj se različiti tipovi podataka tokom izvođenja skripte (iako ovo nije uobičajena niti previše pametna praksa). Isto tako se može menjati tip podataka neke varijable jednog te istog sadržaja.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:43:18'),
(6, 'Promenljiva se ispisuje na ekranu browser-u pomoću naredbe echo, tako što se jednostavno navede ime promenljive nakon echo naredbe: echo mojaPromenljiva; Ako se pomoću jedne echo naredbe prikazuju dve promenljive, koristi se tzv. separator simbol: echo $mojaPromenljiva1 . “  “ . $mojaPromenljiva2;', 'anyancosplay@gmail.com', 1, '2018-02-17 00:43:39'),
(7, 'Domen važenja promenljive definiše oblast u kojoj je promenljiva dostupna programu. Ukoliko se koristi ključna reč global, promenljiva postaje globalno dostupna.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:43:48'),
(8, 'Postoje tri tipa nizova: 1.Numerički niz, gde elementi imaju numeričke ID ključeve. 2.Asocijativni niz (associative array), gde je svaki ID ključ asociran sa vrednošću, tj. postoji par ključ=>vrednost (key=>value). 3.Multidimenzioni nizovi (multidimensional array), niz koji se sastoji od jednog ili više nizova.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:00'),
(9, 'Sadržaj string tipa varijable se nalazi između navodnika. Mogu se koristiti dupli i jednostruki navodnici. Postoje razlike u ispisu sadržaja zavisno od tipa navodnika koji se koriste. Korišćenjem duplih navodnika može se koristiti \'special characters\'. To su posebni znakovi koji govore PHP-u da izvrši određene radnje pri ispisu sadržaja varijable i  slede iza znaka backslash ( \\ ). Još jedan bitna razlika između duplih i jednostrukih navodnika je ta da će se pri korišćenju duplih navodnika sadržaj varijable ispisati a pri korišćenju jednostrukih navodnika ispisaće se ime varijable skupa sa znakom $. ', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:09'),
(10, '$arr_izrezani=explode(\" \",$string); Ovaj fragment koda reže zadati string tako da podeli zadati string na fragmente od kojih je svaki novi fragment deo originalnog stringa između dva znaka data kao uslov razdvajanja u prvom argumentu funkcije. Svi novi fragmenti se čuvaju u nizu u kojem indeksi odgovaraju rednom broju fragmenta.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:17'),
(11, 'U  PHP fajl može da se unese sadržaj nekog drugog fajla, pre nego što PHP fajl server izvrši uz pomoć funkcija include() ili require(). Obe navedene funkcije su skoro iste, jedino se razlikuje način na koji tretiraju greške u kodu (code errors). Funkcija include() upozorava, ali skripta nastavlja da se izvršava, dok funkcija require() generiše ključnu grešku (fatal error) i izvršavanje skripte se prekida. Ova tehnologija je poznata kao SSI (Server Side Includes).', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:27'),
(12, 'Sve promenljive koje spolja ulaze u PHP kod, dolaze u jednom od nekoliko specifičnih nizova pod nazivom superglobals. Superglobalne promenljive  su dostupne u bilo kom delu skripta, čak i unutar objekata, funkcija, nizova. Drugim rečima, one se ne definišu, one su već prisutne. Predstavljaju specifične nizove varijabli, koje dolaze spolja u PHP fajl. Obuhvataju podatke poslate sa HTML formi, podatke o kukijima, informacije o sesiji, upload-ovanim fajlovima serveru i čine ih raspoloživim na svakom mestu. Predstavljaju način da PHP otkrije odakle određena vrednost dolazi. Na ovaj način se ne dozvoljava da bilo koja promenljiva submit–ovana od strane korisnika, automatski uđe u PHP kod. Varijable unutar PHP skripta ostaju izolovane od potencijalnih napada. Ako na primer korisnik popuni formu, server neće dodeliti te vrednosti globalnim promenljivama $name, $password. Umesto toga, ti podaci će biti podeljeni u niz: $_POST[‘name’], $_POST[‘password’] i može im se pristupiti samo preko globalne promenljive $_POST. Sve varijable vezane za jednu određenu sesiju se mogu pročitati preko globalne promenljive $_SESSION. $_COOKIE sadrži informacije iz HTTP kukija. ', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:36'),
(13, 'Dve osnovne metode prosleđivanja podataka forme nekom dokumentu (skripti) su POST i GET. Odabir metode prosleđivanja podataka forme se vrši navođenjem method argumenta <form> taga. Moguće vrednosti metod argumenta su \"post\" i \"get\". Prva razlika između ovih metoda je najdrastičnija i odmah uočljiva. Kada se odabere metoda GET podaci forme se šalju kroz komandnu liniju (query string, tj. iza znaka ? u adress baru browsera). Podaci se prenose u obliku ključ=vrednost. Na primer: http://www.myelab.net/php/userform.php?username=internet, znači da će se izvršiti fajl userform.php u php direktorijumu na serveru myelab, a promenljiva koja se šalje je username sa vrednošću Internet. Odabirom metode POST podaci nisu vidljivi u komandnoj liniji već se šalju transparentno kroz telo (body) HTTP zahteva (HTTP request).  POST-om se podaci forme šalju kroz request body i time se na njih ne može uticati izmenom linka u adress baru. Takođe, postoji i ograničenje na količinu podataka koji se mogu poslati putem GET metode. GET je prilično nesigurna metoda jer posetilac vrlo lako može izmeniti zahtev jednostavnom promenom URL-a u adress baru svog browsera, tako da nije preporučljivo koristiti ovu metodu za prosleđivanje recimo usernamea i passworda u login formama i sličnih osetljivih informacija. Jedino pravilo koje se mora poštovati je da se obavezno mora koristiti POST metoda kada se preko forme upload-uje određen fajl.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:44'),
(14, '$_GET Sadrži sve varijable poslate preko HTTP GET zahteva. Ovo se odnosi i na one poslate direktno preko URL-a (http://www.example.com/page.php?id=2) i preko submit–ovanja forme korišćenjem GET metoda. $_POST Sadrži sve varijable poslate preko HTTP POST zahteva. Princip prihvata podataka poslatih POST metodom je isti kao i kod prihvata podataka GET metode, sa manjim razlikama. Prva razlika je u forma.php dokumentu, gde je promenjena metoda u POST. Druga razlika je u već spomenutoj superglobalnoj varijabli koja je ovog puta $_POST. Dodatna i očigledna razlika je da sada više nema query stringa i nije moguće direktno uticati na podatke nakon što je forma ispunjena i submitovana.', 'anyancosplay@gmail.com', 1, '2018-02-17 00:44:53'),
(15, 'Tri metode za upravljanje greškama: 1)Jednostavna die() naredba, 2)Personalizovane funkcije za upravljanje greškama i okidači grešaka i 3)Izvestavanje o greškama. Najjednostavniji način za upravljanje greškama (error handling) je funkcija die(). Personalizovana funkcija za upravljanje greškama prima najmanje dva parametra  - error level (nivo greške) i error message (poruka koja se ispisuje kada se greška javi), a najviše pet parametara. Poslednja tri parametara su opcioni. ', 'anyancosplay@gmail.com', 1, '2018-02-17 00:45:02'),
(16, 'JSON (JavaScript Object Notation) predstavlja tekstualni format za serijalizaciju podataka. Osnovna svrha JSON-a je prenos podataka i može se reći da predstavlja svojevrsnu alternativu XML-u. JSON je u memorijskom smislu manje zahtevan od XML-a, što znači da JSON fajl sa određenim podacima zauzima manje memorijskog prostora od XML fajla sa istim podacima. Sličnosti JSON-a u odnosu na XML: JSON je običan tekst. JSON je ljudski čitljiv, opisuje sam sebe, poseduje hijerarhijsku strukturu, može da parsira JavaScript, JSON podaci mogu da se prenose korišćenjem AJAX tehnologije. Razlike: JSON ne poseduje zatvarajući tag, JSON je kraći od XML-a, brže se čita i upisuje, JSON može da se parsira pomoću ugrađene JavaScript funkcije eval(), JSON koristi nizove, JSON ne koristi rezervisane reči.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:57:43'),
(17, 'JSON format razlikuje više tipova podataka. Promenljive se u JSON-u nazivaju vrednosti. Od prostih tipova podataka, to su string, number, boolean i null, a od složenih tipova u pitanju su object i array.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:57:51'),
(18, 'Posebnu grupu karaktera koji služe za opis strukture podataka u JSON dokumentu čine tzv. strukturalni karakteri. To su zagrade “{}” i “[]”, zatim dvotačka “:” i zarez “,”. Korišćenjem vitičastih zagrada “{}” označavaju se objekti, uglaste zagrade “[]” služe za prikaz nizova, dvotačkom “:” razdvaja se naziv promenljive od njene vrednosti, a zarezom “,” se razdvajaju članovi niza, odnosno atributi objekta. JSON dokument se najčešće definiše kao anoniman objekat, stoga počinje znakom “{” i završava se znakom “}”.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:57:59'),
(19, 'Kao što je rečeno, u JSON-u se promenljive definišu kao vrednosti (values). Sledi primer definisanja nove vrednosti: \"naziv_promenljive\": vrednost_promenljive. Ukoliko je potrebno definisati promenljivu (vrednost) ime, tipa string, čija je vrednost Petar, to se radi na sledeći način: \"ime\": \"Petar\"', 'anyancosplay@gmail.com', 6, '2018-02-17 00:58:09'),
(20, 'Nizovi se definišu na sledeći način: \"niz\": [10, 20, 30, 40]\nAsocijativni niz se definiše na sledeći način: \"fakultet\": [\"naziv\": \"Fakultet organizacionih nauka\",\"kratak_naziv\": \"FON\", \"mesto\": \"Beograd\"]', 'anyancosplay@gmail.com', 6, '2018-02-17 00:58:21'),
(21, 'Objekat se definiše slično kao asocijativni niz, na sledeći način: \"fakultet\": {\"naziv\": \"Fakultet organizacionih nauka\",\"kratak_naziv\": \"FON\", \"mesto\": \"Beograd\"}', 'anyancosplay@gmail.com', 6, '2018-02-17 00:58:29'),
(22, 'Da bi JSON dokument bio validan, neophodno je da nijedan element glavnog JSON objekta ne bude anoniman, odnosno da unutar glavnog JSON objekta ne postoji nijedna vrednost bez deklarisanog naziva promenljive.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:58:37'),
(23, 'JSON je format potekao iz JavaScript-a, tako da JavaScript omogućava parsiranje JSON varijabli i JSON eksternih fajlova. Kod parsiranja kompleksijih JSON podataka, koristi se JavaScript funkcija eval(). Ova funkcija brzo parsira podatke i podržava veliki broj browser-a. Međutim, postoji sigurnosni rizik vezan za izvršavanje skriptova. Naime, ako JSON varijabla sadrži u sebi neki skript, on će se izvršiti.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:58:46'),
(24, 'Zbog navedenog sigurnosnog rizika, eval() funkcija se koristi samo u slučaju ako je bitna kompatibilnost. Znatno sigurnije je korišćenje JSON.parse() funkcije, ali je njen nedostatak nedovoljna kompatibilnost, koja će se ispraviti prilikom definisanja sledeće verzije JavaScript standarda. Kod korišćenja JSON.parse() funkcije, bitno je da je JSON definisan kao string promenljiva. ', 'anyancosplay@gmail.com', 6, '2018-02-17 00:59:32'),
(25, 'JQuery biblioteka poseduje dobru podršku za rad sa JSON podacima. Koristi se ugrađena JQuery funkcija parseJSON(), koja praktično uzima dobro formiran string sa JSON objektom. Ova funkcija pretvara JSON objekat (u string formatu) u JavaScript objekat. Funkcija odgovara JSON.parse() funkciji u čistom JavaScript-u.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:59:41'),
(26, 'PHP takođe podržava rad sa JSON dokumentima, bez instaliranja dodatnih biblioteka. Za parsiranje JSON-a koristi se funkcija json_decode(). Parametar ove funkcije jeste string, koji u sebi sadrži JSON objekat. Ukoliko se JSON nalazi u posebnom, eksternom fajlu, taj fajl se može učitati korišćenjem funkcije file_get_contents(), čiji je jedini parametar naziv eksternog JSON fajla.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:59:49'),
(27, 'JSON fajlovi se najčešće generišu na serverskoj strani. U programskom jeziku PHP koristi se funkcija json_encode(), koja prima kao parametar jedan PHP objekat ili asocijativni niz, a vraća JSON objekat. Da bi se definisalo da PHP fajl vraća JSON, dobra praksa je slanje HTTP header-a koji sadrži MIME TYPE generisanog dokumenta. Ukoliko se generiše JSON, trebalo bi da se pošalje sledeći header na početku PHP koda: header(\"Content-type: application/json\"); Ovaj header nedvosmisleno govori veb klijentu da je u pitanju JSON dokument.', 'anyancosplay@gmail.com', 6, '2018-02-17 00:59:57'),
(28, 'AJAX je skraćenica od “Asynchronous JavaScript and XML”. Da bi se shvatio koncept AJAX tehnologija, neophodno je objasniti razliku izmenu sinhronog i asinhronog prenosa podataka između klijenta i servera. U sinhronom načinu rada procesi se izvode sekvencijalno. Između dva procesa postoji jaz koji je jednak vremenu izvođenja drugog procesa. Dakle, osnovni proces komunikacije između klijenata i servera može se opisati na sledeći način:  klijent šalje zahtev ka serveru, podaci se prenose ka serveru, server obrađuje podatke i zatim ih vraća klijentu. Postoji vremenski interval između pravljenja zahteva i odgovora na isti. Za vreme tog intervala klijent čeka, bez mogućnosti da pravi nove zateve ili nastavi svoje korišćenje web aplikacije. Može se zaključiti da kod sinhronog prenosa podataka ne postoji mogućnost za eliminisanje čekanja zato što se procesi obavljaju jedan za drugim, čak i ukoliko za to nema potrebe. Kod asinhronog prenosa podataka između klijenata i servera karakteristično je da se korisničko korišćenje web aplikacije nikada ne prekida. Za razliku od sinhronog režima rada, ovde korisnik može da nastavi korišćenje aplikacije nezavisno od toga hoće li sistem odgovoriti na njegov zahtev neposredno ili nešto kasnije. Klasične aplikacije funkcionišu tako što šalju zahtev, server ih obrađuje i konačno vraća odgovor. Međutim, sve vreme rada servera i aplikacija je «zamrznuta». Kada server kompletira rad, kao odgovor korisnik dobija novu stranicu. Sa asinhronom komunikacijom u pozadini se odvija komunikacija, a korisnik uopšte ne zna da se tako nešto dešava. ', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:05'),
(29, 'AJAX predstavlja web razvojnu tehniku za kreiranje interaktivnih web sadržaja. AJAX tehnologija se zasniva na razmeni malih količina podataka sa serverom, kako korisnik ne bi stalno morao da osvežava stranicu. Na taj način se omogućava potpuna interaktivnost, efikasnost i poboljšava funkcionisanje stranice uopšte. AJAX nije tehnologija sama po sebi, već termin koji se odnosi na korišćenje grupe tehnologija.', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:15'),
(30, 'Ideja koja se krije iza AJAX-a jeste da se stranica na kojoj se odvija web aplikacija učita samo jednom, a da se svaka dalja komunikacija sa serverom sakrije od očiju korisnika i obavlja bez ponovnog učitavanja čitave stranice. Svaki prenos podataka između servera i klijenta (u slučaju AJAX-a to je browser) vrši se u pozadini. Jasno je da je ovo nemoguće izvesti statičkim HTML-om, pa tu na scenu stupa JavaScript. JavaScript je zadužen za komuniciranje sa serverom – slanje HTTP zahteva, prijem podataka sa servera i njihov prikaz na stranici, a i interakcija sa korisnikom postiže se korišćenjem ovog jezika. ', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:23'),
(31, 'AJAX obuhvata: prezentaciju baziranu na standardima koristeći XHTML i CSS; dinamički prikaz i interakciju preko Document Object Model-a (DOM); razmenu i manipulaciju nad podacima koristeći XML i XSLT; asinhrono prikupljanje podataka uz pomoć XMLHttpRequest-a koji čini jezgro; i JavaScript koji povezuje sve u celinu.', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:32'),
(32, 'XMLHttpRequest je objekat koji omogućava JavaScript-u da načini asinhroni HTTP zahtev prema serveru. Različiti browser-i koriste različite metode za stvaranje XMLHttpRequest objekta. Internet Explorer koristi ActiveXObject metodu, dok ostali browser-i koriste ugrađenu (built-in) JavaScript metodu XMLHttpRequest. ', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:42'),
(33, 'Postoje tri bitna svojstva (properties) XMLHttpRequest objekta: onreadystatechange, readyState i responseText. Nakon što browser pošalje određeni zahtev serveru, potrebno je definisati funkciju koja može da primi podatke koji su poslati browser-u sa servera. Onreadystatechange svojstvo čuva funkciju koja obrađuje odgovor servera. readyState svojstvo čuva status odgovora servera. Svaki put kada se readyState svojstvo promeni, onreadystatechange funkcija će biti izvršena. Moguće vrednosti readyState svojstva su: 0 - Zahtev je inicijalizovan, 1 - Zahtev je postavljen, 2 - Zahtev je poslat, 3 - Zahtev se obrađuje i 4 - Zahtev je kompletiran (završen). Atribut readystate predstavlja  trenutno stanje objekta. Preko ovog objekta se prate stanja, i u skladu sa tim preuzimaju određene akcije. Naravno, najbitnije je stanje 4 koje ukazuje na to da se izvršila transakcija. Pristup podacima koji su vraćeni sa servera omogućava da uz pomoć atributa Response Text ili ResponseXML. Atribut  Response Text vraća podatak u string formatu, međutim, mnogo veće mogućnosti pružaju podaci u XML obliku koje obezbeđuje atribut ResponseXML.', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:50'),
(34, 'Da bi se poslao zahtev serveru, koriste se dve metode: open() i send(). Open() metoda uzima tri argumenta. Prvi argument definiše način slanja zahteva serveru (GET ili POST). Drugi argument definiše URL (Uniform Resource Locator) skripte serverske strane, dok treći argument ukazuje na to da bi zahtevom trebalo upravljati asinhronim prenosom podataka (vrednost true). ', 'anyancosplay@gmail.com', 4, '2018-02-17 01:17:59'),
(35, 'Klase predstavljaju neku šemu ili šablon kako će se kreirati objekti i kako će oni izgledati. U klasi definišemo i atribute i metode. Objekat je instanca klase.', 'luxybaxy@gmail.com', 2, '2018-02-17 10:59:38'),
(36, 'Primer klase: class Pas{  		public $boja_dlake;	public $visina;	function lajanje(){	}	function trcanje(){	}}Iza ključne reči class piše se naziv klase. Atributi klase se navode kao obične promenljive ispred kojih stoji modifikator pristupa, a metode klase se navode iza ključne reči function. Pored običnih, postoje i apstraktne klase. Glavna razlika između abstraktne i obične klase je ta što abstraktna klasa ne može da ima svoju instancu.', 'luxybaxy@gmail.com', 2, '2018-02-17 11:00:06'),
(37, 'Inicijalizacija objekta: $pas = new Pas();\nPostavljanje vrednosti public atributa objekta: $pas->visina = 45;\nPoziv metode objekta: $pas->lajanje();', 'luxybaxy@gmail.com', 2, '2018-02-17 11:01:27'),
(38, 'Metode predstavljaju ponašanje klase. Primer metode u PHPu je dat u nastavku. 	function saberi($broj1, $broj2){		$zbir = $broj1 + $broj2;		return $zbir;	}Metoda NE MORA da ima parametre i povratnu vrednost. Parametri se navode kao obične PHP promenljive. Kada bi ispred funkcije stajala ključna rec STATIC, to bi značilo da se metoda poziva preko Klase, a ne preko k.', 'luxybaxy@gmail.com', 2, '2018-02-17 11:01:43'),
(39, 'Konstruktor je metoda koja se automatski poziva pri kreiranju objekta. Znači to je metoda koja se uvek poziva, i to pri kreiranju objekta. Podrazumevani konstruktor je besparametarski. Ukoliko je neophodno dodati novi konstruktor, to se radi na sledeći način. public function __construct($parametar1...$parametarN){		//telo metode}', 'luxybaxy@gmail.com', 2, '2018-02-17 11:01:59'),
(40, 'Svaka klasa sadrži određene atribute i metode preko kojih se opisuje stanje i ponašanje iste. Zamislimo da u programu kreiramo dve klase, od kojih obe sadrže dobar deo istog koda. Tačnije, sadrže nekoliko zajedničkih promenljivih i zajedničkih metoda, koje moraju da budu identične. Recimo, hoćemo da kreiramo klasu Pas i klasu Mačka. Obe klase predstavljaju životinje, i obe klase imaju neke zajedničke osobine kao što su: visina, težina, hodanje, trčanje i tako dalje. Ali pored zajedničkih osobina, postoje i one specifične. Recimo pas lovi mačke, dok mačka lovi miša, pas laje a mačka mjauče i tako dalje. U ovom primeru razlikuju se samo po tome što mačka lovi miša a pas mačku. Jedno od osnovnih pravila programiranja je nikada ne imati jedan isti kod na dva različita mesta! Nasleđivanje nam rešiva ovaj problem.Primer nasleđivanja: class Pas extends Zivotinja {}', 'luxybaxy@gmail.com', 2, '2018-02-17 11:02:16'),
(41, 'Navigacija u klasi: \nthis se koristi kada smo u nekoj klasi i želimo da pozovemo neku metodu iz te klase ili se obratimo nekom atributu iz te klase. Primer (u konstruktoru je uvek ovako): \n$this->tezina = $tezina;\nparent se koristi kada želimo da pozovemo neku metodu u roditeljskoj klasi. Primer (iz konstruktora klase koja nasledjuje se uvek poziva konstruktor nasledjene klase):\nparent::__construct($tezina, $visina);\nself za pozivanje statičkih metoda ili konstanti iz postojeće klase. Primer (poziv konstante PI iz klase):\nself::PI', 'luxybaxy@gmail.com', 2, '2018-02-17 11:04:03'),
(42, 'Da bi se moglo upravljati podacima iz baze, neophodno je uspostaviti konekciju sa serverom na kojem se ta baza nalazi. Serveri se nalaze na mreži i njima se pristupa pomoću IP-a ili domene (hosta). Uz podatak o hostu servera, potrebni su korisničko ime i lozinka da bi se uspešno povezalo na server i komuniciralo sa njim. Ekstenzija php_mysqli se povezuje na MySQL server i vrši odabir baze kreiranjem novog objekta klase mysqli.\n$mysqli = new mysqli($mysql_server, $mysql_user, $mysql_pass, $mysql_db);', 'luxybaxy@gmail.com', 3, '2018-02-17 11:23:59'),
(43, 'Metodom QUERY se vrši upit nad bazom. Ta metoda je u klasi objekta tipa mysqli i prima kao parametar upit nad bazom. Primer poziva:\n$mysqli->query($sql);\nMetoda vraća true ako je upit uspešno izvršen, a u suprotnom false.', 'luxybaxy@gmail.com', 3, '2018-02-17 11:24:12'),
(44, 'fetch_object() je funkcija koja se koristi nad rezultatom metode query. Ova metoda izvlači red iz rezultata upita. Metoda se poziva nad rezultatom metode query. Primer:\n$red=$q->fetch_object()\nSada je moguće ispisivati sve kolone datog reda. Na primer, ako se izvlače podaci o filmovima, moguće je izvući ID filma, naziv, rejting, itd. na sledeći način:\n$red->Naziv;\nNapomena: Rezultati upita su case sensitive, što znači da treba pozivati kolone onako kako su nazvane u bazi.', 'luxybaxy@gmail.com', 3, '2018-02-17 11:24:22'),
(45, 'Kreiranje XML objekta je moguće učiniti na sledeći način:\n$knjige = SimpleXMLElement($data);\nPri čemu $data predstavlja taj xml fajl.\nDrugi način je sledeći:\n$knjige = SimpleXMLElement(\'knjige.xml\', true);\nDrugi parametar funkcije konstruktora označava da se xml fajl preuzima sa neke URL adrese.', 'luxybaxy@gmail.com', 5, '2018-02-17 11:36:15'),
(46, 'Uzmimo na primer da se XML dokument sastoji od niza knjiga. \nPristup elementu:\n$knjiga->naslov\nPristup atributu:\n$knjiga[\"isbn\"]\nPristup atributu određene knjige:\n$knjige->knjiga[1][\'isbn\']', 'luxybaxy@gmail.com', 5, '2018-02-17 11:36:30'),
(47, 'Izmena postojećeg XML fajla se čini pomoću sledeće dve funkcije:\naddChild() - dodaje novo dete, odnosno novi podelement određenog elementa. Funkcija prihvata samo jedan parametar (naziv podelementa), dva parametra (naziv podelementa i njegov sadržaj) ili pak postoji mogućnost da se proslede tri parametra gde treći parametar predstavlja naziv prostornog imena. \naddAttribute() - dodaje atribut tekućem elementu. Prihvata isti broj parametara i tip kao i metoda addChild().', 'luxybaxy@gmail.com', 5, '2018-02-17 11:36:44'),
(48, 'XML DOM definiše objekte i svojstva svih XML elemenata, kao i metode kojima se pristupa. Drugim rečima, XML DOM predstavlja način kako mogu da se kreiraju, menjaju ili brišu XML elementi. U PHPu postoji se za to koristi DOMDocument. \nKreiranje novi DOMDocument objekat:\n    $xmlDoc = new DOMDocument();\nUčitavanje xml fajla u DOMDocument objekat:\n    $xmlDoc->load(\"poruke.xml\");\nŠtampanje sadrzaja xml objekta:\n    print $xmlDoc->saveXML();', 'luxybaxy@gmail.com', 5, '2018-02-17 11:37:02'),
(49, 'Pretpostavimo da je $x objekat klase DOMDocument. Komandom $x->childNodes se pristupa podelementima. \nPretpostavimo da je $item jedan od čvorova dokumenta. Komandom $item->nodeName pristupamo nazivu čvora, a $item->nodeValue vrednosti čvora. ', 'luxybaxy@gmail.com', 5, '2018-02-17 11:37:19'),
(50, 'Pravljenje novog XML dokumenta pomoću DOMDocumenta je moguće na sledeći način:\n$dom = new DomDocument(\'1.0\');\nParametar konstruktora je verzija XML-a. Konstruktorom se kreira koreni element.\n $knjige = $dom->appendChild($dom->createElement(\'knjige\'));\nMetodom appendChild() dodaje se čvor na koreni element. Metodom createElement() se specificira naziv elementa. Element knjige zapravo predstavlja listu knjiga.\n $knjiga = $knjige->appendChild($dom->createElement(\'knjiga\'));\n Na element knjige dodaje se prva knjiga.\n $title = $knjiga->appendChild($dom->createElement(\'naslov\'));\nU okviru prve knjige specificira se naziv knjige.\n$title->createTextNode(\'FON\');\nDodaje se konkretan naslov knjizi.\nNapomena: metoda appendChild() vraća stvoreni čvor. Dodatak čvora koji predstavlja sledecu knjigu (u listi knjiga) vrši se dodavanjem novog čvora na $knjige!', 'luxybaxy@gmail.com', 5, '2018-02-17 11:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `odgovor`
--

CREATE TABLE `odgovor` (
  `Email` varchar(50) NOT NULL,
  `PitanjeID` int(5) NOT NULL,
  `Ocena` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odgovor`
--

INSERT INTO `odgovor` (`Email`, `PitanjeID`, `Ocena`) VALUES
('pera@peric.com', 1, 1),
('pera@peric.com', 2, 1),
('pera@peric.com', 3, 1),
('pera@peric.com', 4, 1),
('pera@peric.com', 5, 1),
('pera@peric.com', 6, 1),
('pera@peric.com', 7, 1),
('pera@peric.com', 8, 1),
('pera@peric.com', 9, 1),
('pera@peric.com', 10, 1),
('pera@peric.com', 11, 1),
('pera@peric.com', 12, 1),
('pera@peric.com', 13, 1),
('pera@peric.com', 14, 1),
('pera@peric.com', 15, 1),
('pera@peric.com', 16, 1),
('pera@peric.com', 17, 1),
('pera@peric.com', 18, 1),
('pera@peric.com', 19, 1),
('pera@peric.com', 20, 1),
('pera@peric.com', 21, 1),
('pera@peric.com', 22, 1),
('pera@peric.com', 23, 1),
('pera@peric.com', 24, 1),
('pera@peric.com', 25, 1),
('pera@peric.com', 26, 1),
('pera@peric.com', 27, 1),
('pera@peric.com', 28, 1),
('pera@peric.com', 29, 1),
('pera@peric.com', 30, 1),
('pera@peric.com', 31, 1),
('pera@peric.com', 32, 1),
('pera@peric.com', 33, 1),
('pera@peric.com', 34, 1),
('pera@peric.com', 35, 1),
('pera@peric.com', 36, 1),
('pera@peric.com', 37, 1),
('pera@peric.com', 38, 1),
('pera@peric.com', 39, 1),
('pera@peric.com', 40, 1),
('pera@peric.com', 41, 1),
('pera@peric.com', 42, 1),
('pera@peric.com', 43, 1),
('pera@peric.com', 44, 1),
('pera@peric.com', 45, 1),
('pera@peric.com', 46, 1),
('pera@peric.com', 47, 1),
('pera@peric.com', 48, 1),
('pera@peric.com', 49, 1),
('pera@peric.com', 50, 1),
('pera@peric.com', 51, 1),
('pera@peric.com', 52, 1),
('pera@peric.com', 53, 1),
('pera@peric.com', 54, 1),
('pera@peric.com', 55, 1),
('pera@peric.com', 56, 1),
('pera@peric.com', 57, 1),
('pera@peric.com', 58, 1),
('pera@peric.com', 59, 1),
('pera@peric.com', 60, 1),
('pera@peric.com', 61, 1),
('pera@peric.com', 62, 1),
('pera@peric.com', 63, 1),
('pera@peric.com', 64, 1),
('pera@peric.com', 65, 1),
('pera@peric.com', 66, 1),
('pera@peric.com', 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pitanje`
--

CREATE TABLE `pitanje` (
  `PitanjeID` int(5) NOT NULL,
  `TekstPitanja` varchar(500) CHARACTER SET utf8 NOT NULL,
  `PonudjeniOdgovori` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TacanOdgovor` varchar(250) CHARACTER SET utf8 NOT NULL,
  `DefinicijaID` int(5) NOT NULL,
  `EmailPitanje` varchar(50) NOT NULL,
  `DatumPitanje` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pitanje`
--

INSERT INTO `pitanje` (`PitanjeID`, `TekstPitanja`, `PonudjeniOdgovori`, `TacanOdgovor`, `DefinicijaID`, `EmailPitanje`, `DatumPitanje`) VALUES
(1, 'U okviru kod HTML taga se piše PHP kod?', 'head@body i head@style@html', 'body i head', 1, 'anyancosplay@gmail.com', '2018-02-17 00:47:33'),
(2, 'Funkcija echo vraća vrednost true/false?', 'Tačno@Netačno', 'Netačno', 2, 'anyancosplay@gmail.com', '2018-02-17 00:48:22'),
(3, 'Echo je za nijansu brža pri izvršavanju programa.', 'Tačno@Netačno', 'Tačno', 2, 'anyancosplay@gmail.com', '2018-02-17 00:48:51'),
(4, 'Koji je rezultat izvršavanja ovog PHP koda: echo “&lt;br&gt;”; ?', 'ispis &lt;br&gt;@prelazak u novi red', 'prelazak u novi red', 3, 'anyancosplay@gmail.com', '2018-02-17 00:49:08'),
(5, 'Kod koji se se piše između “ /*“ i “ */” simbola je?', 'višelinijski kod@jednolinijski komentar@višelinijski komentar', 'višelinijski komentar', 4, 'anyancosplay@gmail.com', '2018-02-17 00:49:33'),
(6, 'U PHP-u mora da se navede tip promenljive pre njenog korišćenja.', 'Tačno@Netačno', 'Netačno', 5, 'anyancosplay@gmail.com', '2018-02-17 00:49:53'),
(7, 'Može se menjati tip podataka neke varijable jednog te istog sadržaja.', 'Tačno@Netačno', 'Tačno', 5, 'anyancosplay@gmail.com', '2018-02-17 00:50:12'),
(8, 'Sa kojim simbolom počinju sve varijable u PHP-u?', 'var@#@$@%', '$', 5, 'anyancosplay@gmail.com', '2018-02-17 00:50:31'),
(9, 'Kako se pomoću echo naredbe ispisuju dve promenljive?', 'echo $promenljiva1, $promenljiva2;@echo $promenljiva1 . “  “ . $promenljiva2;', 'echo $promenljiva1 . “  “ . $promenljiva2;', 6, 'anyancosplay@gmail.com', '2018-02-17 00:51:04'),
(10, 'Domen važenja promenljive je?', 'sve moguće vrednosti promenljive@rok trajanja promenljive@oblast u kojoj je promenljiva dostupna programu', 'oblast u kojoj je promenljiva dostupna programu', 7, 'anyancosplay@gmail.com', '2018-02-17 00:51:32'),
(11, '$niz=array(); $niz[“Marko”]=32; $niz[“Petar”]=28; ...... je tip kog niza?', 'numeričkog@asocijativnog@multidimenzionalnog', 'asocijativnog', 8, 'anyancosplay@gmail.com', '2018-02-17 00:51:50'),
(12, 'Koja od ponuđenih tvrdnji je tačna?', 'korišćenjem duplih navodnika se mogu koristiti special characters, a pri korišćenju jednostrukih navodnika ispisaće se ime varijable sa znakom $.@korišćenjem jednostrukih navodnika se mogu koristiti special characters, i pri korišćenju jednostrukih navodnika ispisaće se ime varijable sa znakom $.@korišćenjem duplih navodnika se mogu koristiti special characters, i pri korišćenju dvostrukih navodnika ispisaće se ime varijable sa znakom $.', 'korišćenjem duplih navodnika se mogu koristiti special characters, a pri korišćenju jednostrukih navodnika ispisaće se ime varijable sa znakom $.', 9, 'anyancosplay@gmail.com', '2018-02-17 00:52:13'),
(13, 'Ako je email varijabla $email=\'neko@negde.com\'; Koji od ovih pseudo kodova reže string na fragmente?', 'funkciji explode proslediti email, pa monkey znak@funkciji implode proslediti monkey znak, pa mail@funkciji explode proslediti monkey znak, pa mail', 'funkciji explode proslediti monkey znak, pa mail', 10, 'anyancosplay@gmail.com', '2018-02-17 00:52:50'),
(14, 'Funkcija include() upozorava, ali skripta nastavlja da se izvršava, dok funkcija require() generiše ključnu grešku (fatal error) i izvršavanje skripte se prekida.', 'Tačno@Netačno', 'Tačno', 11, 'anyancosplay@gmail.com', '2018-02-17 00:53:07'),
(15, 'Superglobalne promenljive moraju da se definišu.', 'Tačno@Netačno', 'Netačno', 12, 'anyancosplay@gmail.com', '2018-02-17 00:53:36'),
(16, 'Ako korisnik popuni formu, server...', 'dodeljuje te vrednosti globalnim promenljivama $name, $password@podaci će biti podeljeni u niz: $_POST[‘name’], $_POST[‘password’]', 'podaci će biti podeljeni u niz: $_POST[‘name’], $_POST[‘password’]', 12, 'anyancosplay@gmail.com', '2018-02-17 00:53:56'),
(17, 'Koja od ovih tvrdnji je tačna?', 'Kod GET metode podaci se šalju transparentno kroz telo (body) HTTP zahteva i nisu vidljivi u komandnoj liniji.@Kod POST metode podaci se šalju transparentno kroz telo (body) HTTP zahteva i nisu vidljivi u komandnoj liniji.', 'Kod POST metode podaci se šalju transparentno kroz telo (body) HTTP zahteva i nisu vidljivi u komandnoj liniji.', 13, 'anyancosplay@gmail.com', '2018-02-17 00:54:36'),
(18, 'Kod GET metode nije moguće direktno uticati na podatke nakon što je forma ispunjena i submitovana.\n', 'Tačno@Netačno', 'Netačno', 14, 'anyancosplay@gmail.com', '2018-02-17 00:54:52'),
(19, 'Najjednostavniji način za upravljanje greškama je?', 'personalizovana funkcija@die()@izvestavanje o greškama', 'die()', 15, 'anyancosplay@gmail.com', '2018-02-17 00:55:06'),
(20, 'Razlika JSON-a u odnosu na XML je? Odabrati tačnu tvrdnju.', 'JSON može da parsira JavaScript@JSON ne koristi nizove@JSON podaci mogu da se prenose korišćenjem AJAX tehnologije@JSON ne koristi rezervisane reči', 'JSON ne koristi rezervisane reči', 16, 'anyancosplay@gmail.com', '2018-02-17 01:11:24'),
(21, 'Promenljive u JSON-u se nazivaju kako?', 'vrednosti@varijable@polja', 'vrednosti', 17, 'anyancosplay@gmail.com', '2018-02-17 01:11:52'),
(22, 'Složeni tipovi podataka u JSON-u su object i array.', 'Tačno@Netačno', 'Tačno', 17, 'anyancosplay@gmail.com', '2018-02-17 01:12:08'),
(23, 'Pomoću koje vrste zagrada se označavaju objekti?', 'uglaste@vitičaste', 'vitičaste', 18, 'anyancosplay@gmail.com', '2018-02-17 01:12:28'),
(24, 'Vitičaste zagrade se koriste za označavanje nizova.', 'Tačno@Netačno', 'Netačno', 18, 'anyancosplay@gmail.com', '2018-02-17 01:12:41'),
(25, 'Kako bi se u JSON-u definisala promenljiva ime koja je tipa string i ima vrednost Petar?', '$ime=\"Petar\"@\"ime\": \"Petar\"@\"Petar\":\"ime\"', '\"ime\": \"Petar\"', 19, 'anyancosplay@gmail.com', '2018-02-17 01:13:04'),
(26, 'Kako bi se definisao niz niz sa članovima 1,2 i 3?', '$niz={1,2,3}@\"niz\":\"1,2,3\"@\"niz\": [1, 2, 3]', '\"niz\": [1, 2, 3]', 20, 'anyancosplay@gmail.com', '2018-02-17 01:13:27'),
(27, 'Kako bi se definisao asocijativni niz fakultet sa nazivom FON i mestom Beograd?', '\"fakultet\": {\"naziv\": \"FON\", \"mesto\": \"Beograd\"}@\"fakultet\": [\"naziv\": \"FON\", \"mesto\": \"Beograd\"]', '\"fakultet\": [\"naziv\": \"FON\", \"mesto\": \"Beograd\"]', 20, 'anyancosplay@gmail.com', '2018-02-17 01:13:42'),
(28, 'Kako bi se definisao objekat fakultet sa nazivom FON i mestom Beograd?', '\"fakultet\": {\"naziv\": \"FON\", \"mesto\": \"Beograd\"}@\"fakultet\": [\"naziv\": \"FON\", \"mesto\": \"Beograd\"]', '\"fakultet\": {\"naziv\": \"FON\", \"mesto\": \"Beograd\"}', 21, 'anyancosplay@gmail.com', '2018-02-17 01:14:07'),
(29, 'Da bi JSON dokument bio validan, neophodno je?', 'da postoje anonimni objekti@da nijedan element glavnog JSON objekta ne bude anoniman', 'da nijedan element glavnog JSON objekta ne bude anoniman', 22, 'anyancosplay@gmail.com', '2018-02-17 01:14:26'),
(30, 'Kod parsiranja kompleksijih JSON podataka, koristi se koja JavaScript funkcija?', 'eval()@JSON.parse()', 'eval()', 23, 'anyancosplay@gmail.com', '2018-02-17 01:14:48'),
(31, 'Izabrati tačnu tvrdnju:', 'Znatno je sigurnije korišćenje JSON.parse() funkcije, ali je njen nedostatak nedovoljna kompatibilnost.@Znatno je sigurnije korišćenje eval() funkcije, jer je njena prednost kompatibilnost.@Znatno je sigurnije korišćenje JSON.parse() funkcije, jer je njena prednost kompatibilnost.', 'Znatno je sigurnije korišćenje JSON.parse() funkcije, ali je njen nedostatak nedovoljna kompatibilnost.', 24, 'anyancosplay@gmail.com', '2018-02-17 01:15:15'),
(32, 'JQuery biblioteka poseduje dobru podršku za rad sa JSON podacima. Koja ugrađena funkcija se koristi?', 'parseJSON()@eval()@JSON.parse()', 'parseJSON()', 25, 'anyancosplay@gmail.com', '2018-02-17 01:15:34'),
(33, 'PHP takođe podržava rad sa JSON dokumentima, bez instaliranja dodatnih biblioteka. Za parsiranje JSON-a koristi se koja funkcija?', 'parseJSON()@json_decode()@eval()@JSON.parse()', 'json_decode()', 26, 'anyancosplay@gmail.com', '2018-02-17 01:15:53'),
(34, 'JSON fajlovi se najčešće generišu na čijoj strani?', 'klijentskoj@serverskoj', 'serverskoj', 27, 'anyancosplay@gmail.com', '2018-02-17 01:16:09'),
(35, 'Koja PHP funkcija vraća JSON objekat?', 'json_encode()@json_decode()', 'json_encode()', 27, 'anyancosplay@gmail.com', '2018-02-17 01:16:22'),
(36, 'U asinhronom načinu rada procesi se izvode sekvencijalno.', 'Tačno@Netačno', 'Netačno', 28, 'anyancosplay@gmail.com', '2018-02-17 01:26:13'),
(37, 'Koja od ovih tvrdnji je tačna?', 'Kod sinhronog prenosa podataka postoji mogućnost za eliminisanje čekanja, a kod asinhronog se korisnikovo korišćenje aplikacije nikada ne prekida.@Kod sinhronog prenosa podataka ne postoji mogućnost za eliminisanje čekanja, a kod asinhronog se korisnikovo korišćenje aplikacije nikada ne prekida.@Kod sinhronog prenosa podataka ne postoji mogućnost za eliminisanje čekanja, a kod asinhronog se korisnikovo korišćenje aplikacije ipak prekida.', 'Kod sinhronog prenosa podataka ne postoji mogućnost za eliminisanje čekanja, a kod asinhronog se korisnikovo korišćenje aplikacije nikada ne prekida.', 28, 'anyancosplay@gmail.com', '2018-02-17 01:26:54'),
(38, 'Sa asinhronom komunikacijom u pozadini se odvija komunikacija, a korisnik uopšte ne zna da se tako nešto dešava.', 'Tačno@Netačno', 'Tačno', 28, 'anyancosplay@gmail.com', '2018-02-17 01:27:11'),
(39, 'AJAX je tehnologija sama po sebi.', 'Tačno@Netačno', 'Netačno', 29, 'anyancosplay@gmail.com', '2018-02-17 01:27:42'),
(40, 'Kod AJAX-a svaki prenos podataka između servera i klijenta (u slučaju AJAX-a to je browser) vrši se u pozadini. To je moguće izvesti pomoću?', 'JQuery@JavaScript@HTML', 'JavaScript', 30, 'anyancosplay@gmail.com', '2018-02-17 01:27:59'),
(41, 'AJAX obuhvata dinamički prikaz i interakciju preko kog modela?', 'SAX@DYNAMIC@DOM', 'DOM', 31, 'anyancosplay@gmail.com', '2018-02-17 01:28:25'),
(42, 'Internet Explorer koristi XMLHttpRequest objekat.', 'Tačno@Netačno', 'Netačno', 32, 'anyancosplay@gmail.com', '2018-02-17 01:28:42'),
(43, 'Koje svojstvo čuva funkciju koja obrađuje odgovor servera?', 'onreadystatechange@readyState@responseText', 'onreadystatechange', 33, 'anyancosplay@gmail.com', '2018-02-17 01:28:58'),
(44, 'Koje svojstvo čuva status odgovora servera?', 'onreadystatechange@readyState@responseText', 'readyState', 33, 'anyancosplay@gmail.com', '2018-02-17 01:29:12'),
(45, 'Svaki put kada se ______ svojstvo promeni, ______ funkcija će biti izvršena.', 'responseText, onreadystatechange@readyState, onreadystatechange@onreadystatechange, readyState', 'readyState, onreadystatechange', 33, 'anyancosplay@gmail.com', '2018-02-17 01:29:28'),
(46, 'Koja od ovih metoda predstavlja asinhron prenos podataka?', 'xmlHttp.open(\"GET\", \"http://localhost/ajax/test.php?param1=x&param2=y\", true);@xmlHttp.open(\"GET\", \"http://localhost/ajax/test.php?param1=x&param2=y\", false);', 'xmlHttp.open(\"GET\", \"http://localhost/ajax/test.php?param1=x&param2=y\", true);', 34, 'anyancosplay@gmail.com', '2018-02-17 01:29:44'),
(47, 'Objekat je instanca klase.', 'Tačno@Netačno', 'Tačno', 35, 'luxybaxy@gmail.com', '2018-02-17 11:04:44'),
(48, 'Ispravno navodjenje funkcije klase: ', 'function lajanje(){}@lajanje(){}@function lajanje{}@function lajanje()', 'function lajanje(){}', 36, 'luxybaxy@gmail.com', '2018-02-17 11:05:57'),
(49, 'Apstraktna klasa se mora instancirati.', 'Tačno@Netačno', 'Netačno', 36, 'luxybaxy@gmail.com', '2018-02-17 11:06:15'),
(50, 'Pravilan poziv atributa objekta k klase Klasa je:', 'k.atribut@k.atribut()@k->atribut@k->atribut()', 'k->atribut', 37, 'luxybaxy@gmail.com', '2018-02-17 11:07:26'),
(51, 'function ispisi(tekst){} je ispravno napisana.', 'Tačno@Netačno', 'Netačno', 38, 'luxybaxy@gmail.com', '2018-02-17 11:07:42'),
(52, 'Konstruktor mora biti eksplicitno naveden u klasi da bi se pozvao.', 'Tačno@Netačno', 'Netačno', 39, 'luxybaxy@gmail.com', '2018-02-17 11:08:02'),
(53, 'Sintaksno ispravan konstruktor je:', 'public function Klasa ($parametar1...$parametarN) {}@public function Klasa_construct ($parametar1...$parametarN) {}@public function __construct($parametar1...$parametarN){}@public function Klasa__construct($parametar1...$parametarN){}', 'public function __construct($parametar1...$parametarN){}', 39, 'luxybaxy@gmail.com', '2018-02-17 11:08:21'),
(54, 'class A1 extends A{} je ispravno za nasleđivanje?', 'Tačno@Netačno', 'Tačno', 40, 'luxybaxy@gmail.com', '2018-02-17 11:09:37'),
(55, 'Pravilan poziv staticke metode izmeni() klase Klasa unutar iste je:', 'Klasa.izmeni()@izmeni()@$this->izmeni()@self::izmeni()', 'self::izmeni()', 41, 'luxybaxy@gmail.com', '2018-02-17 11:09:52'),
(56, 'Pravilan poziv metode izmeni() roditeljske klase je:', '$this->parent::izmeni()@$this->izmeni()@parent::izmeni()@self::parent::izmeni()', 'parent::izmeni()', 41, 'luxybaxy@gmail.com', '2018-02-17 11:10:08'),
(57, 'Šta od navedenog nije neophodno za uspostavljanje konekcije na bazu?', 'username@naziv baze podataka@host servera@sopstvena IP adresa', 'sopstvena IP adresa', 42, 'luxybaxy@gmail.com', '2018-02-17 11:24:44'),
(58, 'Metodu query je potrebno ručno pisati.', 'Tačno@Netačno', 'Netačno', 43, 'luxybaxy@gmail.com', '2018-02-17 11:25:05'),
(59, 'fetch_object() se poziva nad objektom klase mysqli.', 'Tačno@Netačno', 'Netačno', 44, 'luxybaxy@gmail.com', '2018-02-17 11:25:22'),
(60, 'Da li $red->Naziv vraća isto sto i $red->naziv?', 'Tačno@Netačno', 'Netačno', 44, 'luxybaxy@gmail.com', '2018-02-17 11:25:40'),
(61, 'Naredbom $knjige = SimpleXMLElement(\'knjige.xml\') se preuzima XML fajl sa URL adrese knjige.xml.', 'Tačno@Netačno', 'Netačno', 45, 'luxybaxy@gmail.com', '2018-02-17 11:38:11'),
(62, '$student[\'brojIndeksa\'] pristupa elementu brojIndeksa studenta.', 'Tačno@Netačno', 'Netačno', 46, 'luxybaxy@gmail.com', '2018-02-17 11:38:28'),
(63, 'Šta se dešava pozivom metode addChild(\"element\")?', 'Dodaje se nov podelement određenog elementa@Pravi se novi element pored onog koji ga je pozvao@Dodaje se tag postojećem elementu@Kopira se element koji ga je pozvao', 'Dodaje se nov podelement određenog elementa', 47, 'luxybaxy@gmail.com', '2018-02-17 11:38:44'),
(64, 'Koja metoda služi za učitavanje XML dokumenta u PHP DOM-u?', 'get (dokument)@insert (dokument)@load (dokument)@dokument se učitava inicijalizacijom objekta', 'load (dokument)', 48, 'luxybaxy@gmail.com', '2018-02-17 11:39:00'),
(65, 'Metodom nodeValue pristupamo vrednosti naziva čvora.', 'Tačno@Netačno', 'Netačno', 49, 'luxybaxy@gmail.com', '2018-02-17 11:39:19'),
(66, 'Koja od sledećih metoda dodaje konkretne vrednosti XML elementu?', 'createElement(\'tekst\')@createTextNode(\'tekst\')@appendChild(\'tekst\'@addNewValueToNode(\'tekst\')', 'createTextNode(\'tekst\')', 50, 'luxybaxy@gmail.com', '2018-02-17 11:39:34'),
(67, 'Šta vraća konstruktor bez parametara DOMDocumenta?', 'prazan XML fajl@koreni element@početak XML fajla@verziju XML-a', 'koreni element', 50, 'luxybaxy@gmail.com', '2018-02-17 11:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `poznavanjedefinicije`
--

CREATE TABLE `poznavanjedefinicije` (
  `Email` varchar(50) NOT NULL,
  `DefinicijaID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poznavanjedefinicije`
--

INSERT INTO `poznavanjedefinicije` (`Email`, `DefinicijaID`) VALUES
('pera@peric.com', 1),
('pera@peric.com', 2),
('pera@peric.com', 3),
('pera@peric.com', 4),
('pera@peric.com', 5),
('pera@peric.com', 6),
('pera@peric.com', 7),
('pera@peric.com', 8),
('pera@peric.com', 9),
('pera@peric.com', 10),
('pera@peric.com', 11),
('pera@peric.com', 12),
('pera@peric.com', 13),
('pera@peric.com', 14),
('pera@peric.com', 15),
('pera@peric.com', 28),
('pera@peric.com', 35),
('pera@peric.com', 36),
('pera@peric.com', 37),
('pera@peric.com', 38),
('pera@peric.com', 39),
('pera@peric.com', 40),
('pera@peric.com', 41),
('pera@peric.com', 42),
('pera@peric.com', 43),
('pera@peric.com', 44);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL,
  `RezultatTesta` double NOT NULL,
  `DatumPridruzivanja` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`email`, `ime`, `prezime`, `sifra`, `uloga`, `RezultatTesta`, `DatumPridruzivanja`) VALUES
('pera@peric.com', 'Pera', 'Peric', '!\"#$%&/()=$%DFGBHJfghJ$%677$%d227ae4168da4a26407b1709bfc388be', 'student', 61, '2018-02-17 15:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `tipdefinicije`
--

CREATE TABLE `tipdefinicije` (
  `TipDefinicijeID` int(5) NOT NULL,
  `Naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipdefinicije`
--

INSERT INTO `tipdefinicije` (`TipDefinicijeID`, `Naziv`) VALUES
(1, 'Osnove PHP-a'),
(2, 'Objektno-orijentisano programiranje u PHP-u'),
(3, 'Rad sa bazama u PHP-u'),
(4, 'AJAX'),
(5, 'XML'),
(6, 'JSON');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `definicija`
--
ALTER TABLE `definicija`
  ADD PRIMARY KEY (`DefinicijaID`),
  ADD KEY `tipdef_fk` (`TipDefinicijeID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `odgovor`
--
ALTER TABLE `odgovor`
  ADD PRIMARY KEY (`Email`,`PitanjeID`),
  ADD KEY `pitanje_fk` (`PitanjeID`);

--
-- Indexes for table `pitanje`
--
ALTER TABLE `pitanje`
  ADD PRIMARY KEY (`PitanjeID`),
  ADD KEY `DefinicijaID` (`DefinicijaID`),
  ADD KEY `Email` (`EmailPitanje`);

--
-- Indexes for table `poznavanjedefinicije`
--
ALTER TABLE `poznavanjedefinicije`
  ADD PRIMARY KEY (`Email`,`DefinicijaID`),
  ADD KEY `def_fk` (`DefinicijaID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tipdefinicije`
--
ALTER TABLE `tipdefinicije`
  ADD PRIMARY KEY (`TipDefinicijeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `definicija`
--
ALTER TABLE `definicija`
  MODIFY `DefinicijaID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pitanje`
--
ALTER TABLE `pitanje`
  MODIFY `PitanjeID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tipdefinicije`
--
ALTER TABLE `tipdefinicije`
  MODIFY `TipDefinicijeID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `definicija`
--
ALTER TABLE `definicija`
  ADD CONSTRAINT `tipdef_fk` FOREIGN KEY (`TipDefinicijeID`) REFERENCES `tipdefinicije` (`TipDefinicijeID`);

--
-- Constraints for table `odgovor`
--
ALTER TABLE `odgovor`
  ADD CONSTRAINT `email_fk` FOREIGN KEY (`Email`) REFERENCES `student` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `pitanje_fk` FOREIGN KEY (`PitanjeID`) REFERENCES `pitanje` (`PitanjeID`) ON DELETE CASCADE;

--
-- Constraints for table `pitanje`
--
ALTER TABLE `pitanje`
  ADD CONSTRAINT `pitanje_ibfk_1` FOREIGN KEY (`DefinicijaID`) REFERENCES `definicija` (`DefinicijaID`) ON DELETE CASCADE,
  ADD CONSTRAINT `pitanje_ibfk_2` FOREIGN KEY (`EmailPitanje`) REFERENCES `administrator` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `poznavanjedefinicije`
--
ALTER TABLE `poznavanjedefinicije`
  ADD CONSTRAINT `Student_fk` FOREIGN KEY (`Email`) REFERENCES `student` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `def_fk` FOREIGN KEY (`DefinicijaID`) REFERENCES `definicija` (`DefinicijaID`) ON DELETE CASCADE,
  ADD CONSTRAINT `st_fk` FOREIGN KEY (`Email`) REFERENCES `student` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
