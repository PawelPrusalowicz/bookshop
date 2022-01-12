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
now(),
1
);