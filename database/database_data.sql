--TO rewrite
--INSERT INTO roles(name) VALUES('ROLE_USER');
--INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
--INSERT INTO roles(name) VALUES('ROLE_ADMIN');

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
'Moja Książka',
'Wydawnictwo "Moja Książka"',
'Wydawnictwo "Moja Książka"',
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
'Świat Książki',
'Wydawnictwo "Świat Książki"',
'Wydawnictwo "Świat Książki"',
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
'I nie bylo już nikogo',
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
'Harry Potter i Kamień Filozoficzny',
'Powieść jest osadzona w fikcyjnym świecie magii. Jej głównym bohaterem jest jedenastoletni Harry Potter, który dowiaduje się, że jest czarodziejem.',
'Powieść jest osadzona w fikcyjnym świecie magii. Jej głównym bohaterem jest jedenastoletni Harry Potter, który dowiaduje się, że jest czarodziejem. Chłopiec rozpoczyna naukę w szkole magii Hogwart, gdzie zaprzyjaźnia się z Ronem Weasleyem i Hermioną Granger. Bohaterowie odkrywają, że w szkole ukryto kamień filozoficzny, mający moc zapewnienia długowieczności. Przyjaciele usiłują powstrzymać czarnoksiężnika Lorda Voldemorta, który przed laty zamordował rodziców Harry’ego, przed zdobyciem kamienia.',
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
'Chłopcy z Placu Broni',
'Książka pt. "Chłopcy z Placu Broni" jest autorstwa Ferenca Molnara. Cała akcja rozgrywa się w Budapeszcie, stolicy Węgier we wiosnę 1889 roku. Książka opowiada o 2 grupach chłopców - z Placu Broni oraz Czerwonoskórych',
'W Budapeszcie, na jednym z placów przeznaczonych pod zabudowę swoje ulubione miejsce zabaw ma grupa chłopców. Nazwali siebie Chłopcami z Placu Broni. Przewodzi im Janosz Boka. Rywalizuje z nimi inna grupa chłopców - Czerwonoskórzy. Okazuje się, że trzeba będzie stoczyć bitwę o ukochany plac. Zarówno w tej bitwie jak i przed nią odznacza się zwłaszcza jeden z Chłopców w Placu Broni - Ernest Nemeczek. Najpierw wyprawia się do Ogrodu Botanicznego, gdzie Czerwonoskórzy mają swoją siedzibę i dowiaduje się, że należący do ich grupy Gereb, zdradził. Zostaje za to skąpany w stawie i ciężko choruje. Mimo to w dzień bitwy pojawia się na Placu, by go bronić',
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
'Głównym bohaterem powieści jest młody chorąży orszański Andrzej Kmicic, który przybywa na Laudę, aby zgodnie z testamentem Herakliusza Billewicza poślubić jego wnuczkę Aleksandrę Billewiczównę. W tym też momencie rozpoczyna się powieść. Akcja przedstawia okres z lat 1655–1657',
'Zaręczony z Oleńką Billewiczówną chorąży Andrzej Kmicic opowiada się początkowo po stronie Radziwiłłów – potężnego rodu magnackiego wspierającego Szwedów w ich najeździe na Rzeczpospolitą. Uznany przez szlachtę i narzeczoną za zdrajcę, postanawia się zrehabilitować. Pod przybranym nazwiskiem – Babinicz – bierze udział w obronie Jasnej Góry, własną piersią osłania króla Jana Kazimierza przed wrogami i bohatersko walczy z nieprzyjacielem do zakończenia wojny.',
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
'Wojna o pieniądz',
'Skąd się biorą kryzysy finansowe? Aby odpowiedzieć na to pytanie, trzeba postawić kilka innych. Kto kontroluje emisję waluty? Kto zyskuje na inflacji? Komu zależy na drukowaniu papierowego pieniądza bez pokrycia w złocie? Kto pragnie uzależniać ludzi od kredytów? Do kogo należy amerykańska Rezerwa Federalna?',
'Skąd się biorą kryzysy finansowe? Aby odpowiedzieć na to pytanie, trzeba postawić kilka innych. Kto kontroluje emisję waluty? Kto zyskuje na inflacji? Komu zależy na drukowaniu papierowego pieniądza bez pokrycia w złocie? Kto pragnie uzależniać ludzi od kredytów? Do kogo należy amerykańska Rezerwa Federalna? Po co stworzono Międzynarodowy Fundusz Walutowy? A przede wszystkim: w jaki sposób prowadzona jest globalna wojna o pieniądz? Song Hongbing, chiński analityk finansowy, stara się odpowiedzieć na te pytania, spoglądając na świat zachodni z zewnątrz i usiłując dociec, w którym momencie ta dynamicznie rozwijająca się cywilizacja popełniła błąd, który doprowadził do dzisiejszego permanentnego kryzysu i rosnącego zadłużenia.',
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
'Marszałkowska 82',
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
'Floriańska 34',
'Kraków',
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
'Długa 38',
'Gdańsk',
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
'Złota 89',
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
'Słoneczna 31',
'Rzeszów',
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
'Wrocław',
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
'Białystok',
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
'Wesoła 43',
'Poznań',
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
false,
true,
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
true,
true,
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
true,
false,
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
false,
true,
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
false,
true,
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
'Sprzątaczka',
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
'Operator wózka widłowego',
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
'Księgolandia',
'Książkopol',
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
'Powieść dla dzieci',
'To kategoria, w skład której wchodzą najlepsze bajki i opowieści dla dzieci'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (2,
'Fantasy',
'To gatunek literacki lub filmowy używający magicznych i innych nadprzyrodzonych form, motywów, jako pierwszorzędnego składnika fabuły, myśli przewodniej, czasu, miejsca akcji, postaci i okoliczności zdarzeń'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (3,
'Literatura faktu',
'W literaturze faktu obiektem zainteresowania autorów są autentyczne wydarzenia. Ten gatunek literacki obejmuje nie tylko reportaże, ale i książki, w których literaci podejmują próbę opisania zastanej rzeczywistości'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (4,
'Powieść historyczna',
'To odmiana powieści o tematyce historycznej, łącząca materiał historyczny z fikcją, mieszająca postacie fikcyjne z historycznymi'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (5,
'Kryminał',
'To odmiana powieści charakteryzująca się fabułą zorganizowaną wokół zbrodni, okoliczności dojścia do niej, dochodzenia oraz ujawnienia osoby sprawcy.'
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

