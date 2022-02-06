insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
1,
'Albatros',
'Wydawnictwo Albatros',
'Wydawnictwo Albatros',
now());

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
2,
'Moja Ksi��ka',
'Wydawnictwo "Moja Ksi��ka"',
'Wydawnictwo "Moja Ksi��ka"',
'2020-10-17 00:00:00');

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
3,
'Nowa Era',
'Wydawnictwo "Nowa Era"',
'Wydawnictwo "Nowa Era"',
'2003-08-12 00:00:00');

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
4,
'Operon',
'Wydawnictwo "Operon"',
'Wydawnictwo "Operon"',
'2001-03-21 00:00:00');

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
5,
'Poligraf',
'Wydawnictwo "Poligraf"',
'Wydawnictwo "Poligraf"',
'2008-11-22 00:00:00');

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
6,
'�wiat Ksi��ki',
'Wydawnictwo "�wiat Ksi��ki"',
'Wydawnictwo "�wiat Ksi��ki"',
'2000-01-28 00:00:00');

insert
	into
	publishers(publisher_id,
	name,
	short_description,
	long_description,
	establishment_date)
values (
7,
'Zielona Sowa',
'Wydawnictwo "Zielona Sowa"',
'Wydawnictwo "Zielona Sowa"',
'2009-03-26 00:00:00');

insert
	into
	products (
product_id,
	title,
	short_description,
	long_description,
	price,
	available_quantity,
	establishment_year,
	publisher_id)
values (1,
'I nie bylo ju� nikogo',
'Ksiazka bardzo ciekawa',
'Ksiazka bardzo ciekawa Ksiazka bardzo ciekawa Ksiazka bardzo ciekawa Ksiazka bardzo ciekawa Ksiazka bardzo ciekawa',
10.99,
20,
'1999-03-26 00:00:00',
1
);

insert
	into
	products (
product_id,
	title,
	short_description,
	long_description,
	price,
	available_quantity,
	establishment_year,
	publisher_id)
values (2,
'Harry Potter i Kamie� Filozoficzny',
'Powie�� jest osadzona w fikcyjnym �wiecie magii. Jej g��wnym bohaterem jest jedenastoletni Harry Potter, kt�ry dowiaduje si�, �e jest czarodziejem.',
'Powie�� jest osadzona w fikcyjnym �wiecie magii. Jej g��wnym bohaterem jest jedenastoletni Harry Potter, kt�ry dowiaduje si�, �e jest czarodziejem. Ch�opiec rozpoczyna nauk� w szkole magii Hogwart, gdzie zaprzyja�nia si� z Ronem Weasleyem i Hermion� Granger. Bohaterowie odkrywaj�, �e w szkole ukryto kamie� filozoficzny, maj�cy moc zapewnienia d�ugowieczno�ci. Przyjaciele usi�uj� powstrzyma� czarnoksi�nika Lorda Voldemorta, kt�ry przed laty zamordowa� rodzic�w Harry�ego, przed zdobyciem kamienia.',
30.99,
30,
'1997-03-26 00:00:00',
5
);

insert
	into
	products (
product_id,
	title,
	short_description,
	long_description,
	price,
	available_quantity,
	establishment_year,
	publisher_id)
values (3,
'Ch�opcy z Placu Broni',
'Ksi��ka pt. "Ch�opcy z Placu Broni" jest autorstwa Ferenca Molnara. Ca�a akcja rozgrywa si� w Budapeszcie, stolicy W�gier we wiosn� 1889 roku. Ksi��ka opowiada o 2 grupach ch�opc�w - z Placu Broni oraz Czerwonosk�rych',
'W Budapeszcie, na jednym z plac�w przeznaczonych pod zabudow� swoje ulubione miejsce zabaw ma grupa ch�opc�w. Nazwali siebie Ch�opcami z Placu Broni. Przewodzi im Janosz Boka. Rywalizuje z nimi inna grupa ch�opc�w - Czerwonosk�rzy. Okazuje si�, �e trzeba b�dzie stoczy� bitw� o ukochany plac. Zar�wno w tej bitwie jak i przed ni� odznacza si� zw�aszcza jeden z Ch�opc�w w Placu Broni - Ernest Nemeczek. Najpierw wyprawia si� do Ogrodu Botanicznego, gdzie Czerwonosk�rzy maj� swoj� siedzib� i dowiaduje si�, �e nale��cy do ich grupy Gereb, zdradzi�. Zostaje za to sk�pany w stawie i ci�ko choruje. Mimo to w dzie� bitwy pojawia si� na Placu, by go broni�',
20.99,
20,
'1942-01-28 00:00:00',
3
);

