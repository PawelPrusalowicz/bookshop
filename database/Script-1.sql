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
'Moja Ksi¹¿ka',
'Wydawnictwo "Moja Ksi¹¿ka"',
'Wydawnictwo "Moja Ksi¹¿ka"',
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
'Œwiat Ksi¹¿ki',
'Wydawnictwo "Œwiat Ksi¹¿ki"',
'Wydawnictwo "Œwiat Ksi¹¿ki"',
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
'I nie bylo ju¿ nikogo',
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
'Harry Potter i Kamieñ Filozoficzny',
'Powieœæ jest osadzona w fikcyjnym œwiecie magii. Jej g³ównym bohaterem jest jedenastoletni Harry Potter, który dowiaduje siê, ¿e jest czarodziejem.',
'Powieœæ jest osadzona w fikcyjnym œwiecie magii. Jej g³ównym bohaterem jest jedenastoletni Harry Potter, który dowiaduje siê, ¿e jest czarodziejem. Ch³opiec rozpoczyna naukê w szkole magii Hogwart, gdzie zaprzyjaŸnia siê z Ronem Weasleyem i Hermion¹ Granger. Bohaterowie odkrywaj¹, ¿e w szkole ukryto kamieñ filozoficzny, maj¹cy moc zapewnienia d³ugowiecznoœci. Przyjaciele usi³uj¹ powstrzymaæ czarnoksiê¿nika Lorda Voldemorta, który przed laty zamordowa³ rodziców Harry’ego, przed zdobyciem kamienia.',
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
'Ch³opcy z Placu Broni',
'Ksi¹¿ka pt. "Ch³opcy z Placu Broni" jest autorstwa Ferenca Molnara. Ca³a akcja rozgrywa siê w Budapeszcie, stolicy Wêgier we wiosnê 1889 roku. Ksi¹¿ka opowiada o 2 grupach ch³opców - z Placu Broni oraz Czerwonoskórych',
'W Budapeszcie, na jednym z placów przeznaczonych pod zabudowê swoje ulubione miejsce zabaw ma grupa ch³opców. Nazwali siebie Ch³opcami z Placu Broni. Przewodzi im Janosz Boka. Rywalizuje z nimi inna grupa ch³opców - Czerwonoskórzy. Okazuje siê, ¿e trzeba bêdzie stoczyæ bitwê o ukochany plac. Zarówno w tej bitwie jak i przed ni¹ odznacza siê zw³aszcza jeden z Ch³opców w Placu Broni - Ernest Nemeczek. Najpierw wyprawia siê do Ogrodu Botanicznego, gdzie Czerwonoskórzy maj¹ swoj¹ siedzibê i dowiaduje siê, ¿e nale¿¹cy do ich grupy Gereb, zdradzi³. Zostaje za to sk¹pany w stawie i ciê¿ko choruje. Mimo to w dzieñ bitwy pojawia siê na Placu, by go broniæ',
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
'G³ównym bohaterem powieœci jest m³ody chor¹¿y orszañski Andrzej Kmicic, który przybywa na Laudê, aby zgodnie z testamentem Herakliusza Billewicza poœlubiæ jego wnuczkê Aleksandrê Billewiczównê. W tym te¿ momencie rozpoczyna siê powieœæ. Akcja przedstawia okres z lat 1655–1657',
'Zarêczony z Oleñk¹ Billewiczówn¹ chor¹¿y Andrzej Kmicic opowiada siê pocz¹tkowo po stronie Radziwi³³ów – potê¿nego rodu magnackiego wspieraj¹cego Szwedów w ich najeŸdzie na Rzeczpospolit¹. Uznany przez szlachtê i narzeczon¹ za zdrajcê, postanawia siê zrehabilitowaæ. Pod przybranym nazwiskiem – Babinicz – bierze udzia³ w obronie Jasnej Góry, w³asn¹ piersi¹ os³ania króla Jana Kazimierza przed wrogami i bohatersko walczy z nieprzyjacielem do zakoñczenia wojny.',
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
'Wojna o pieni¹dz',
'Sk¹d siê bior¹ kryzysy finansowe? Aby odpowiedzieæ na to pytanie, trzeba postawiæ kilka innych. Kto kontroluje emisjê waluty? Kto zyskuje na inflacji? Komu zale¿y na drukowaniu papierowego pieni¹dza bez pokrycia w z³ocie? Kto pragnie uzale¿niaæ ludzi od kredytów? Do kogo nale¿y amerykañska Rezerwa Federalna?',
'Sk¹d siê bior¹ kryzysy finansowe? Aby odpowiedzieæ na to pytanie, trzeba postawiæ kilka innych. Kto kontroluje emisjê waluty? Kto zyskuje na inflacji? Komu zale¿y na drukowaniu papierowego pieni¹dza bez pokrycia w z³ocie? Kto pragnie uzale¿niaæ ludzi od kredytów? Do kogo nale¿y amerykañska Rezerwa Federalna? Po co stworzono Miêdzynarodowy Fundusz Walutowy? A przede wszystkim: w jaki sposób prowadzona jest globalna wojna o pieni¹dz? Song Hongbing, chiñski analityk finansowy, stara siê odpowiedzieæ na te pytania, spogl¹daj¹c na œwiat zachodni z zewn¹trz i usi³uj¹c dociec, w którym momencie ta dynamicznie rozwijaj¹ca siê cywilizacja pope³ni³a b³¹d, który doprowadzi³ do dzisiejszego permanentnego kryzysu i rosn¹cego zad³u¿enia.',
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
'Marsza³kowska 82',
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
'Floriañska 34',
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
'D³uga 38',
'Gdañsk',
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
'Z³ota 89',
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
'S³oneczna 31',
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
'Wroc³aw',
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
'Bia³ystok',
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
'Weso³a 43',
'Poznañ',
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
'Sprz¹taczka',
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
'Operator wózka wid³owego',
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
'Ksiêgolandia',
'Ksi¹¿kopol',
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
'Powieœæ dla dzieci',
'To kategoria, w sk³ad której wchodz¹ najlepsze bajki i opowieœci dla dzieci'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (2,
'Fantasy',
'To gatunek literacki lub filmowy u¿ywaj¹cy magicznych i innych nadprzyrodzonych form, motywów, jako pierwszorzêdnego sk³adnika fabu³y, myœli przewodniej, czasu, miejsca akcji, postaci i okolicznoœci zdarzeñ'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (3,
'Literatura faktu',
'W literaturze faktu obiektem zainteresowania autorów s¹ autentyczne wydarzenia. Ten gatunek literacki obejmuje nie tylko reporta¿e, ale i ksi¹¿ki, w których literaci podejmuj¹ próbê opisania zastanej rzeczywistoœci'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (4,
'Powieœæ historyczna',
'To odmiana powieœci o tematyce historycznej, ³¹cz¹ca materia³ historyczny z fikcj¹, mieszaj¹ca postacie fikcyjne z historycznymi'
);

insert
	into
	genres (
genre_id,
	name,
	description)
values (5,
'Krymina³',
'To odmiana powieœci charakteryzuj¹ca siê fabu³¹ zorganizowan¹ wokó³ zbrodni, okolicznoœci dojœcia do niej, dochodzenia oraz ujawnienia osoby sprawcy.'
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