insert
	into
	products (
product_id,
	title,
	short_description,
	long_description,
	price,
	available_quantity,
	establishment_year,
	publisher_id)
values (4,
'Potop',
'G��wnym bohaterem powie�ci jest m�ody chor��y orsza�ski Andrzej Kmicic, kt�ry przybywa na Laud�, aby zgodnie z testamentem Herakliusza Billewicza po�lubi� jego wnuczk� Aleksandr� Billewicz�wn�. W tym te� momencie rozpoczyna si� powie��. Akcja przedstawia okres z lat 1655�1657',
'Zar�czony z Ole�k� Billewicz�wn� chor��y Andrzej Kmicic opowiada si� pocz�tkowo po stronie Radziwi���w � pot�nego rodu magnackiego wspieraj�cego Szwed�w w ich naje�dzie na Rzeczpospolit�. Uznany przez szlacht� i narzeczon� za zdrajc�, postanawia si� zrehabilitowa�. Pod przybranym nazwiskiem � Babinicz � bierze udzia� w obronie Jasnej G�ry, w�asn� piersi� os�ania kr�la Jana Kazimierza przed wrogami i bohatersko walczy z nieprzyjacielem do zako�czenia wojny.',
40.99,
20,
'1936-04-26 00:00:00',
6
);

insert
	into
	products (
product_id,
	title,
	short_description,
	long_description,
	price,
	available_quantity,
	establishment_year,
	publisher_id)
values (5,
'Wojna o pieni�dz',
'Sk�d si� bior� kryzysy finansowe? Aby odpowiedzie� na to pytanie, trzeba postawi� kilka innych. Kto kontroluje emisj� waluty? Kto zyskuje na inflacji? Komu zale�y na drukowaniu papierowego pieni�dza bez pokrycia w z�ocie? Kto pragnie uzale�nia� ludzi od kredyt�w? Do kogo nale�y ameryka�ska Rezerwa Federalna?',
'Sk�d si� bior� kryzysy finansowe? Aby odpowiedzie� na to pytanie, trzeba postawi� kilka innych. Kto kontroluje emisj� waluty? Kto zyskuje na inflacji? Komu zale�y na drukowaniu papierowego pieni�dza bez pokrycia w z�ocie? Kto pragnie uzale�nia� ludzi od kredyt�w? Do kogo nale�y ameryka�ska Rezerwa Federalna? Po co stworzono Mi�dzynarodowy Fundusz Walutowy? A przede wszystkim: w jaki spos�b prowadzona jest globalna wojna o pieni�dz? Song Hongbing, chi�ski analityk finansowy, stara si� odpowiedzie� na te pytania, spogl�daj�c na �wiat zachodni z zewn�trz i usi�uj�c dociec, w kt�rym momencie ta dynamicznie rozwijaj�ca si� cywilizacja pope�ni�a b��d, kt�ry doprowadzi� do dzisiejszego permanentnego kryzysu i rosn�cego zad�u�enia.',
25.99,
30,
'2016-02-23 00:00:00',
7
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (1,
'Marsza�kowska 82',
'Warszawa',
'Polska',
'02-634'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (2,
'Floria�ska 34',
'Krak�w',
'Polska',
'21-544'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (3,
'D�uga 38',
'Gda�sk',
'Polska',
'46-534'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (4,
'Z�ota 89',
'Lublin',
'Polska',
'22-436'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (5,
'S�oneczna 31',
'Rzesz�w',
'Polska',
'20-686'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (6,
'Deszczowa 121',
'Katowice',
'Polska',
'46-780'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (7,
'Kolorowa 12',
'Wroc�aw',
'Polska',
'77-012'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (8,
'Szkolna 17',
'Bia�ystok',
'Polska',
'67-521'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (9,
'Zielona 47',
'Kielce',
'Polska',
'45-678'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (10,
'Weso�a 43',
'Pozna�',
'Polska',
'68-244'
);

insert
	into
	addresses (
address_id,
	street,
	city,
	country,
	post_code)
values (11,
'Nowowiejska 10',
'Warszawa',
'Polska',
'00-631'
);


insert
	into
	clients (
client_id,
	first_name,
	last_name ,
	company_name,
	nip,
	phone_number,
	email,
	loyalty_card,
	newsletter_agreement,
	address_id)
values (1,
'Jan',
'Kowalski',
'ABC Company',
'6191558577',
'624589138',
'j.kowalski@gmail.com',
0,
1,
1
);

insert
	into
	clients (
client_id,
	first_name,
	last_name ,
	company_name,
	nip,
	phone_number,
	email,
	loyalty_card,
	newsletter_agreement,
	address_id)
values (2,
'Jan',
'Nowak',
'ADE Company',
'6697812557',
'5014559838',
'j.nowak@interia.pl',
1,
1,
2
);

insert
	into
	clients (
client_id,
	first_name,
	last_name ,
	company_name,
	nip,
	phone_number,
	email,
	loyalty_card,
	newsletter_agreement,
	address_id)
values (3,
'Anna',
'Nowacka',
'P&G',
'9617515571',
'5215819338',
'anna_nowacka@onet.pl',
1,
0,
3
);

insert
	into
	clients (
client_id,
	first_name,
	last_name ,
	company_name,
	nip,
	phone_number,
	email,
	loyalty_card,
	newsletter_agreement,
	address_id)
values (4,
'Joanna',
'Kowalewska',
'A&S&G',
'8317613531',
'6017318368',
'j_kowalewska@gmail.com',
0,
1,
4
);

insert
	into
	clients (
client_id,
	first_name,
	last_name ,
	company_name,
	nip,
	phone_number,
	email,
	loyalty_card,
	newsletter_agreement,
	address_id)
values (5,
'Janusz',
'Polakowski',
'JanuszPol',
'1847615791',
'6612346968',
'janusz_123@interia.pl',
0,
1,
5
);

insert
	into
	store_houses (
storehouse_id,
	surface)
values (1,
12000
);

insert
	into
	store_houses (
storehouse_id,
	surface)
values (2,
15000
);

insert
	into
	store_houses (
storehouse_id,
	surface)
values (3,
10000
);

insert
	into
	store_houses (
storehouse_id,
	surface)
values (4,
20000
);

insert
	into
	store_houses (
storehouse_id,
	surface)
values (5,
17000
);


insert
	into
	employees (
employee_id,
	first_name,
	last_name ,
	pesel,
	position,
	date_of_birth,
	phone_number,
	employee_phone_number,
	email,
	employee_email,
	storehouse_id,
	address_id)
values (1,
'Adam',
'Januszkiewicz',
'89013159370',
'Magazynier',
'1989-01-31 00:00:00',
'125353631',
'453632957',
'adam_januszkiewicz@gmail.com',
'a.januszkiewicz@ksiegarnia.pl',
1,
6
);

insert
	into
	employees (
employee_id,
	first_name,
	last_name ,
	pesel,
	position,
	date_of_birth,
	phone_number,
	employee_phone_number,
	email,
	employee_email,
	storehouse_id,
	address_id)
values (2,
'Jan',
'Kowalewski',
'79031873139',
'Kierownik magazynu',
'1979-03-18 00:00:00',
'372957262',
'692967361',
'jan_kowalewski@interia.com',
'j.kowalewski@ksiegarnia.pl',
2,
7
);

insert
	into
	employees (
employee_id,
	first_name,
	last_name ,
	pesel,
	position,
	date_of_birth,
	phone_number,
	employee_phone_number,
	email,
	employee_email,
	storehouse_id,
	address_id)
values (3,
'Jadwiga',
'Lewandowska',
'78070193181',
'Sprz�taczka',
'1978-07-01 00:00:00',
'918747282',
'195826462',
'jadzia_l@onet.pl',
'j.lewandowska@ksiegarnia.pl',
3,
8
);

insert
	into
	employees (
employee_id,
	first_name,
	last_name ,
	pesel,
	position,
	date_of_birth,
	phone_number,
	employee_phone_number,
	email,
	employee_email,
	storehouse_id,
	address_id)
values (4,
'Tomasz',
'Janowski',
'86040354151',
'Operator w�zka wid�owego',
'1986-04-03 00:00:00',
'838572821',
'693857271',
'tomek_janowski@wp.pl',
't.janowski@ksiegarnia.pl',
4,
9
);

insert
	into
	employees (
employee_id,
	first_name,
	last_name ,
	pesel,
	position,
	date_of_birth,
	phone_number,
	employee_phone_number,
	email,
	employee_email,
	storehouse_id,
	address_id)
values (5,
'Andrzej',
'Morawski',
'83111955265',
'Magazynier',
'1983-11-19 00:00:00',
'543584351',
'793274711',
'andrzej_morawski@gmail.com',
'a.morawski@ksiegarnia.pl',
5,
10
);

insert
	into
	authors (
author_id,
	first_name,
	last_name)
values (1,
'Agatha',
'Christie'
);

insert
	into
	authors (
author_id,
	first_name,
	last_name)
values (2,
'Joanne',
'Rowling'
);

insert
	into
	authors (
author_id,
	first_name,
	last_name)
values (3,
'Ferenc',
'Molnar'
);

insert
	into
	authors (
author_id,
	first_name,
	last_name)
values (4,
'Henryk',
'Sienkiewicz'
);

insert
	into
	authors (
author_id,
	first_name,
	last_name)
values (5,
'Song',
'Hongbing'
);

insert
	into
	authors_products (
author_id,
	product_id)
values (1,
1
);

insert
	into
	authors_products (
author_id,
	product_id)
values (2,
2
);

insert
	into
	authors_products (
author_id,
	product_id)
values (3,
3
);

insert
	into
	authors_products (
author_id,
	product_id)
values (4,
4
);

insert
	into
	authors_products (
author_id,
	product_id)
values (5,
5
);

insert
	into
	bookstores (
bookstore_id,
	name,
	company_name,
	nip,
	establishment_year,
	address_id)
values (1,
'Ksi�golandia',
'Ksi��kopol',
'1846628481',
'2020-03-11 00:00:00',
11
);

insert
	into
	products_store_houses (
product_id,
	storehouse_id)
values (1,
1
);

insert
	into
	products_store_houses (
product_id,
	storehouse_id)
values (2,
2
);

insert
	into
	products_store_houses (
product_id,
	storehouse_id)
values (3,
3
);

insert
	into
	products_store_houses (
product_id,
	storehouse_id)
values (4,
4
);

insert
	into
	products_store_houses (
product_id,
	storehouse_id)
values (5,
5
);

insert
	into
	discounts (
discount_id,
	discount_code,
	start_date,
	end_date,
	percentage)
values (1,
'ABCDEFXYZ',
'2022-01-01 00:00:00',
'2022-03-01 00:00:00',
5
);

insert
	into
	discounts (
discount_id,
	discount_code,
	start_date,
	end_date,
	percentage)
values (2,
'123QWERTY',
'2022-01-10 00:00:00',
'2022-02-10 00:00:00',
10
);

insert
	into
	discounts (
discount_id,
	discount_code,
	start_date,
	end_date,
	percentage)
values (3,
'ASDFGHJKL',
'2021-12-01 00:00:00',
'2022-02-28 00:00:00',
8
);

insert
	into
	discounts (
discount_id,
	discount_code,
	start_date,
	end_date,
	percentage)
values (4,
'ZXCVBNMOP',
'2021-11-15 00:00:00',
'2022-02-15 00:00:00',
7
);

insert
	into
	discounts (
discount_id,
	discount_code,
	start_date,
	end_date,
	percentage)
values (5,
'987LKJHGF',
'2022-01-15 00:00:00',
'2022-02-15 00:00:00',
6
);



insert
	into
	genres (
genre_id,
	name,
	description)
values (1,
'Powie�� dla dzieci',
'To kategoria, w sk�ad kt�rej wchodz� najlepsze bajki i opowie�ci dla dzieci'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (2,
'Fantasy',
'To gatunek literacki lub filmowy u�ywaj�cy magicznych i innych nadprzyrodzonych form, motyw�w, jako pierwszorz�dnego sk�adnika fabu�y, my�li przewodniej, czasu, miejsca akcji, postaci i okoliczno�ci zdarze�'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (3,
'Literatura faktu',
'W literaturze faktu obiektem zainteresowania autor�w s� autentyczne wydarzenia. Ten gatunek literacki obejmuje nie tylko reporta�e, ale i ksi��ki, w kt�rych literaci podejmuj� pr�b� opisania zastanej rzeczywisto�ci'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (4,
'Powie�� historyczna',
'To odmiana powie�ci o tematyce historycznej, ��cz�ca materia� historyczny z fikcj�, mieszaj�ca postacie fikcyjne z historycznymi'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (5,
'Krymina�',
'To odmiana powie�ci charakteryzuj�ca si� fabu�� zorganizowan� wok� zbrodni, okoliczno�ci doj�cia do niej, dochodzenia oraz ujawnienia osoby sprawcy.'
);

insert
	into
	genres_products (
genre_id,
	product_id)
values (1,
3
);

insert
	into
	genres_products (
genre_id,
	product_id)
values (2,
2
);

insert
	into
	genres_products (
genre_id,
	product_id)
values (3,
5
);

insert
	into
	genres_products (
genre_id,
	product_id)
values (4,
4
);

insert
	into
	genres_products (
genre_id,
	product_id)
values (5,
1
);








