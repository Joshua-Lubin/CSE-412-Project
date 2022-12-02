--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Category" (
    "categoryName" text,
    link text
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- Name: Menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menu" (
    "menuId" text,
    "menuName" text
);


ALTER TABLE public."Menu" OWNER TO postgres;

--
-- Name: MenuItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuItem" (
    "menuItemName" text,
    "menuItemDescription" text,
    price double precision,
    "menuItemId" text
);


ALTER TABLE public."MenuItem" OWNER TO postgres;

--
-- Name: MenuSection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuSection" (
    "menuSectionName" text,
    "menuSectionDescription" text,
    "menuSectionId" text
);


ALTER TABLE public."MenuSection" OWNER TO postgres;

--
-- Name: MenuSectionToMenuItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuSectionToMenuItem" (
    "menuItemId" text,
    "menuSectionId" text
);


ALTER TABLE public."MenuSectionToMenuItem" OWNER TO postgres;

--
-- Name: MenuToMenuSection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuToMenuSection" (
    "menuId" text,
    "menuSectionId" text
);


ALTER TABLE public."MenuToMenuSection" OWNER TO postgres;

--
-- Name: Restaurant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Restaurant" (
    "phoneNumber" text,
    "restaurantName" text,
    rating double precision,
    address text
);


ALTER TABLE public."Restaurant" OWNER TO postgres;

--
-- Name: RestaurantToCategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RestaurantToCategory" (
    "categoryName" text,
    "restaurantName" text
);


ALTER TABLE public."RestaurantToCategory" OWNER TO postgres;

--
-- Name: RestaurantToMenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RestaurantToMenu" (
    "restaurantName" text,
    "menuId" text
);


ALTER TABLE public."RestaurantToMenu" OWNER TO postgres;

--
-- Name: RestaurantToReview; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RestaurantToReview" (
    "reviewId" text,
    "restaurantName" text
);


ALTER TABLE public."RestaurantToReview" OWNER TO postgres;

--
-- Name: Review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Review" (
    text text,
    reviewer text,
    "reviewId" text
);


ALTER TABLE public."Review" OWNER TO postgres;

--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" ("categoryName", link) FROM stdin;
Family Friendly	\N
Sushi	/category/phoenix-az/sushi
Sandwiches	\N
Sandwich	/category/phoenix-az/sandwich
Pasta	/category/phoenix-az/pasta
Group Friendly	\N
Mexican	/category/phoenix-az/mexican
Family Meals	/category/phoenix-az/family-meals
Healthy	/category/phoenix-az/healthy
Fast Food	/category/phoenix-az/fast-food
Wings	/category/phoenix-az/wings
Comfort Food	/category/phoenix-az/comfort-food
Steak	\N
Salads	/category/phoenix-az/salad
American	/category/phoenix-az/american
Asian	/category/phoenix-az/asian
Pizza	/category/phoenix-az/pizza
wings	\N
Japanese	/category/phoenix-az/japanese
Italian	/category/phoenix-az/italian
Tacos	\N
Burgers	/category/phoenix-az/burger
\.


--
-- Data for Name: Menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Menu" ("menuId", "menuName") FROM stdin;
e5468e08-24d6-5867-985d-0fd38b7bf58a	Main Menu
a81b6caa-cffa-54a1-b556-51aed94bac1e	Main Menu
a47fc313-8938-5525-911c-e7917347c273	Main Menu
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	Main Menu
5a52e241-5877-595f-ac33-6ec5fa96b6ce	Main Menu
23b37dd2-760c-54c9-a675-bc5d907d9875	Main Menu
54371d2f-1c83-494c-bea0-7abaf9319e6b	Main Menu
\.


--
-- Data for Name: MenuItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MenuItem" ("menuItemName", "menuItemDescription", price, "menuItemId") FROM stdin;
2 for $25 (Price may vary by location or selection.)	Two Entrees + One Appetizer\n(For menu item descriptions, please see the regular menu item)	30.09	96fd41ee-7043-5a28-8cb3-67a8fefbbcea
Triple Chocolate Meltdownr	Warm, rich, fudge-filled chocolate cake is drizzled with hot fudge. Served with vanilla ice cream.	9.59	1228fed5-994c-5f41-a02b-747293447628
Blackened Cajun Salmon	6 oz. blackened salmon fillet grilled to perfection. Served with garlic mashed potatoes and steamed broccoli.	21.59	7dd8a66c-1b24-59e7-981c-9d6db7158c0b
Sizzlin' Cheddar & Bacon Chicken Skillet	Sliced grilled chicken breast with melted Cheddar cheese, Applewood-smoked bacon and garlic mashed potatoes, topped with a rich Parmesan cream sauce. Paired with steamed broccoli and served sizzling to the table.	16.19	0960fea5-4194-5125-a357-3257ed6bbf2b
NEW Garlic Parmesan Chicken Skillet		16.19	ab565305-0fd9-5df0-9e14-75fe382a7d22
Bourbon Street Chicken & Shrimp	Let the good times roll with Cajun-seasoned chicken and blackened shrimp in buttery garlic and parsley served sizzling on a cast iron platter with saut‚ed mushrooms and onions. Served with garlic mashed potatoes.	20.39	5f3617a1-eff9-5338-a1f2-1ae6e95c85c1
Bourbon Street Steak*	Big flavor from New Orleans. A grilled 8 oz. USDA Select Top Sirloin* is jazzed up with Cajun spices and garlic butter served sizzling on a cast iron platter with saut‚ed mushrooms and onions. Served with garlic mashed potatoes.	23.99	97debfc7-9793-540a-a39b-40420d364e0e
Brew Pub Loaded Waffle Fries	Load up on fries and flavor with our crispy waffle fries topped with a blend of melted Cheddar cheeses, BLUE MOONr white Cheddar beer cheese and crispy Applewood-smoked bacon. Served with house-made buttermilk ranch dressing.	11.99	7a888c46-730f-54c8-8972-860e995843d5
Crispy Cheese Bites	Golden, crispy and melty cheese bites, these favorites are served with house-made buttermilk ranch and firecracker mayo for dipping.	11.99	0c8145c2-ff6a-5ddc-8838-d05bc4f9de13
The Classic Combo	All the classic apps you love - Boneless Wings, Spinach & Artichoke Dip, Chicken Quesadilla, and Mozzarella Sticks.	21.59	3c0961c5-6311-5255-a683-76e85f9aedcd
Breadsticks with Alfredo Sauce	Five golden brown signature breadsticks brushed with buttery garlic and parsley. Served with creamy Alfredo sauce for dipping.	8.39	303e9e8a-8abc-5d02-8033-5e24eb381a42
Neighborhood Nachos Chipotle Lime Chicken	Freshly made white corn tortilla chips are topped with grilled chicken, queso blanco, a blend of melted Cheddar cheeses, house-made pico de gallo, fresh jalape¤os, chopped cilantro, sour cream and guacamole.	16.79	5c2a19fa-0904-5047-850c-f17ce909ba67
Neighborhood Nachos Beef	Freshly made white corn tortilla chips are topped with taco-seasoned ground beef, queso blanco, a blend of melted Cheddar cheeses, house-made pico de gallo, fresh jalape¤os, chopped cilantro, sour cream and guacamole.	16.79	ce1e1e75-c7b9-50a9-b3e0-b613a7325cc0
White Queso Dip & Chips	Melty white queso served with freshly made white corn tortilla chips.	9.59	45ef74ca-36b7-591b-9d47-c054f90d8fac
Chicken Quesadilla	Warm, grilled tortillas are loaded with chipotle lime chicken, house-made pico de gallo and a blend of melted Cheddar cheeses. Served with our chipotle lime salsa and sour cream.	14.39	f57f4bbb-9258-54ad-97d6-273f0b5896d7
Spinach & Artichoke Dip	Creamy spinach and artichoke dip topped with Parmesan cheese.  Served with freshly made white corn tortilla chips and our chipotle lime salsa.	11.99	15f742c6-bc48-553b-9a1f-4b4ec1162808
Chicken Wonton Tacos	Sweet Asian chile marinated grilled chicken stuffed into crispy wonton shells topped with our signature coleslaw and cilantro.	13.19	69485b69-1468-5c87-92d6-bff5a4c9dd18
Boneless Wings	Crispy breaded pieces of tender boneless chicken tossed in your choice of sauce. Served with Bleu cheese or house-made ranch dressing with real buttermilk.	15.59	1d3ae392-e192-5009-a0ce-183efffbf59d
Double Crunch Bone-in Wings	Twice battered and fried, these crisp outside, tender inside wings are tossed in your choice of sauce.  Served with Bleu cheese or house-made ranch dressing with real buttermilk.	19.19	683da624-dd3f-54c8-9c65-12c073ad50f9
Brew Pub Pretzels & Beer Cheese Dip	Soft, Bavarian-style pretzel sticks are ready to dip in BLUE MOONr white Cheddar beer cheese and honey Dijon mustard.	11.99	7eb1d279-3e7c-5c06-9035-528934088f3b
Mozzarella Sticks	Crispy outside with melty Mozzarella inside, this favorite is served with marinara sauce.	11.99	ffe160e0-722a-5453-865f-dc9818406e6e
Soups & Salads	Choose a soup or salad	7.19	c2b601e4-a492-5be2-a37d-982feded1fd9
8 oz. Top Sirloin*	Lightly seasoned USDA Select top sirloin* cooked to perfection and served hot off the grill. Served with garlic mashed potatoes and steamed broccoli.	22.79	a37c4db0-6daa-5a7b-b3e4-cbcf7262342d
6 oz. Top Sirloin*	Lightly seasoned USDA Select Top Sirloin* cooked to perfection and served hot off the grill.  Served with garlic mashed potatoes and steamed broccoli.	20.39	89e2664f-16c0-542e-8fbb-a1eb9fe6370c
Double-Glazed Baby Back Ribs	Full Rack.  Slow-cooked to fall off the bone tenderness. Slathered with your choice of sauce.	27.59	7599a26f-a270-5704-a45a-d699f1463c6e
Bourbon Street Steak*	Big flavor from New Orleans. A grilled 8 oz. USDA Select Top Sirloin* is jazzed up with Cajun spices and garlic butter served sizzling on a cast iron platter with saut‚ed mushrooms and onions. Served with garlic mashed potatoes.	23.99	bdbcae4c-f8a4-5a4b-82e0-180251f74449
Half Rack Double-Glazed Baby Back Ribs	Half Rack.  Slow-cooked to fall off the bone tenderness. Slathered with your choice of sauce.	21.59	92e1a1e4-f085-5ddf-a7d7-66fa0be9bf8d
Shrimp 'N Parmesan Sirloin*	A popular take on surf 'n turf, this dish starts with a tender grilled 8 oz. USDA Select top sirloin* and is topped with saut‚ed blackened shrimp and our creamy lemon butter Parmesan sauce. Served with garlic mashed potatoes and steamed broccoli.	26.39	3021827c-2546-50bd-b18b-8ced206d484e
Applebee'sr Riblets Plate	Smaller portion of the Applebee'sr Riblets Platter. Our famous slow cooked riblets, slathered in your choice of sauce.	16.79	00e01911-ab3f-5dc1-a9e8-87e8c4d7dc64
Burrito Bowl	Your choice of freshly grilled meat or sofritas served in a delicious bowl with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.	11.85	d7894be9-fffd-5a92-8bdc-d9c21d7d2d87
Burrito	Your choice of freshly grilled meat or sofritas wrapped in a warm flour tortilla with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.	11.85	cd5ba78e-58a0-53a2-82e4-a70ce1beb832
Chips & Guacamole		5.85	19110b3b-1c26-5e5b-9de7-002e97878598
Quesadilla	Cheese in a Flour Tortilla with your choice of meat, sofritas or fajita veggies and three included sides.	12.55	0919f3c8-3390-54a5-8e70-a00d9c5be545
Large Chips & Large Queso Blanco		10.4	3a03a7d0-9eaf-5b1e-a6be-1a1dff89216e
Burrito	Your choice of freshly grilled meat or sofritas wrapped in a warm flour tortilla with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.	11.85	cd5ba78e-58a0-53a2-82e4-a70ce1beb832
Burrito Bowl	Your choice of freshly grilled meat or sofritas served in a delicious bowl with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.	11.85	d7894be9-fffd-5a92-8bdc-d9c21d7d2d87
Quesadilla	Cheese in a Flour Tortilla with your choice of meat, sofritas or fajita veggies and three included sides.	12.55	0919f3c8-3390-54a5-8e70-a00d9c5be545
Salad	Your choice of meat or sofritas served with our fresh supergreens lettuce blend made of Romaine, Baby Kale, and Baby Spinach. Add beans, queso blanco, salsa, guacamole, sour cream or cheese and top it off with our signature Chipotle-Honey Vinaigrette.	11.85	4be675c9-1c20-5937-8d4c-fa4611b1176f
Three Tacos	Tacos	11.85	b890dc6c-b776-5d45-855c-bdb9f25bb042
One Taco	Taco	4.3	05ed8bf3-3d4d-57ad-8b09-95bcefe25fee
Kid's Build Your Own	Your choice of meat, guacamole or queso, and two toppings to go with a pair of crispy corn or soft flour Tortillas.Includes fruit or kid's chips and organic juice or milk.	7.2	b5200025-040a-556e-a0da-3ff5b8af65c8
Kid's Quesadilla	With a side of rice and beans. Includes fruit or kid's chips and organic juice or milk.	5.8	460e92b0-3022-5e9b-a92d-ae753759a525
Whole30r Salad Bowl	NEW Garlic Guajillo Steak, Supergreens Lettuce Blend, Fajita Veggies, Fresh Tomato Salsa and Guacamole	19.85	8a297e9e-9d43-51a4-b5d1-4ec78a233e36
Whole30r Salad Bowl	Supergreens Lettuce Blend, Chicken, Fajita Veggies, Fresh Tomato Salsa and Guacamole	15.3	409e3681-3290-5ff1-8f92-fdc0df9a00ee
Whole30r Salad Bowl	Supergreens Lettuce Blend, Carnitas, Fajita Veggies, Fresh Tomato Salsa and Guacamole	16.15	cdb672ca-e291-55e0-a5fe-29db9786733c
Keto Salad Bowl	Supergreens Lettuce Blend, Chicken, Fresh Tomato Salsa, Cheese and Guacamole	15.3	073e9fe3-cbc9-5228-bd9e-ca86483bdbdb
Keto Salad Bowl	Supergreens Lettuce Blend, Steak, Tomatillo-Red Chili Salsa, Cheese and Guacamole	17.55	4c4cb3c7-ab6e-5844-9e7a-485fcce8f7cf
High Protein Bowl	White Rice, Chicken, Steak, Black Beans, Tomatillo-Red Chili Salsa, Cheese and Shredded Romaine Lettuce	18.6	5d99668e-516a-5473-97b6-99735f991add
Paleo Salad Bowl	Supergreens Lettuce Blend, Chicken, Fajita Veggies, Tomatillo-Green Chili Salsa and Guacamole	15.3	9c2c0624-d6ca-5816-b598-4497e12d7b23
Vegetarian Salad Bowl	Supergreens Lettuce Blend, Brown Rice, Black Beans, Fajita Veggies, Fresh Tomato Salsa, and Guacamole	11.85	201e044c-9b73-54be-8d81-8f6be0786597
Vegan Bowl	Sofritas, Brown Rice, Black Beans, Fresh Tomato Salsa, Roasted Chili-Corn Salsa, and Shredded Romaine Lettuce	11.85	75f7f91a-54f0-5f3d-a20b-971c29ba4d35
Chips		2.4	cc4e28fc-8757-587a-b5ae-2b058b44a8ba
Chips & Guacamole		5.85	19110b3b-1c26-5e5b-9de7-002e97878598
Chips & Queso Blanco		5.85	8bdcef92-0221-50d2-a9ba-880c8a3d5edc
Large Chips & Large Guacamole		10.4	55fa1a5e-5261-5049-84d9-18d133075e0e
Side of Guacamole		3.45	075501b2-6a74-5b9f-b90a-abf3e1120838
Large Chips & Large Queso Blanco		10.4	3a03a7d0-9eaf-5b1e-a6be-1a1dff89216e
Chips & Fresh Tomato Salsa		3	d776de59-3055-5d9e-920b-1eb5c6117fa5
Chips & Tomatillo-Red Chili Salsa		3	01e5163e-b28d-583b-814c-71f52a060588
Chips & Tomatillo-Green Chili Salsa		3	020be16c-691f-5222-b3a2-cdc7bcccbc19
Chips & Roasted Chili-Corn Salsa		3	9c4c62d5-8316-5362-a942-75d298c99f0a
Large Side of Guacamole		6.9	d80bc78c-383b-5b2a-b7d5-7ddef6a743cb
Side of Queso Blanco		3.45	2181a2b2-3155-5f0f-a239-72370e388f79
Large Side of Queso Blanco		6.9	21183932-be85-5360-af6f-0bfb673fada9
Tortilla on the Side		0.65	f56b1133-d90c-552b-b280-5837cff99c9e
Mexican Coca-Cola		4.1	5c26a2fc-f08b-58a2-b0f2-0a56735a7419
Blackberry Izze		4.25	9ec857e3-4a0e-5b3b-bdcd-1416ce3946ff
Grapefruit Izze		4.25	ae347c2d-fb4e-50da-bbe1-78c986e0ee9a
Apple Juice		4.25	6cd93ae7-81f3-58e6-8262-6bc74b362796
Pineapple Orange Banana Juice		4.25	70761a7c-f6f4-56fa-8bcf-e6092cb8a9b6
Peach Orange Juice		4.25	446eb5b7-bdee-5121-8d9d-21ff8a2662c8
San Pellegrino Sparklingÿ		3.7	79ae1c72-032f-5a58-b18c-9223678c61f9
Tractor Organic Black Tea		4.15	bb86e174-eb6b-57a3-a7e2-66e104e44d8f
Tractor Organic Lemonade		4.15	f27ac13f-6fb3-5c1d-afe3-95c4fa765b65
Bottled Water		3.75	1075e2dc-3a7a-50ad-b156-026697e03e0d
Mexican Sprite		4.1	92a5105d-3ef5-5b2f-b842-f73e12763807
The Del Taco	The Del Taco is inspired by the original and loaded with more of everything you love, like more seasoned beef, fresh house-grated cheddar cheese, crisp shredded lettuce and fresh diced tomatoes in a bigger, crunchy corn shell or a warm flour tortilla.	2.29	ab8e0744-bc7a-5f60-a744-be5e3d8920fe
Caramel Cheesecake Bites	Piping hot bundles of sweet cheesecake and gooey caramel, enveloped in a light crispy shell. Choose from 2 Pc. or 4 Pc.	4.89	a1fa6f62-468c-5374-bfa1-0c185d753825
Crinkle Cut Fries	They're famous for a reason! With all those golden, crispy curves they're the perfect side to a burger, taco, or burrito. Available in Small, Medium, and Macho.	3.29	b22a2a3d-9912-57b3-9c76-3c1e25640798
Chips & Queso (Regular-sized)	Signature creamy Queso Blanco served with fresh house-made tortilla chips.	3.79	dd30a961-46e1-58e7-87ed-4f08b2b73947
Cheddar Quesadilla	Fresh house-grated cheddar cheese, and tangy green sauce folded in a flour tortilla and flat-grilled to perfection.	4.89	e5d9c02e-cb91-5d77-88e3-1cacb5305910
Single Tamale	Celebrate the holiday season with our Tamale. Filled with seasoned shredded pork, fire roasted salsa, stone ground corn masa and individually hand wrapped the authentic way with real corn husk. \n\nAvailable for a limited time only, 10AM - 10PM.	3.69	e333cdca-dc0c-57bc-a62b-0ae984f17c67
Tamales - 2 Pack	Enjoy two of our seasoned shredded pork tamales. Filled with seasoned shredded pork, fire roasted salsa, stone ground corn masa and individually hand wrapped the authentic way with real corn husk. \n\nAvailable for a limited time only, 10AM - 10PM.	6.29	39b29693-29d6-5c35-8fa6-28435b8f236b
Tamales - 4 Pack	Enjoy four of our seasoned shredded pork tamales. Filled with shredded seasoned pork, fire roasted salsa, stone ground corn masa and individually hand wrapped the authentic way with real corn husk. \n\nAvailable for a limited time only, 10AM - 10PM.	12.59	aa14d523-2b8e-5fa4-b68d-3aef3323197e
Smothered Tamales	Two shredded seasoned pork tamales topped with your choice of zesty red and tangy green sauce, sour cream and chopped cilantro or beef chili, fresh house-grated cheddar cheese and cool sour cream. \n\nAvailable for a limited time only, 10AM - 10PM.	8.19	18ad47a3-0e94-54de-a4f3-0163add03b81
Chicken Taco Del Carbon	Freshly grilled, marinated chicken, topped with fresh diced onions, chopped cilantro, and tangy green sauce, wrapped in a warm corn tortilla.	1.89	123c694c-9813-5c46-bb06-97c4e1e22a54
Brooklyn Pie	Pepperoni, sausage and fresh basil - our pie of choice.	12.64	f7256940-90b0-5bb9-b513-a8d559432cc9
Traditional Wings		9.76	f1a8d9bc-01cc-5e56-bc8c-f2f5be62f694
Create Your Own Pizza 18"		25.29	abbbbcc3-34f6-58b1-804a-7658572807d0
Create Your Own Pizza 14"		18.39	ada4899d-1521-5b82-adc6-17f5209a930d
Da Works Pie	Pepperoni, green peppers, onions, olives, mushrooms, sausage and Roma tomatoes. Take our advice, ask for it crispy!	13.79	e09e9347-3578-5dc6-b1fa-2d074ad52d1c
Garlic Cheese Knots	Freshly baked with bubbly, melted golden mozzarella and brushed with garlic, sesame and Romano cheese. Served with marinara sauce.	6.89	3cbe1858-9fc0-5531-9acd-d23a602f2595
Broadway Bruschetta	Chopped tomatoes, fresh basil, red onions, fresh garlic and olive oil. Served with crustettes and topped with shaved asiago cheese.	6.31	9289fdc3-bcb7-50d4-93bc-1c2dea7b6960
Crispy Zucchini	Fresh zucchini slices tossed in panko, garnished with romano cheese and seasonings, and served with marinara or ranch dressing.	6.89	09490203-741d-5366-820e-eb122124ff90
Garlic Knots	Freshly baked and brushed with garlic, sesame and Romano cheese. Served with marinara sauce.	5.74	e906b2d5-1cae-59d2-9d0c-302c0b44858c
Side of Alfredo		2.29	0750ca0a-a13a-5f30-83c6-6fe203eca2c6
Crispy Fresh Mozzarella	Fresh mozzarella hand dipped in panko and lightly fried to golden brown perfection. Served with a side of marinara sauce and a fresh basil balsamic reduction.	10.91	af6d6957-a663-5301-bf30-f445dfbf6f00
French Fries	A delicious serving of crispy fries, lightly seasoned with salt & pepper.ÿ	4.59	24edf384-8e6f-5b68-8e5d-a2ada84fdee2
Boneless Wings		8.04	d41290a4-5e86-5684-b81f-082dea7b80c8
Traditional Wings		9.76	f1a8d9bc-01cc-5e56-bc8c-f2f5be62f694
Chelsea Chopped	Mixed chopped greens, Gorgonzola cheese, sun dried tomatoes, sliced almonds, bacon, cucumbers and NYPD's own blend of its house and ranch dressings.	10.34	c10e1624-9360-53be-ad01-07b82e78727b
Tossed Antipasto	Salami, capicola ham, provolone, marinated mushrooms, artichokes, mild peppers, red peppers, onions, olives, and lettuce tossed with house dressing.	10.34	48d152bb-fcc9-5e69-a76e-a18cb163278d
Soho Salad pizza	Served on a "pizza crisp" topped with mixed baby greens, bruschetta, almonds and feta with NYPD's own blend of its house and ranch dressings.	10.34	457bd428-0b1b-58b5-adeb-97eb59cc4ff4
House Salad	Mixed greens topped with tomatoes, cucumbers and homemade croutons.	7.46	48dd21fd-1e20-57f2-ac20-c1ee4863d764
Caesar Salad	Fresh romaine, homemade croutons and Romano, tossed in creamy Caesar dressing and topped with asiago cheese.	7.46	eeef4e20-148e-5d31-9773-1338948216be
Chicken Caesar Salad		9.76	3fa7ea27-47d2-5fdd-9a88-829b6ebdeabe
Greek salad	Mixed greens topped with feta, red onions, kalamata olives, green peppers, pepperoncini, cucumbers and tomatoes tossed with house dressing.	9.19	1f13175a-d52e-5898-8606-8f5f28c51b46
Spinach Salad	Fresh spinach, bacon, red onion, mushrooms, sliced almonds and smoked mozzarella tossed with NYPD's own blend of house and ranch dressings.	9.19	940bbd49-9604-5a57-8f55-0d12d6690dfd
Crispy Chicken Spinach	Crispy sliced chicken and smoked mozzarella tops our classic Spinach Salad tossed with NYPD's own blend of its house and ranch dressings.	11.49	68db1ab7-3164-56fc-9dd9-971ceb470ab1
Buffalo Chicken Caesar	Crispy sliced chicken tossed in a mild buffalo sauce over a traditional Caesar complemented with Gorgonzola & asiago cheeses.	10.34	d1e8e947-781b-55dc-adb5-bda6941afd37
Seasonal Salad	Ask for this season's selection.	8.61	d42a1ae0-be42-5712-8601-25083710a219
Create Your Own Pizza 8"		10.34	86ee80c5-8359-5058-ac2d-c199325e04cb
Create Your Own Pizza 14"		18.39	ada4899d-1521-5b82-adc6-17f5209a930d
Create Your Own Pizza 16"		22.99	9da4a0e4-2734-5ec4-bb75-e9a75e3d435f
Create Your Own Pizza 18"		25.29	abbbbcc3-34f6-58b1-804a-7658572807d0
Brooklyn Pie	Pepperoni, sausage and fresh basil - our pie of choice.	12.64	f7256940-90b0-5bb9-b513-a8d559432cc9
Kahuna Pie	Ham, pineapple and fresh basil. Hana hou!	12.64	1f9b8cf8-249a-5f3e-98b7-72fb2d354887
Pizza Blanca Pie	Olive oil, crushed garlic, ricotta and mozzarella with your choice of fresh spinach or Roma tomatoes.	12.06	94c62829-9885-5afe-92fb-23f04b38e9b8
Pizza Bruschetta Pie	This white pie features olive oil, crushed garlic, ricotta, mozzarella, asiago, fresh basil and our homemade bruschetta.	12.06	5d2df51a-a51c-528b-a65d-1c05344f2909
Frans Favorite Pie	Roma tomatoes, mushrooms and fresh basil. Take our advice, ask for it crispy!	12.06	22bb7577-d851-5fea-9b58-2c90de673bc3
Joey's Favorite Pie	Mushrooms, onions, peppers, olives and Roma tomatoes.Take our advice, ask for it crispy!	12.06	1c6ffb69-406b-5cab-9348-664f165abad7
BBQ Chicken Pie	Barbecue sauce, smoked mozzarella, chicken, sliced red onions and resh cilantro baked NY style.	12.64	73a3c86c-ad8d-51a4-be0f-c9fe88ab584b
Margherita Pie	Fresh mozzarella, fresh basil, sliced Roma tomatoes and our homemade pizza sauce. Take our advice, ask for it crispy!	12.64	85714eb0-8d86-56a2-9061-c9c23f645ff1
Pesto Pie	Pesto topped with mozzarella and sliced Roma tomatoes.	12.06	c0ec0b30-ce61-50d4-9224-67b11b3d2e11
Pesto Chicken Pie	Pesto topped with sliced chicken breast, pesto and mozzarella.	12.64	f9f84eb4-c7e9-5f95-ba4b-20f8cc2075fd
Mott Street Pie	Pepperoni, sausage, meatballs - a taste that takes you right to Little Italy.	12.64	161fc9fe-2f95-5f0e-88cc-3cd511164b26
Da Works Pie	Pepperoni, green peppers, onions, olives, mushrooms, sausage and Roma tomatoes. Take our advice, ask for it crispy!	13.79	e09e9347-3578-5dc6-b1fa-2d074ad52d1c
Wall Street Pie	Pepperoni, sausage, bacon and mushrooms.	12.64	ae0d1735-6ccd-5297-8ebf-b2e09366bcbd
Buffalo Chicken Pie	Grilled chicken breast smothered in tangy upstate-style buffalo sauce, celery, gorgonzola and smoked mozzarella.	12.64	f9395813-25be-54ca-bdf8-806234fb18a2
Vinny's Pie	Any five toppings. Vinny always liked something a little different	13.79	bb4ff1b8-869f-5d10-87f8-647522bf533d
Quattro Formaggi Pie	Smoked mozzarella, asiago, and fresh and shredded mozzarellas. Take our advice, ask for it crispy!	12.64	e698c776-0111-5098-9997-60cc19a48bb2
Veganizza Pie	Our famous NYPD pizza topped with Daiya (vegan cheese), Roma tomatoes, fresh spinach, basil and garlic.	12.64	0f5f1177-9fa2-51b9-89b0-a03aacc20e8d
Gluten Free 12" Cheese Pie		18.39	3b2e5ec9-0680-56b5-aff8-96a1d241d3f1
Penne Ala Vodka	Sausage, onions and peppers sauteed in a creamy marinara sauce, tossed with penne pasta, basil, red peppers and asiago. Served with garlic knots.	18.39	e9bc1802-5c8d-58df-84b1-45f0d11193dc
Ziti	Oven baked penne pasta, marinara, ricotta and melted mozzarella. Topped with parsely, oregano & Romano and served with freshly baked garlic knots.	15.51	fc03bd9b-8d84-5ad4-a42c-746c2c6b9171
Spaghetti with Meatballs	Traditional confort food you'll really love! Topped with parsley, oregano & Romano and served with freshly baked garlic knots.	15.51	c4e006e5-851a-590f-b36c-27b2bb893a4a
Chicken Parmesan	Breaded chicken breasts smothered in marinara and melted mozzarella. Served with spaghetti and freshly baked garlic knots.	18.39	eeb7e9a4-feb9-5afa-b9f6-47d27aec274e
Lasagna	Layers of Italian sausage, sliced meatballs, ricotta and mozzarella cheese. Topped with parsley, oregano & Romano and served with garlic knots.	16.66	0d61c524-33ac-5497-a538-6dd05eec082d
Pasta of Your Choice	Penne or spaghetti with olive oil, marinara or alfredo sauce. Topped with parsley, oregano & Romano and served with garlic knots.	12.06	11fac108-a185-599a-a13e-cb1575feedbf
Side of Meatballs	Two huge, homemade meatballs served in marinara sauce.	4.01	b341cf64-3612-53dd-bc77-1beeefff447c
Traditional Cheese	A cheesy combination of seasoned ricotta and mozzarella wrapped in pizza dough and served with marinara sauce on the side.\n\nNote** This is only a cheese calzone.  If you would like toppings, please order a Frank Sinatra and choose your topping(s) accordingly!	8.61	5d96d878-8b06-5011-92ba-4f01767a4145
Frank Sinatra	A Cheese Calzone wtih your choice of up to three toppings. Served with marinara sauce on the side. * Note: Bacon, Chicken and Fresh Mozzarella count as double toppings.	10.91	60f57110-689d-50af-9016-8c1e13d5d62a
Al Capone	Sausage, pepperoni and onions combined with seasoned ricotta and mozzarella cheese. Served with marinara sauce on the side.	10.91	ec26731f-68dd-5204-9c9f-accc136d1319
Cookie and Cream	Choice of freshly baked Chocolate Chip, Oatmeal Raisin or Chocolate Peanut Butter cookie topped with vanilla bean ice cream, and your choice of sauce.	8.61	b512ed6a-13d5-5b33-bb74-0b51074aab99
Zeppolis	Nuggets of pizza dough fried and tossed in powdered sugar. Served with chocolate and raspberry sauces.	8.61	4e29092a-62f0-5628-bf57-f9f048742215
Zeppolis Sundae	Nuggets fo pizza dough fried and tossed with cinnamon sugar. Topped with vanilla ice cream, whipped cream, chocolate sauce and a cherry	9.19	2190bc45-7802-5a44-b7c3-1c0c9d98bb17
Limoncello	A slice of spongy, sweet lemon cake, layered with mascarpone and covered with creamy icing	8.04	9e657b90-cd34-5b7e-a2fc-0190a83fd23e
New York Cheesecake		8.04	c0491dc2-3f3d-5b43-86da-52f385ef1712
Pepsi		4.01	6b077fed-2f67-592a-95dc-de8ccf3f4649
Diet Pepsi		4.01	85997463-8ca1-5273-9221-160340c487ca
Sierra Mist		4.01	9b815875-d25b-5d0f-bdcc-1511477397b2
Orange Crush		4.01	98776c0f-0ec9-5fbc-99a1-96936fe3f10f
Gyoza Dumplings (4 pcs)	Served with a soy-based sauce.	4.29	64f338a3-5454-4bfe-9605-01a9095be25d
Teriyaki Chicken	Chargrilled chicken with teriyaki sauce. Bowl served over rice.	8.99	2f2c33c2-c01b-432f-8076-4bb2692bad85
Miso Soup (22 oz)	Wakame seaweed with tofu in a soothing soybean-based broth.	3.99	89219444-89e0-4f64-b447-477ddf0f3c5d
Panko Chicken	Chicken breaded in Japanese panko crumbs and fried. Bowl served over rice.	9.99	61e33e5c-345b-404f-9505-21871546e4da
Crab Puffs (3 pcs)	Crab and cream cheese fried in a crispy wonton wrapper. Served with blue fins orange sauce.	4.29	b491aed9-a8b6-4939-9120-14125d833947
Edamame	Healthy steamed soybean pods. Vegetarian.	4.29	77428671-89ac-455d-a043-4a07cf33de45
Gyoza Dumplings (4 pcs)	Served with a soy-based sauce.	4.29	64f338a3-5454-4bfe-9605-01a9095be25d
Crab Puffs (3 pcs)	Crab and cream cheese fried in a crispy wonton wrapper. Served with blue fins orange sauce.	4.29	b491aed9-a8b6-4939-9120-14125d833947
Tempura Shrimp (2 pcs)	Light and Japanese batter surrounding shrimp with a light soy-based sauce.	4.29	b6d2f244-f16b-41bf-81ec-d6b7a183b7e7
Mini Spring Rolls (3 pcs)	3 to an order.	2.49	897a0820-2b5f-4fc8-b516-2aed4714eb64
Chicken Egg Roll (single)	Egg roll filled with minced chicken and vegetables, served with house made sweet and sour sauce	2.49	ddbf0b60-aae7-4a39-b2c3-8f73fa0251da
Vegetable Egg Roll (single)	Fried egg roll filled with mixed vegetables, served with house made sweet and sour	2.49	4b33da34-53ee-4336-9363-63f4d84cb478
Sunomono Cucumber Salad (4 oz)	Thinly sliced cucumbers in a refreshing marinade. Salad sprinkled with sesame seeds. Vegetarian.	2.79	dac34536-ef4e-4884-8a75-8280b8cd4a3f
Seaweed Salad (4 oz)	Crunchy assorted seaweed with sesame seeds and chili powder. Salad sprinkled with sesame seeds. Vegetarian.	3.29	798f81b6-2dcb-4f8c-a651-0f66715387b1
Side Green Salad	Lettuce with carrots and red cabbage. Served with dressing. Salad sprinkled with sesame seeds. Vegetarian.	2.79	f6883009-33f3-4f04-969a-61dd9655b38c
Tofu Salad with Avocado	Tofu and fresh avocado served on top of lettuce with carrots and red cabbage. Served with dressing. Salad sprinkled with sesame seeds. Vegetarian.	8.99	fa7e3559-9e82-4adf-b64a-028659b07413
Char-Grilled Chicken Salad	Sliced char-grilled white chicken (cold). Served on top of lettuce with carrots and red cabbage. Salad sprinkled with sesame seeds. Served with dressing.	8.99	b961825b-9366-44f7-88f3-2be155a64464
Crab Salad with Avocado	Crab and fresh avocado. Served on top of lettuce with carrots and red cabbage. Salad sprinkled with sesame seeds. Served with dressing.	9.59	eb5bb2cb-b3dd-490c-8c10-d7317b970a0c
Miso Soup (22 oz)	Wakame seaweed with tofu in a soothing soybean-based broth.	3.99	89219444-89e0-4f64-b447-477ddf0f3c5d
Teriyaki Chicken	Chargrilled chicken with teriyaki sauce. Bowl served over rice.	8.99	2f2c33c2-c01b-432f-8076-4bb2692bad85
Panko Chicken	Chicken breaded in Japanese panko crumbs and fried. Bowl served over rice.	9.99	61e33e5c-345b-404f-9505-21871546e4da
Vegetable Teriyaki Chicken	Teriyaki chicken with broccoli, zucchini, carrots, cabbage, and celery. Bowl served over rice.	9.79	77c20247-c788-41d6-a467-f8c570e33857
Sweet and Sour Chicken	Breaded and fried chicken. Served with carrots and onions. Bowl served over rice.	9.49	4d948293-be39-49f8-901b-7cc2c8f3ae6d
Japanese Chicken Curry	Mild curry sauce with carrots and onions. Bowl served over rice.	9.49	09cf976b-2d61-47a9-bfa7-4a2622a47702
Oyako Chicken	Grilled breast meat chicken steamed with eggs in a special sweet sauce. Bowl served over rice.	10.19	e695e86c-cceb-4ef3-97bb-c1fa320a09d0
Chicken Fried Rice	Fried rice with chicken, carrots, corn, peas, lima beans, and green onions.	8.99	7395e362-e13a-4af9-8f03-52ac0d0d799d
Teriyaki Beef	Thinly cut strips of beef with teriyaki sauce and napa cabbage. Bowl served over rice.	9.29	13d2ecfb-7380-40d9-8088-7790147b94f6
Vegetable Teriyaki Beef	Teriyaki beef with broccoli, zucchini, carrots, cabbage, and celery. Bowl served over rice.	9.99	4b2b1b9c-6509-44bf-a6f8-cf6db2aa4dc1
Katsu Pork	Breaded pork cutlet with steamed eggs. Bowl served over rice.	10.19	d7ac6e63-f37e-4e27-926f-f0f9fec4717a
Vegetable Bowl	Broccoli, zucchini, carrots, and cabbage are served over rice.	8.59	6170ef74-9d6b-4207-8f67-f388936c8f50
Japanese Vegetable Curry	Japanese yellow curry with assorted vegetables. Bowl served over rice.	9.29	81681e10-f145-45b7-8aa2-92850300b826
Vegetable yakisoba	Wheat noodles with steamed broccoli, cabbage, carrots, & zucchini.  Served with teriyaki sauce on the side.	10.09	87c94adb-ac39-4d3d-8ede-8ac0efff108f
Panko Fish	Delicate white fish breaded in Japanese panko crumbs and fried. Served over rice.	10.59	2ec552a6-c607-4010-bbe2-4887363e38ea
Coconut Shrimp	8 pieces of butterflied shrimp and coated with coconut crumbs. Served with orange sauce. Served over rice.	11.59	29c14dee-a12d-4b29-a32a-bce096e74ab8
Teriyaki Salmon & Vegetables	Wild-caught, grilled salmon over broccoli, cabbage, carrots, zucchini, and white rice.	12.99	bfa1d705-e785-4bfa-bc5c-be35f9f73e71
Steamed Vegetables (8 oz)	Broccoli, carrots, cabbage, celery, and onions. Vegetarian.	4.49	b4deba42-a6fa-4bcf-9d6f-79eb3f2d9fd2
Steamed White Rice (22 oz)	Sprinkled with sesame seeds. Vegetarian.	2.99	6617eb5b-4a34-4fa3-9893-ee81a2bfc175
Steamed Brown Rice (22 oz)	Sprinkled with sesame seeds. Vegetarian.	3.49	df7f628e-62a5-4cbd-abd5-61ed57a70a60
Mochi	Sticky rice with sweet red bean paste.	3.99	2a5e37b2-88f3-49b9-9a9d-6b5e4def1709
Almond Cookies (2 pcs)	Individually wrapped.	1	d36563c3-840f-4e9a-8856-f8243d996c43
Fountain Soda (32 oz)		2.99	554e780f-4da6-452a-830d-c9f49d1e58ad
Fresh Brewed Old Fashioned Iced Tea (32 oz)		2.79	43a39d9b-335d-411e-b830-4cf5832bd7d2
Iced Green Tea (32 oz)		2.79	9f2875f5-9e6d-4873-8392-de3efb9755c3
Lemonade (32 oz)		2.79	20c9ba88-036a-4acd-a339-ad3d1a028fc4
Bottled Spring Water		1.59	cc7a9717-4ce6-4e9d-b181-1c10be64bac9
Aloha Fruit Drinks		2.49	e2a7eefc-6c1c-458a-b356-1a1bcd2bcbf1
Margherita	tomato sauce, mozzarella, parmigiano, basil	15.95	f213fe70-d86a-5938-8060-4911a7379b8b
Strozzapreti Salsiccia	sausage, tomato sauce, cream, parmigiano, rosemary. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	18.95	418150eb-c5d6-59ec-a105-0589d14fa82a
Polpette/ Meatballs	creek stone beef, pork, parmigiano, tomato sauce.	14.95	4bc4a457-f3b1-54c0-91f2-fe95f713d7f1
Burratella	mozzarella, burrata, hot soppressata, chili threads, honey drizzle, basil	21.95	7b9dcd54-7e7b-5474-a901-6353758a8665
Lasagna al Forno	bolognese meat sauce, besciamella, parmigiano. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	20.95	b022a06d-b46d-509d-954b-d49796a30ad9
4 Formaggi (CHEESE)	mozzarella, gorgonzola, provolone, parmigiano	17.95	6b1c894a-591f-556a-a6d5-2dabc85a0653
Bufala Verace	imported italian mozzarella di bufala, tomato sauce, parmigiano, basil	18.95	f9fdae01-02c1-5c6d-87c9-8ebe0322f584
Burratella	mozzarella, burrata, hot soppressata, chili threads, honey drizzle, basil	21.95	7b9dcd54-7e7b-5474-a901-6353758a8665
Capriccosa	prosciutto cotto, artichoke, cremini mushroom, gaeta olives, tomato sauce, mozzarella, basil	18.95	81f88b9e-6609-52d6-ba1c-b44793d81ffe
Diavola	hot soppressata, tomato sauce, mozzarella, basil	17.95	836e9b5c-8b64-5021-84b4-1e526cc58886
Don Alfonso	sausage, hot soppressata, red bell pepper, tomato sauce, mozzarella, basil	18.95	1b3564b3-ab3c-5576-9a7a-123a29377584
Inferno	hot sopressata, mediterranean olive, fresno chili, basil, tomato sauce, mozzarella, oregano	18.95	c12d5343-a44d-5459-ad3a-fbb37ff30c38
Margherita	tomato sauce, mozzarella, parmigiano, basil	15.95	f213fe70-d86a-5938-8060-4911a7379b8b
Ortolana	grilled red bell pepper, zucchini, eggplant, tomato sauce, mozzarella, basil	17.95	1e387ff8-9d27-5abb-9b99-6a745a6985fd
Pomo	sausage, onion, red bell pepper, cremini mushroom, tomato sauce, mozzarella, basil	18.95	1a7ee40b-3582-5d57-b6df-ca73cbec829a
Principe	prosciutto crudo, arugula, shaved parmigiano, tomato sauce, mozzarella, basil	19.95	e155b546-9ca1-5aaa-9b47-f42726606b2c
Quattro Stagioni	sausage, cremini mushroom, salame parma, gaeta olives, tomato sauce, mozzarella, basil	18.95	4dbb6a96-e341-576e-987a-402c6126b448
Salsiccia Funghi	sausage, cremini mushroom, tomato sauce, mozzarella, basil	17.95	355c34cc-bc71-54c4-9797-d4a9a257ccb1
Toto Sapore	sausage, prosciutto cotto, hot soppressata, salame parma, tomato sauce, mozzarella, basil	19.95	d0079b94-1f4b-5542-aa8b-acd0e2090fca
Monterosa	mozzarella, imported mozzarella di bufala, burrata, pink sauce, chili threads, basil	19.95	e2d4f464-f3ae-51d2-a92b-fc49879b3934
Donna Rosa	mozzarella, pesto sauce, cherry tomato, saut‚ed shrimp\nPESTO SAUCE	21.95	509f7abb-2ad2-513a-99ed-5950043dc96b
Sausage	sausage, tomato sauce, mozzarella, basil, oregano	17.95	41104ee8-c103-53fe-88cd-1a252053be1c
Impero	sausage, hot soppressata, red onion, red bell pepper, tomato sauce, mozzarella, basil	19.95	fac72c5e-4419-56d6-9ca3-77d5b680c443
Tartufata	mozzarella, mushroom, white truffle oil, shaved parmigiano\nNO TOMATO SAUCE	20.95	b7000505-c881-52e3-80a1-c823cd1e200b
Filetti	burrata, cherry tomato, mozzarella, garlic, basil\nNO TOMATO SAUCE	19.95	868372fc-14d8-5cc1-812d-cceb987f4a29
Strozzapreti Salsiccia	sausage, tomato sauce, cream, parmigiano, rosemary. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	18.95	418150eb-c5d6-59ec-a105-0589d14fa82a
Gramigna Boscaiola	cremini mushroom, sausage, cream, parmigiano. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	19.95	40149256-a0e8-5e7c-b588-bed74679a280
Gnocchi Sorrentina	tomato sauce, mozzarella, parmigiano, basil. Handcrafted in-house daily with imported italian semolina flour.	17.95	43d83bfc-ab5f-52fc-b2c7-57e82ea3e5e8
Tagliatelle Bolognese	bolognese meat sauce, parmigiano. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	18.95	b08c6d99-3aae-5b3c-a72e-e57c93aa4434
Lasagna al Forno	bolognese meat sauce, besciamella, parmigiano. Handcrafted in-house daily with imported italian semolina flour. Contains eggs (locally farmed).	20.95	b022a06d-b46d-509d-954b-d49796a30ad9
Torchio Arrabbiata	tomato sauce, calabrian chili, garlic, parsley. V. VEG. Handcrafted in-house daily with imported italian semolina flour.	17.95	b5eb8360-81c9-5f6e-9f44-a6b575e010e8
Meatball Panini	arcadia meat market grass fed meatballs, belpaese cheese, tomato sauce, parmigiano, basil	15.95	e18d110c-fc7f-58d3-99dc-3e96c243fc64
Positano Panini	prosciutto crudo, mozzarella, arugula, parmigiano, EVOO.	15.95	79272c7d-96d0-575f-b621-088716c8c4bd
Nisida Panini	grilled chicken, belpaese cheese, roma tomato, lettuce, spicy aioli.	15.95	818d412d-4163-5e6c-8052-f9c642942aa0
Capri Panini	sausage, belpaese cheese, mushroom, bell pepper, onion.	14.95	6d1a25d8-12a4-5471-8226-d276249c07f9
Caprese	mozzarella, tomato, fresh basil, evoo. GF. VEG.	13.95	0751f076-412d-554b-ae7a-76a99f1711e5
Polpette/ Meatballs	creek stone beef, pork, parmigiano, tomato sauce.	14.95	4bc4a457-f3b1-54c0-91f2-fe95f713d7f1
Eggplant Parm	layered eggplant, mozzarella, tomato sauce, parmigiano, basil	13.95	da0cb062-896e-5a01-9e05-3ced5b1d6548
D14. General Tsos Chicken	Served with Pork Egg Roll	11.99	7edb815f-1fe8-4eed-a913-c1f2ac9e2f07
Orange Chicken	Served with white rice.	11.99	e887ce9d-d8c9-4fff-854a-e6474907ce8c
House Fried Rice		13.99	1995225b-be58-4e01-894b-4ebd36ee2ce3
Beef with Broccoli	Served with white rice.	12.99	129b5d86-7911-46ef-949b-6bd476bdcf6a
Black Pepper Beef	Served with white rice.	12.99	2ec5edcc-dc39-4d60-a173-25f940a21b8a
Pork Egg Roll		1.75	d4dcb516-519f-4143-be45-e6b5fcd59c5a
Fried Jumbo Shrimp	Eight pieces.	10.99	62fd3eed-6b60-433e-b839-d96b47374d0a
BBQ Spare Ribs		10.99	477804d7-cccd-4309-80f1-5041725f1ee8
Fried Wonton	Ten pieces.	8.99	a48c8d74-32b7-4dfb-ac04-4860f391a8b7
Shrimp Egg Roll		1.95	054f4ad7-20c8-47e6-8294-a31a0bc93d20
Vegetable Spring Roll		1.85	d8c880e1-4d31-4dee-8729-76460cdef31f
Cheese Wonton (Crab Puffs)	Eight pieces.	8.99	31253d71-8584-4882-9fdc-4b95f8741ca0
Pot Sticks	Eight pieces.	10.99	5d85a3e6-f5d8-4a9f-a4fe-b12a39ea506e
Boneless Spare Ribs		10.99	fa4dac73-2a10-4327-aa93-c87e261d0cb9
Fried Chicken Wings	Four ENTIRE WHOLE wings.	9.99	2d886daa-1c73-4bf9-9fa1-de555711fad6
Honey Chicken wings	Four ENTIRE WHOLE wings.	10.99	c5b72cbd-3567-4c1f-bbfa-4eb90707ec86
Chicken Stick		9.99	b3f69319-5486-4364-aadf-958d3fd4d428
Beef Stick		10.99	2595bf99-1a8c-4e36-a0d2-79f8b06e24e0
Fried Crab Meat	Four pieces.	8.99	531dffe0-ad06-41e2-bd86-874a7dfbeac0
Fried Scallops	Eight pieces.	8.99	0d146686-0413-4cd0-b9ff-4f31a548e75e
Shrimp Toast	Four pieces.	9.99	3f5ff52b-77f3-471b-9916-80bd6ee10a40
Cold Noodle with Sesame Sauce		8.99	961e57ad-41bb-4166-bf80-0104c6b2dd87
Schezwan Wonton		8.99	7f2f6855-4499-4e5c-b2a4-10fb707216f3
Appetizer Sampler		16.99	a8a0671d-ce83-4b3c-b03e-a94b1e4059cc
Egg Drop Soup Small		3.99	8a68a058-f185-422b-81d6-c87c021045f4
Vegetable Soup		3.99	fe84d306-d897-4f7e-8b4a-c5d8e079c864
Hot and Sour Soup		4.99	d7ed09c2-d232-4464-a722-032c83328fe3
Wonton Soup		4.99	4fb660b2-df62-4a85-b287-c5cc911b4674
Wonton Egg Drop Soup		8.99	c90e4f14-7b4a-4f67-a8d2-72d953105088
Seafood Soup		10.99	af83bcb3-f167-43d8-8b67-f80faa14586d
House Special Soup		10.99	e1d2e4e1-d2ce-41b5-90f0-3653aaa38dce
Chicken Rice Soup		8.99	462edab7-1fee-47c3-9320-2f1257ed5ed3
Chicken Noodles Soup		9.99	3224903e-6840-43be-9766-81e8e7e866f1
Seafood Noodles Soup		13.99	aff3b67a-3c6a-42a5-bdae-c62f7cff328e
House Noodles Soup		13.99	94864f74-4921-439b-b064-f9d537844023
Beef Noodles Soup		10.99	bf078374-00aa-4857-8b0a-b7e0b728f90e
Honey Pecan Shrimp	Served with white rice.	16.99	b6ffbf37-5754-42df-ac78-9bb32efb20e3
Walnut Shrimp	Served with white rice.	16.99	5bbd0def-786f-4167-a56c-189b6f07f473
Scallops, Shrimp, and Crab Meat	With garlic sauce. Served with white rice.	16.99	1388b6e4-f424-4fe1-a8ba-a86081e4dec3
Happy Family	Served with white rice.	16.99	8b2b9ca1-e5a9-497f-a84f-b8107fd6a9dc
General Tsos Shrimp	Served with white rice.	16.99	21aa3a12-ed02-4613-b68e-3d5ddb0bbb97
Orange Beef	Served with white rice.	13.99	5e1bf925-5abc-4519-bcea-ac2f8da61201
Orange Chicken with Bacon	Served with white rice.	13.99	9bb52d0e-c0d8-4eed-a353-54c137f5f944
Honey Glazed Chicken	Served with white rice.	13.99	d2c0bfbd-de23-4f28-8fe3-c3142977e527
Lemon Salt Pepper Chicken	Served with white rice.	15.99	35714663-1e5e-431e-a45f-9c4b7d5062e5
Salt Pepper Shrimp	Served with white rice.	16.99	cc87991c-6d88-4e89-9eac-1b33707c6e03
Shrimp Fried Rice		9.99	89f89e6a-cde2-44cc-8a30-9e4577349eb0
Chicken Fried Rice		7.99	b075c476-672d-4092-8680-cdde5aed5093
Pork Fried Rice		7.99	485c12ba-8575-4628-8677-3e46f929c168
Beef Fried Rice		8.99	667d7b8f-faad-4790-b374-f09e7e237ed1
Veggie Fried Rice		7.99	b86fb08d-fd7b-4414-ba47-50251514e282
Egg Fried Rice		6.99	30ec816d-e307-41e9-860b-d5d7871aafa4
House Fried Rice		13.99	1995225b-be58-4e01-894b-4ebd36ee2ce3
Chicken Lo Mein	Soft noodles.	10.99	439388b8-89f4-4712-8809-3d674bacdb4f
Pork Lo Mein	Soft noodles.	10.99	6568725e-0554-4adb-a688-adeb0f2662a8
Beef Lo Mein	Soft noodles.	11.99	84b9d921-dd8c-4691-8d58-9dd3ef81ab32
Shrimp Lo Mein	Soft noodles.	12.99	da3fe9b8-4a28-4527-a72f-9bc6eebed410
Veggie Lo Mein	Soft noodles.	10.99	78d076cb-0c97-49c5-8b40-9552e075a7ba
House Lo Mein	Soft noodles.	13.99	cd133066-8702-49a6-93ea-e7649e43e8e6
Singapore Rice Noodles		14.99	51564e94-91b9-43c8-a95d-d5f01de29272
House Special Rice Noodle		14.99	b6e2223d-86dc-4fd7-bf54-61d5cd8d6731
Shrimp Rice Noodle		13.99	a03bfd14-eb8b-41d2-a615-adc408398c90
Chicken Rice Noodle		11.99	dc383634-2ad3-4447-9a13-015629d79574
Pork Rice Noodle		11.99	470e5be0-f618-4e06-bdbb-9c7009b06c99
Veggie Rice Noodle		11.99	0ee888ea-f4f9-4075-b6ef-74bde6a3c17c
Beef Rice Noodle		12.99	bb123e55-c712-4aaf-9075-849a82142c50
Chicken Chow Fun	Flat rice noodle.	12.99	0925c2e3-f408-457f-9e99-e8e25c91dbe5
Pork Chow Fun	Flat rice noodle.	12.99	a69c4ff8-c469-4fc4-8fc0-c62a28dbd640
Beef Chow Fun	Flat rice noodle.	13.99	ccbc86e2-17c6-46ca-821c-269ff23118d0
Shrimp Chow Fun	Flat rice noodle.	14.99	37af3f2d-b295-4063-a320-7fdd9c1a6aeb
House Chow Fun	Flat rice noodle.	15.99	813225cd-4148-4fde-b3c9-78139674592a
Veggie Chop Suey	Sliced veggies. Served with white rice.	11.99	a8506bd9-4114-444b-ba28-f3434e158b87
Chicken Chop Suey	Sliced veggies. Served with white rice.	11.99	6e9aeb7c-6e1e-4e49-958e-8d579b87cbe5
Pork Chop Suey	Sliced veggies. Served with white rice.	11.99	4836cd58-deb9-4297-962d-01edc72a1d2d
Beef Chop Suey	Sliced veggies. Served with white rice.	12.49	038af7ef-751e-47fd-a8e5-23571e413433
Shrimp Chop Suey	Sliced veggies. Served with white rice.	13.99	4fb35ce7-a58e-48de-8c0f-90297a15714b
House Chop Suey	Sliced veggies. Served with white rice.	14.99	0bfac1bf-bcca-48d9-9f39-dadb04a77e64
Orange Chicken	Served with white rice.	11.99	e887ce9d-d8c9-4fff-854a-e6474907ce8c
General Tsos Chicken	Served with white rice.	11.99	9357a973-e1aa-454b-ab93-d9e9352d0173
Sesame Chicken	Served with white rice.	11.99	01d267f1-0067-43b8-ba7d-af5e711d76aa
Sweet and Sour Chicken	Served with white rice.	11.99	675930c8-693f-428b-8cec-ade83dc5e016
Kung Pao Chicken	Served with white rice.	11.99	258b7ad9-50dc-4618-804b-7dd80e647ec6
Chicken with Garlic Sauce	Served with white rice.	11.99	c7bffd3a-54c3-433a-a7c3-82ee01e879e1
Moo Goo Gai Pan	Served with white rice.	11.99	f0246abc-bdf2-416d-9c42-b9574c0fdc0b
Lemom Chicken	Served with white rice.	11.99	c63980ba-3a04-466e-92b9-5442a742b247
Black Pepper Chicken	Served with white rice.	11.99	99c15f13-d7dd-494d-978b-21a68d4daebc
Mushroom Chicken	Served with white rice.	11.99	32f72032-0277-40f5-802c-43273db73789
Curry Chicken	Served with white rice.	11.99	ba12520f-5c07-4450-a1a1-82f190c76d54
Cashew Chicken	Served with white rice.	11.99	a765a1c3-7dd0-46a0-a3bb-43fe724c5ead
Almond Chicken	Served with white rice.	11.99	2f950ef9-6bf1-446f-9794-82c88a905639
Chicken with Veggie	Served with white rice.	11.99	37b06090-8121-4bfb-a508-c286d43f2b48
Mongolian Chicken	Served with white rice.	11.99	47b1f31d-2090-4d5b-9783-fb2d96760c65
Hawaiian Chicken	Served with white rice.	11.99	343aa9a5-133f-4c09-a939-eccebcde3f80
Mu Shu Chicken	Served with white rice.	13.99	ee9a4546-b7f9-496c-9461-149943e7e32d
Teriyaki Chicken	Served with white rice.	13.99	4119c0f0-837b-44c0-9155-1117ef9cae43
Jalapeno Chicken	Served with white rice.	13.99	8dd5295d-a727-4f20-bd9d-94a1dae16855
Mongolian Beef	Served with white rice.	12.99	2cf9cf64-e59c-4a2d-95b1-4c5d442db0c6
Beef with Broccoli	Served with white rice.	12.99	129b5d86-7911-46ef-949b-6bd476bdcf6a
Pepper Steak with Onion	Served with white rice.	12.99	9b674723-038d-4551-80b2-db8fe686b078
Curry Beef	Served with white rice.	12.99	74fafc37-fb04-4091-826e-62bf333cecbc
Beef with Garlic Sauce	Served with white rice.	12.99	ea06698b-2f6b-40ce-9a27-f0eac8653703
Beef with Veggie	Served with white rice.	12.99	a6efb7f9-44bc-4d51-bece-526bcf506e8d
Kung Pao Beef	Served with white rice.	12.99	412548c1-d51c-43f2-afc2-14ed37b8faa8
Schezwan Beef	Served with white rice.	12.99	612ab743-70f2-4fbd-a737-3393a884dc87
Hunan Beef	Served with white rice.	12.99	a614c333-fc3f-4835-bbef-63bf5b7537c0
Hot Spicy Beef	Served with white rice.	12.99	2ab56497-6e10-4b64-ac78-6bcf4ba859c1
Black Pepper Beef	Served with white rice.	12.99	2ec5edcc-dc39-4d60-a173-25f940a21b8a
Mu Shu Beef	Served with white rice.	14.99	513803b9-8a65-4328-a465-ca5e85c1aea9
Jalapeno Beef	Served with white rice.	14.99	4c18716a-665e-4066-8a45-a828477e8a08
Sweet and Sour shrimp	Served with white rice.	13.99	804a8a01-9e18-41c0-a11d-55cc701df5d1
Kung Pao Shrimp	Served with white rice.	13.99	babae72e-72ee-4a3f-a209-afd197be2d08
Curry Shrimp	Served with white rice.	13.99	212aad22-9f9f-47ee-b61a-69f61eadce99
Shrimp with Garlic Sauce	Served with white rice.	13.99	16b0497e-d1e8-4a16-b556-e2c303405c00
Shrimp with Snow Peas	Served with white rice.	13.99	306bb2d3-d831-4041-b8bb-905894d567d7
Shrimp with Veggie	Served with white rice.	13.99	874c799e-20d3-47ef-b5f0-44a29c6973b6
Shrimp with Broccoli	Served with white rice.	13.99	172dd126-e1cf-4274-a502-7f9ed65e99da
Shrimp with Lobster Sauce	Served with white rice.	13.99	a8018cd8-b2c8-415a-a52f-4af3996762c4
Jalapeno Shrimp	Served with white rice.	14.99	1224fd3e-5ee1-415e-b34d-1b0a1a2579fe
Lemon Pepper Shrimp	Served with white rice.	16.99	e9c4981b-7d65-4163-acf7-7c62b75ea69f
Sweet and Sour Pork	Served with white rice.	11.99	f40f38de-0496-4884-9102-9ba5d2c6ef8c
Twice Cooked Pork	Served with white rice.	12.99	4fc0723c-b0aa-4e6e-9fe8-cca6381c3d67
Yu Shan Pork	Served with white rice.	11.99	36f7b641-2e89-43b9-9795-56a3807ffa0e
Pork with Snow Peas	Served with white rice.	11.99	5a24ac9d-dfb5-493c-96ae-50a29745f7c4
Pork with Scallian	Served with white rice.	11.99	d02ca2fa-7144-49ac-b988-83897c74e264
Mu Shu Pork	Served with white rice.	13.99	adc466fa-81dd-4f14-9e25-5f9221e3717e
Ma Po Tofu with Pork	Served with white rice.	13.99	b10b9b09-976e-4972-adb5-283429e20f0e
Pork with Garlic Sauce	Served with white rice.	13.99	9cc635dc-2d7d-4c7a-857b-8d92abe56267
Veggie Egg Foo Young	Served with white rice.	11.99	98d867ad-4ecc-4e7c-980a-77f2246c55b0
Chicken Egg Foo Young	Served with white rice.	12.99	7bd5a13f-cf93-4770-be21-1a21cef9ab40
Pork Egg Foo Young	Served with white rice.	12.99	06a5a275-01a2-4d64-a6d2-f973f0e8788f
Beef Egg Foo Young	Served with white rice.	13.49	e72f9cd2-f3bc-4103-91ef-1f5c4cf83f59
Shrimp Egg Foo Young	Served with white rice.	14.99	e6dcd8a2-5796-4d6e-9852-e7888813ace8
House Special Egg Foo Young	Served with white rice.	15.99	8ac95997-cc07-431c-a953-6b7597364fd0
Vegetable Delight	Served with white rice.	8.99	199f2976-2164-44be-8e09-2facc082fbeb
Ma Po Tofu	Served with white rice.	8.99	9d49a9db-b376-49c2-b8fa-a8cfafc9f542
Steamed Shrimp with Mixed Veggie	Served with white rice.	10.99	72d74114-2f6d-4c71-9cfb-5d4a398307fd
Broccoli with Garlic Sauce	Served with white rice.	10.99	b0139c5a-a44f-4e99-9280-a49997b55877
Steamed Chicken with Mixed Veg	Served with white rice.	9.99	fe4fb5cc-280e-44e4-85ec-1fd389cdb89a
Steamed Tofu with Mixed Veg	Served with white rice.	9.99	595fee6f-e60a-46a5-8f82-962604a840ea
General Tsos Tofu	Spicy.	13.99	4c979e53-5775-4956-a420-51e10b0b62df
Sesame Tofu		13.99	e2cfcc40-af0a-44c5-8870-c7b927d93907
Bottled Water		1.5	e8112046-78cf-4895-a5f1-129ecb9cfd76
Can Soda		1.5	113083f2-23c3-4ff9-8086-606bce7cec1c
2 Liter Soda		3.99	789747e5-bdd4-4190-b96c-e57816eb0489
Bottled Juice		2.5	301b936a-1eaa-42db-aa66-8f22c33a0f9c
Bottled Iced Tea		2.5	1413d15d-538e-4ce8-9e36-8a7ecd10b00d
Orange Chicken	Served with White Rice	8.99	4691162e-e521-431f-bb55-bc568d64c01f
Kung Pao Chicken	Served with White Rice	8.99	883aad3a-bf2c-4b73-b1c1-b8c21e0f5323
Mixed Veggie 	Served with White Rice	6.99	7927849f-83d8-4fcc-89dd-2de9fb26eeef
Steamed Veggie	Served with White Rice	6.99	e09a252d-75ac-4795-9dae-295074d810a5
Broccoli with Garlic Sauce	Served with White Rice	8.99	e02ebb25-8d14-4577-ae0d-9a5144092751
Mushroom Chicken	Served with White Rice	8.99	56bedc7c-37d2-4cf5-8dd5-a4d4a5e7179e
Beef with Broccoli 	Served with White Rice	9.99	5c4cb633-3673-41d0-8b43-d422c25fc452
D2. Chicken Lo Mein 	Served with Pork Egg Roll	11.99	982d002c-3520-45c7-89c8-9f78feb8b784
D14. General Tsos Chicken	Served with Pork Egg Roll	11.99	7edb815f-1fe8-4eed-a913-c1f2ac9e2f07
D17. Sesame Chicken 	Served with Pork Egg Roll	11.99	fc35c8c0-5849-490c-86c6-25dcdf35045e
D25. Mongolian Beef 	Served with Pork Egg Roll	11.99	3f1ee0e4-75a0-4d66-89f6-20a727d38837
D1. Broccoli with Garlic Sauce	Served with Pork Egg Roll	11.99	fab48178-7c68-4410-8e35-383174b61ee8
D2. Roast Pork Lo Mein	Served with Pork Egg Roll	11.99	1a2fac5b-2773-4eef-b8f0-0fa3b99623d5
D2. Shrimp Lo Mein 	Served with Pork Egg Roll	11.99	31e0f843-ce9a-4048-b55b-6131cd75ecbb
D3. Roast Pork with Broccoli 	Served with Pork Egg Roll	11.99	7fcfe520-76a6-444c-acb7-e719c891106b
D4. Pork Egg Foo Young		11.99	91bb6f62-d933-40bf-8b55-feeb7f4a5c6b
D5. Chicken with Broccoli 	Served with Pork Egg Roll	11.99	e8d67744-fff2-41b7-8d84-82cb54a4b755
D6. Chicken with Mixed Vegetable	Served with Pork Egg Roll	11.99	26c3773b-96c6-4f7f-80b0-ffb25233c5ae
D6. Pork with Mixed Vegetable	Served with Pork Egg Roll	11.99	f51ee67c-eaef-488c-9772-9baeb45e4b9a
D7. Chicken Chow Suey 	Served with Pork Egg Roll	11.99	2ad1300e-ca1b-469d-9617-1c3413f417b3
D7. Beef Chow Suey 	Served with Pork Egg Roll	11.99	d795e251-0114-4fbc-9fda-1d861b25d662
D8. Vegetable Delight	Served with Pork Egg Roll	11.99	26d6f625-0994-4ce3-a486-ecc4576fa3f3
D9. Moo Goo Gai Pan 	Served with Pork Egg Roll	11.99	79da4903-16cb-4e9c-9104-f346e65c612b
D10. Black Pepper Chicken 	Served with Pork Egg Roll	11.99	8cf0af54-9f0d-441d-8aa3-19a853cef712
D11. Twice Cooked Pork	Served with Pork Egg Roll	11.99	09f934e1-3ef1-4df9-9ed2-e3d3575ffd0b
D12. Mushroom Chicken 	Served with Pork Egg Roll	11.99	9b68a3a5-fdbd-47b6-a483-d45e80141df1
D13. Chicken with Garlic Sauce 	Served with Pork Egg Roll	11.99	dadf6af1-81f6-4b87-9d6c-3c45d0c5a142
D15. Szechuan Chicken 	Served with Pork Egg Roll	11.99	894a6f7b-f23f-4629-afd0-934e8646f7c7
D16. Curry Chicken with Onion	Served with Pork Egg Roll	11.99	48a5d11a-d7d1-463b-a051-dab6e8e08d0e
D18. Kung Pao Chicken	Served with Pork Egg Roll	11.99	1e326f13-5191-4476-b26e-c2aeddf49f79
D19. Orange Chicken 	Served with Pork Egg Roll	11.99	351202c3-2554-4df7-b949-4d5d7e23783b
D20. Sweet and Sour Chicken 	Served with Pork Egg Roll	11.99	3a94472e-19e3-42c8-8685-a2a59ff35a2c
D20. Sweet and Sour Pork 	Served with Pork Egg Roll	11.99	ab2262a8-20e9-4b57-a5d9-fa8da88a3ee7
D21. Chicken with Cashew Nuts 	Served with Pork Egg Roll	11.99	44e7d98d-e56f-4b5d-801c-4aeb3ca6c610
D22. Beef with Broccoli	Served with Pork Egg Roll	11.99	70ababbd-6668-4433-a2c5-11a9fb98d18c
D23. Hunan Beef 	Served with Pork Egg Roll	11.99	27f08bd8-22dd-4169-bde4-84e7c5f5ba7c
D24. Pepper Steak with Onion	Served with Pork Egg Roll	11.99	2298e882-fb5e-4fe4-a39d-2512252d4f35
D25. Mongolian Chicken 	Served with Pork Egg Roll	11.99	e2ff7366-5afc-4084-ab8a-6ec24efaf2e6
D26. Hot and Spicy Beef 	Served with Pork Egg Roll	11.99	6860a798-9324-4392-97aa-00d3f6976db5
D26. Hot and Spicy Shrimp 	Served with Pork Egg Roll	11.99	39d91732-4a05-4336-8a92-d2f22bc2c2aa
D27. Szechuan Shrimp 	Served with Pork Egg Roll	11.99	24e7fef1-ec5f-4636-bf01-dc941e7e6abb
D28. Shrimp with Broccoli 	Served with Pork Egg Roll	11.99	bb7583af-a585-4757-8258-65f50fdc9412
D29. Shrimp with Lobster Sauce	Served with Pork Egg Roll	11.99	b750b144-d9e0-4f17-b5ca-613dc75d5103
D30. Shrimp with Snow Peas 	Served with Pork Egg Roll	11.99	39309dfd-3b4f-4bc9-b1a3-206d44bdf0f6
D31. Shrimp in Garlic Sauce 	Served with Pork Egg Roll	11.99	921130f4-c639-4a56-92f3-5c964b3eeef0
D32.Kung Pao Shrimp 	Served with Pork Egg Roll	11.99	0847a299-6d2c-4456-914d-b77623f74d99
D33. Jalapeno with Chicken	Served with Pork Egg Roll	11.99	8c0309d1-8fa1-4753-a311-c9b2ce5a7ce9
D33. Jalapeno with Beef 	Served with Pork Egg Roll	11.99	f937fa73-af5e-46c0-a753-efa6ee71711b
D33. Jalapeno with Shrimp	Served with Pork Egg Roll	11.99	8dbd9ce2-babe-406d-913d-5ccef9364ffa
White Rice		2	a9ebffd3-ef99-4798-9594-f2357cd39198
Brown Rice		3	b835c2d4-bb88-439b-bf24-26b2870f1c26
Crispy Noodle		0.5	523aeb4a-b89a-4818-8d4f-35c2b0629948
Hot Chili Oil		1.5	58268f9b-8210-4180-ae7a-beb78e329710
Extra Sauce		2	ead3705a-c35c-4b86-b2be-3691fb086635
Lo Mein		5	c5bfd816-a57d-4546-8415-0a93687aca52
Cheese Cake		3.99	d3fb3330-cadb-46b6-8f80-2fe1d4752d22
Almond Cookies (3)		1.5	1575c7e4-4c2a-4e3e-b22f-3c4223c4f3f2
NEW Bourbon Street Mushroom Swiss Burger	A juicy all-beef burger jazzed up with Cajun spices, black pepper sauce and our house-made garlic mayo. Topped with two slices of Swiss cheese and smothered in saut‚ed onions & mushrooms on a Brioche bun.\n\nServed with classic fries.	17.99	98ea43ef-dfa9-59f9-8b7a-3cea972ffff3
NEW Neighborhood Double Burger	A signature classic. Two juicy, all-beef 3.5 oz. patties are seared and stacked with American cheese and smothered with buttery garlic sauce. Served with shredded lettuce and pickles on a Brioche bun.\n\nServed with classic fries.	15.59	8580ead8-0dca-5095-a6c5-91d354667635
ImpossibleT Cheeseburger	A delicious ImpossibleT Burger Made from Plants for those who crave meat, topped with two slices of American cheese. Served with lettuce, tomato, onion and pickles on a Brioche bun.\n\nServed with classic fries.	17.99	12fa93e2-d881-53e5-ae56-0e7c2c6bff1b
Quesadilla Burger	Part burger, part quesadilla, all taste. This original burger creation comes piled high with two slices of Pepper Jack cheese, our signature Mexi-ranch sauce, crispy Applewood-smoked bacon, house-made Pico de Gallo and shredded lettuce in a crisp, warm Cheddar quesadilla.\n\nServed with classic fries.	17.99	138c1040-b493-51b5-b831-13e9b6ae59b6
Whisky Bacon Burger	Savor the rich flavor in this tasty original. An all-beef patty topped with two slices of Pepper Jack cheese, crispy onions, two strips of Applewood-smoked bacon and Fireballr Whisky-infused steak sauce. Served with lettuce, tomato, onion and pickles on a Brioche bun.\n\nServed with classic fries.	17.99	f864ccac-04c5-5e7a-b2c4-9cffd9645da7
Classic Bacon Cheeseburger	Go old school with our handcrafted all-beef patty topped with two slices of American Cheese and two strips of Applewood-smoked bacon. Served with lettuce, tomato, onion and pickles on a Brioche bun.\n\nServed with classic fries.	16.79	11fa9955-9301-5233-8da2-c6ae5ec8b43d
Classic Cheeseburger	Go old school with our handcrafted all-beef patty topped with two slices of American cheese. Served with lettuce, tomato, onion and pickles on a Brioche bun.\n\nServed with classic fries.	15.59	275b897b-5888-57b7-8607-b7f1e5569b5c
Classic Burger	Juicy all-beef patty, lettuce, tomato, onion and pickles on a Brioche bun.\n\nServed with classic fries.	14.99	776c4c19-2d92-5418-b92f-c64ebc0e7de5
Bourbon Street Chicken & Shrimp	Let the good times roll with Cajun-seasoned chicken and blackened shrimp in buttery garlic and parsley served sizzling on a cast iron platter with saut‚ed mushrooms and onions. Served with garlic mashed potatoes.	19.79	237a33a9-d99b-5a80-a630-0bf79cb3c3c1
Fiesta Lime Chickenr	A celebration of flavor, this dish delivers on every level. Grilled chicken glazed with zesty lime sauce and drizzled with tangy Mexi-ranch is smothered with a rich blend of Cheddar cheeses on a bed of crispy tortilla strips. Served with Spanish rice and house-made pico de gallo.  (Due to supply constraints, salsa may be substituted for pico. Ask your local restaurant for details.)	18.59	439ded17-e315-57b6-addb-643db47c8a3d
Chicken Tenders Platter	Crispy breaded chicken tenders are a grill and bar classic. Served with signature coleslaw and fries and choice of dipping sauce.	17.39	99289218-2eaa-5e4f-94fc-4b23507996fe
Chicken Tenders Plate	Smaller portion of the Chicken Tenders Platter. Crispy breaded chicken tenders are a grill and bar classic. Served with fries and choice of dipping sauce.	14.99	cdafe434-7d5a-58a9-bf30-0699db0a2c79
Grilled Chicken Breast	Juicy chicken breast seasoned and grilled over an open flame. Served with garlic mashed potatoes and steamed broccoli.	16.19	d75141cc-755c-5c22-b1bb-cb53d70e1c0e
Bacon Cheddar Grilled Chicken Sandwich	Our grilled chicken breast is topped with two strips of Applewood-smoked bacon and Cheddar, then finished with tangy house-made BBQ ranch, crisp lettuce, tomato, onion and pickles on a Brioche bun.  Served with classic fries.	17.99	51251369-b434-5339-ab9c-b2fb4b3eb1af
Chicken Fajita Rollup	Juicy chipotle chicken with crisp lettuce, a blend of Cheddar cheeses and house-made pico de gallo wrapped in a tortilla with our Mexi-ranch dipping sauce.\n\nServed with classic fries.	16.79	9092ac74-0ebf-559b-b8a3-34686b1c6df9
The Prime Rib Dipper	Thinly sliced prime rib topped with grilled onions and melted American cheese. Served on a toasted Cheddar roll with our house-made herb mayo and French onion Au jus for delectable dipping.\n\nServed with classic fries.	19.19	a5aa297d-9c4d-5910-87ec-0fb8da613c06
Oriental Chicken Salad Wrap	Crispy breaded chicken tenders with fresh Asian greens, crunchy noodles and almonds rolled up in a warm flour tortilla. Served with Oriental vinaigrette on the side.\n\nServed with classic fries.	16.79	8945efe4-7c8c-560a-933a-98a9ceddb02a
Oriental Grilled Chicken Salad Wrap	Grilled chicken with fresh Asian greens, crunchy noodles and almonds rolled up in a warm flour tortilla. Served with Oriental vinaigrette on the side.\n\nServed with classic fries.	16.79	25c940a9-a73b-5922-aca1-4778889adfc0
Strawberry Balsamic Chicken Salad	Tart, fresh and flavorful, mixed greens served with garden tomatoes, red onions and fresh strawberries. Topped with grilled chicken, sliced almonds and a drizzle of balsamic glaze and sweet lemon olive vinaigrette on the side.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	d80dd884-8219-5f48-a843-033652ea0dc7
Blackened Shrimp Caesar Salad	Crisp romaine topped with blackened shrimp, croutons, shaved Parmesan and garlic Caesar dressing on the side.\n\nServed with a golden brown signature breadstick brushed with a buttery blend of garlic and parsley.	18.59	24733c2c-7294-5bf3-9a6f-bdacedc5f277
Grilled Chicken Caesar Salad	Crisp romaine tossed in garlic Caesar dressing topped with grilled chicken, croutons and shaved Parmesan.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	2b46c350-7f9b-558b-ae69-7d6eee5ab882
Crispy Chicken Tender Salad	A hearty salad with crispy chicken tenders on a bed of fresh greens topped with a blend of Cheddar cheeses and tomatoes. Served with honey Dijon mustard dressing on the side.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	07894894-7dc1-5da1-a75c-c4209f08df35
Grilled Chicken Tender Salad	A hearty salad with juicy grilled chicken on a bed of fresh greens topped with a blend of Cheddar cheeses and tomatoes. Served with honey Dijon mustard dressing on the side.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	1dc3ee09-3edf-5873-a703-6deb51fa7b04
Oriental Chicken Salad	A long-running favorite, crispy breaded chicken tenders top a bed of fresh Asian greens, crunchy noodles and almonds tossed in our Oriental vinaigrette.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	19cc0ebd-96b7-5f80-988e-3b321cb7d97b
Grilled Oriental Chicken Salad	A long-running favorite, grilled chicken top a bed of fresh Asian greens, crunchy noodles and almonds tossed in our Oriental vinaigrette.\n\nServed with a golden brown signature breadstick brushed with buttery garlic and parsley.	17.99	a645c433-e08f-5de9-96ad-878806bff710
Southwest Chicken Bowl	Grilled chipotle lime chicken on mixed greens and cilantro rice with house-made pico de  gallo, black bean corn salsa and guacamole. Topped with chimichurri, tortilla strips and  a fresh lime wedge.	14.39	dbdcdcdb-cb6f-5887-b955-8183730c750e
Tex-Mex Shrimp Bowl	Grilled chipotle lime shrimp on mixed greens and cilantro rice with house-made pico de gallo, black bean corn salsa and guacamole. Topped with chimichurri, tortilla strips and a fresh lime wedge.	15.59	9cfeada7-d20d-5723-9e53-333cb5a7129f
Kids Cheesy Pizza	6" Four-Cheese Pizza. Comes with a choice of side and drink.	8.39	6e7f6041-50de-53a7-bbd8-06503ac5986b
Kids Chicken Quesadilla	A flour tortilla filled with chicken and ooey, gooey melted Cheddar cheese. Served with lettuce and tomatoes. Comes with a choice of side and drink.	8.39	d3640c5e-c035-51f4-a186-ba062165c345
Kids Corn Dog	Chicken corn dog fried to crisp perfection. Comes with a choice of side and drink.	8.39	759c4001-f9d3-5b32-a83c-af0dbd30a521
Kids Grilled Chicken Alfredo	Oodles of noodles covered with a creamy Alfredo sauce, then tossed with diced chicken and sprinkled with shredded Parmesan cheese. Comes with a choice of side and drink.	8.39	f80adc42-1afe-5574-ba20-caf9c6b72569
Kids Chicken Taco	A soft flour tortilla shell filled with chopped chicken and Cheddar cheese. Served with lettuce and tomatoes. Taco `bout delicious! Comes with a choice of side and drink.	8.39	5b3bbb11-7e27-5d8e-ab5a-d8784a886c32
Kraftr Macaroni & Cheese	The original mac and cheese every kid loves. Comes with a choice of side and drink.	8.39	d307f073-4fb1-54dd-9198-18737cf46baa
Kids Cheeseburger	Ground beef burger served on a toasted bun with American cheese, lettuce, tomato, and pickles. Comes with a choice of side and drink.	8.39	ebec60b6-151c-57d3-99f0-b9d2391a0584
Kids Grilled Cheese	Made with ooey, gooey melted American cheese on a buttered and toasted Potato bread. Comes with a choice of side and drink.	8.39	dadc18a6-9cd3-535a-8da6-f6a4f9526735
2 for $25 (Price may vary by location or selection.)	Two Entrees + One Appetizer\n(For menu item descriptions, please see the regular menu item)	30.09	96fd41ee-7043-5a28-8cb3-67a8fefbbcea
Fruit Smoothies	Blended with natural ingredients for a delicious, fresh taste. Choose from Strawberry Banana, Mango or Pina Colada. Or, try our NEW Smoothie Swirls - Strawberry Mango, Strawberry Colada.	3.59	47cdcf46-5ed8-5767-9b11-fbc69ef3b856
Flavored Iced Teas	Delicious fresh brewed iced tea in your choice of flavor.  Choose from mango or peach. (Additional flavors may be available, based on location)	2.09	ac75cbd3-8832-546e-9a17-6014e0b33f44
Flavored Lemonades	Bright and refreshing lemonade in your choice of flavor.  Choose from classic, Blue Raspberry, Dragon Fruit, and Strawberry. (Additional flavors may be available, based on location)	2.09	e1b6b189-6065-5289-83fa-116309e04ad9
Fountain Drinks	Satisfy your taste buds with our line-up of cold fountain drinks.	2.39	47bbfacc-4a1a-5eff-9579-0a0c2bc4c52b
16.9 oz Bottles		0	8afcd376-7c5a-5cd9-af39-14cf653ea4df
Bottled Water		2.79	4d981d95-6cc1-5a7f-af33-3e31a17bd424
Lemonade - Serves 6-8	Serves 6-8	12.09	fc08be1a-0e77-5176-a2ba-3a36589bec13
Brewed Iced Tea		2.39	3215af2b-6e28-52f3-a9a7-374f6bbf5606
Iced Tea - Serves 6-8	Serves 6-8	12.09	fccfce11-3d32-5fa3-b73a-75679d5705a2
Brewed Sweet Iced Tea		2.39	84544435-4bc5-5681-adfd-b235da2ee896
Sweet Tea - Serves 6-8		12.09	2e6b32b5-67db-5ef0-bb98-4f48e7331293
Fresh Brewed Coffee		2.39	7a89022b-7011-525a-93d4-3f17f4b5672d
Decaffeinated Coffee		2.39	23cd1607-4999-5440-a0f7-ee04272d881f
Hot Tea		2.39	616c15b1-f673-55f7-b02a-e5617c364712
Red Bull		0	f6f89139-3c47-5946-988a-87dc8cdbbd43
Sugar Dusted Donut Dippers	Golden brown, crispy, and delicious donut bites tossed and shaken in powdered sugar. Served hot and fresh in the bag ready to dip in Caramel and Hot Fudge dipping sauces.	8.39	5b64afda-7356-5ad1-83d3-f62bd4a2f196
Triple Chocolate Meltdownr	Warm, rich, fudge-filled chocolate cake is drizzled with hot fudge. Served with vanilla ice cream.	8.99	1228fed5-994c-5f41-a02b-747293447628
Sauces		0	e7dbda59-729c-5b3a-be20-4ffe2a7c6722
Add Breadstick (1)		1.19	266734b6-8ab9-534c-9853-8c38bd0b3d5f
Basket Fries		5.99	3365ccf8-61d0-53bb-8c4c-ed7d6815a943
Basket of Waffle Fries		5.39	454d627f-3dd6-5921-bf99-57e8fa55ae60
Side Crunchy Onion Rings		4.79	97b1c29b-d3d8-530d-a5a4-03b8899ddfc1
Side Garlic Mashed Potatoes		4.19	e9557da6-6308-5d27-889d-9f8b7cd6d20f
Side Steamed Broccoli		4.19	ec2b241d-e52e-5c87-8ccf-aaf02806731d
Side Garlicky Green Beans		4.19	b31aee24-99dd-59b0-a1f6-f430eaecc2e5
Side Homestyle Cheesy Broccoli		4.79	db8502a5-de8c-57f3-bdc9-1961758a49ff
Side French Onion Soup		7.19	b8174160-287b-564e-a155-0a858676d9c1
Side House Salad		7.19	a582974d-1fc3-51e0-827e-f46c07a376df
Side Caesar Salad	Small Caesar Salad	7.19	2d6496b9-4529-595b-a1b5-cd9f721fed36
Cheetosr Original Crunchy Cheese Snack Bag	Bring a cheesy, delicious crunch to snack time with a bag of CHEETOSr Crunchy Cheese Flavored Snacks. Made with real cheese for maximum flavor.\n\n2 oz. bag	1.99	7f5ff444-fc37-5b4a-b2bf-0514d6641dfe
Extra House-Made Ranch Dressing		0.69	54a2229d-f5e6-55c8-9b13-2f1b0afca6af
Extra Bleu Cheese		0.69	1e99696e-1d67-5d97-8c1b-b0f99ccfdea8
Extra Mexi Ranch Dressing		0.69	c34fcae1-6560-56ed-9fc7-aafb3fe4ee51
Extra Marinara		0.69	8df541bb-cc60-5634-8892-ee33658ddfd4
Dressings		0	0cb62c95-0949-5695-8dbf-9bfa95b0e6cd
Wing Sauces		0	19cedcea-8807-52ef-914e-097cc64e8091
Extra Oriental Vinaigrette		0.69	33396ad4-4acc-5f33-9c0f-f9eeff1fe6f6
Dijon Honey Mustard		0.69	7f4ca74e-2f58-5272-b5a9-83e1463a720a
Blackened Cajun Salmon	6 oz. blackened salmon fillet grilled to perfection. Served with garlic mashed potatoes and steamed broccoli.	21.59	7dd8a66c-1b24-59e7-981c-9d6db7158c0b
Hand-Battered Fish & Chips	Golden, crispy battered fish with fries. Comes with our signature coleslaw and a lemon wedge.	19.19	cc8529e2-86a7-5372-b6d3-9950cbdb76c3
Double Crunch Shrimp	Crispy battered shrimp are fried golden brown. Served with cocktail sauce, our signature coleslaw and fries.	19.19	ca9cc222-0730-5892-933f-d26bea495ef5
Breadsticks with Alfredo Sauce	Five golden brown signature breadsticks brushed with buttery garlic and parsley. Served with creamy Alfredo sauce for dipping.	8.39	8e404fa2-e987-5fc5-8547-72dd9e5a97c2
Classic Broccoli Chicken Alfredo	A neighborhood favorite. Juicy grilled chicken is served warm on a bed of fettuccine pasta tossed with broccoli and rich Alfredo sauce topped with Parmesan cheese. Served with a golden brown signature breadstick brushed with buttery garlic and parsley.	20.39	8c350832-13fb-58c8-a14c-4889f28cd9a0
Classic Blackened Shrimp Alfredo	Blackened Shrimp is served warm on a bed of fettuccine pasta tossed with broccoli and rich Alfredo sauce topped with Parmesan cheese. Served with a golden brown signature breadstick brushed with buttery garlic and parsley.	21.59	9d8aad23-5fa8-51fe-bfb5-8868ecc10a16
Three Cheese Chicken Penne	Asiago, Parmesan and white Cheddar are mixed with penne in a rich Parmesan cream sauce then topped with grilled chicken breast and bruschetta tomatoes. Served with a golden brown signature breadstick brushed with buttery garlic and parsley.	20.39	8916bbaf-a735-5769-b682-ae6effac2af4
Four Cheese Mac & Cheese with Honey Pepper Chicken Tenders	A sweet and savory take on comfort food, four-cheese penne mac & cheese is topped with Applewood-smoked bacon and crispy chicken tenders tossed in honey pepper sauce. Served with a golden brown signature breadstick brushed with buttery garlic and parsley. (Note: sauce contains bacon and cannot be removed)	20.39	71a2a9b4-650b-5c3f-855a-353b49cf01a4
Cheetosr Original Boneless Wings	A mischievous twist on the traditional wing sauce with the original Cheetosr flavor you know and love. Tossed in sauce and coated in crunchy Cheetosr crumbles. Served with celery and house-made buttermilk ranch or Bleu cheese dressing.	17.99	1ea2739b-cb00-560c-bdbf-a8d48016c8ac
Cheetosr Original Double Crunch Bone-In Wings	A mischievous twist on the traditional wing sauce with the original Cheetosr flavor you know and love. Tossed in sauce and coated in crunchy Cheetosr crumbles. Served with celery and house-made buttermilk ranch or Bleu cheese dressing.	20.99	8565efb5-2b0c-5d0b-a053-62d1c55ee3b4
Cheetosr Original Crunchy Cheese Snack Bag	Bring a cheesy, delicious crunch to snack time with a bag of CHEETOSr Crunchy Cheese Flavored Snacks. Made with real cheese for maximum flavor.\n\n2 oz. bag	1.99	320e0372-4a7b-5494-950d-98d972768590
Silverware		0	ba486e4c-6324-5a3b-8476-128ff3704c42
No Silverware		0	4678476b-3ee9-5293-810f-415e78023404
Famous Bowl	Creamy mashed potatoes, sweet corn, and bite-sized chunks of crispy chicken are layered together then drizzled with home-style gravy and topped with a perfect blend of three shredded cheeses.	7.55	d73f106b-3c9f-58f2-bb75-f7bf61d6f348
8 pc. Family Bucket Meal	Feeds 3-4. 8 pieces of our freshly prepared World Famous Chicken, available in Original Recipe or Extra Crispy, 2 large sides of your choice, and 4 biscuits.	31.19	8ffe70d2-7232-5a6e-a83b-b937e36714f9
Spicy Chicken Sandwich	An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun.	6.59	de9c4630-1125-5fe2-99ff-62fd23e64399
Large Popcorn Nuggets	All white meat Popcorn Nuggets.	7.19	c32bbe4a-3c3e-5606-9e69-c57e711b9889
Nashville Hot Crispy Tenders Combo	3 pc. or 5 pc. Extra Crispy tenders with Nashville Hot, a side of your choice, a biscuit, and a medium drink.	10.19	d45ce914-fab5-57b4-9508-231180172569
2 pc. Drum & Thigh Combo	A drumstick & thigh, individual mashed potatoes and gravy, biscuit, and a medium drink. (540-1100 calories) For a limited time only at participating locations. Prices may vary. Includes drum and thigh, mashed potatoes, 1 med. drink, 1 biscuit. Offer not available on third party ordering websites/apps. No substitutions. Tax extra.	7.2	06422b86-d74f-5c02-b8df-f9ff015525f5
Crispy Tenders Combo	4 or 5 Extra Crispy tenders, a side of your choice, a biscuit, 2 dipping sauces, and a medium drink.	10.79	a91d2457-cd04-5c4a-9dc1-e5cae9e73a63
2 pc. Drum & Thigh Big Box	A drumstick & thigh, 2 sides of your choice, biscuit, and a medium drink. (550-1610 calories) Prices and participation may vary. Includes drum and thigh, 2 sides, 1 med drink, 1 biscuit. No substitutions. Tax extra.	10.79	be7aee5a-c3db-58f3-891c-dd0fd8f538c6
Mac & Cheese Bowl Combo	Our Mac & Cheese Bowls combine KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend. Includes a side and medium drink of your choice.	10.79	d8ac5ddf-4819-53b8-8c03-454fa93c6064
Spicy Mac & Cheese Bowl Combo	Our Mac & Cheese Bowls combine KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend. Includes a side and medium drink of your choice.	10.79	ef17b5c2-c9a0-5add-9639-4f53d9b4f23e
Spicy Mac & Cheese Bowl Combo	Our Spicy Mac & Cheese Bowl combines KFCs rich and creamy mac and cheese, topped with crispy chicken, Nashville Hot sauce, and sprinkled with a three-cheese blend. Includes a medium drink.	7.19	d90c756c-0159-52ff-a735-3bc137bdd8ab
Classic Chicken Sandwich Combo	Our Classic Chicken Sandwich (An extra crispy filet with premium pickles, mayo, on a brioche-style bun), side of your choice, and medium drink of your choice.	10.79	39448546-f845-505e-b4f8-c4736cf9f329
Crispy Tenders Combo	4 or 5 Extra Crispy tenders, a side of your choice, a biscuit, 2 dipping sauces, and a medium drink.	10.79	a91d2457-cd04-5c4a-9dc1-e5cae9e73a63
Famous Bowl Fill Up	A Famous Bowl with a cookie and your choice of a medium drink.	9.59	6361584c-1de8-5242-984e-c7cbf045a13a
Classic Chicken Sandwich Combo	Our Classic Chicken Sandwich (An extra crispy filet with premium pickles, mayo, on a brioche-style bun), side of your choice, and medium drink of your choice.	10.79	39448546-f845-505e-b4f8-c4736cf9f329
Spicy Chicken Sandwich Combo	Our Spicy Chicken Sandwich (An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun), side of your choice, and medium drink of your choice.	10.79	ba4adb20-1702-5b9a-b7b3-cd4af1c4deac
Popcorn Nuggets Combo	Large Popcorn Nuggets with a side of your choice, your choice of a dipping sauce, a biscuit, and a medium drink.	10.19	bf8b5fc8-2ceb-5221-a103-efe325ec48ad
3 pc. Crispy Tenders Combo	3 Extra Crispy tenders, a side of your choice, a biscuit, a dipping sauce, and a medium drink.	9.59	b15dd5f0-c344-5d3b-a815-1154285ce4de
Crispy Tenders Combo	4 or 5 Extra Crispy tenders, a side of your choice, a biscuit, 2 dipping sauces, and a medium drink.	10.79	a91d2457-cd04-5c4a-9dc1-e5cae9e73a63
5 pc. Crispy Tenders Box	5 Extra Crispy tenders, 2 sides of your choice, a biscuit, 2 dipping sauces, and a medium drink.	14.39	d8546b08-3d67-5f44-b9f3-ea3cd82fe2be
Nashville Hot Crispy Tenders Combo	3 pc. or 5 pc. Extra Crispy tenders with Nashville Hot, a side of your choice, a biscuit, and a medium drink.	10.19	d45ce914-fab5-57b4-9508-231180172569
Chicken Littles Combo	2 Chicken Littles available in Extra Crispy, Honey BBQ, Buffalo, or Nashville Hot, a side of your choice, and a medium drink.	9.59	049fc331-b17e-5f7e-ba00-c8e0a68115c5
Chicken Littles Combo	2 Chicken Littles, a side of your choice, and a medium drink.	9.59	73c0e9a0-57fd-52f1-948d-3938fa9b2051
4 pc. Chicken Combo	A breast, thigh, drum, & wing available in Original Recipe or Extra Crispy, a side of your choice, a biscuit, and a medium drink.	13.19	31b033f1-d8f1-5143-85db-a4fcc0182f48
1 pc. Breast Fill Up	A breast, available in Original Recipe or Extra Crispy, a side of your choice, a biscuit, a cookie, and a medium drink.	9.59	98ec1a70-a78a-5e88-98f1-297d61eca821
2 pc. Drum & Thigh Combo	A drumstick & thigh, individual mashed potatoes and gravy, biscuit, and a medium drink. (540-1100 calories) For a limited time only at participating locations. Prices may vary. Includes drum and thigh, mashed potatoes, 1 med. drink, 1 biscuit. Offer not available on third party ordering websites/apps. No substitutions. Tax extra.	7.2	06422b86-d74f-5c02-b8df-f9ff015525f5
2 pc. Drum & Thigh Big Box	A drumstick & thigh, 2 sides of your choice, biscuit, and a medium drink. (550-1610 calories) Prices and participation may vary. Includes drum and thigh, 2 sides, 1 med drink, 1 biscuit. No substitutions. Tax extra.	10.79	be7aee5a-c3db-58f3-891c-dd0fd8f538c6
2 pc. Breast & Wing Combo	A breast & wing, available in Original Recipe or Extra Crispy, a side of your choice, a biscuit, and a medium drink.	10.79	e6818aa3-d2bb-59b5-a852-dff3e078a187
3 pc. Chicken Combo	3 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy, a side of your choice, a biscuit, and a medium drink.	11.99	cd2b1e68-8fbb-54fd-b28c-b5152ae1a0a3
3 pc. Chicken Box	3 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy, 2 sides of your choice, a biscuit, and a medium drink.	13.19	e2de4584-f03a-520f-9dd3-f7209e49a662
Classic Chicken Sandwich Combo	Our Classic Chicken Sandwich (An extra crispy filet with premium pickles, mayo, on a brioche-style bun), side of your choice, and medium drink of your choice.	10.79	39448546-f845-505e-b4f8-c4736cf9f329
Spicy Chicken Sandwich Combo	Our Spicy Chicken Sandwich (An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun), side of your choice, and medium drink of your choice.	10.79	ba4adb20-1702-5b9a-b7b3-cd4af1c4deac
Classic Chicken Sandwich	An extra crispy filet with premium pickles, mayo, on a brioche-style bun.	6.59	3f6bbb99-9f5a-5b8d-97ff-9a14a2d5b6b7
Spicy Chicken Sandwich	An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun.	6.59	de9c4630-1125-5fe2-99ff-62fd23e64399
Chicken Littles Combo	2 Chicken Littles available in Extra Crispy, Honey BBQ, Buffalo, or Nashville Hot, a side of your choice, and a medium drink.	9.59	049fc331-b17e-5f7e-ba00-c8e0a68115c5
Chicken Littles Combo	2 Chicken Littles, a side of your choice, and a medium drink.	9.59	73c0e9a0-57fd-52f1-948d-3938fa9b2051
Chicken Little	A Chicken Little available in Extra Crispy, Honey BBQ, Buffalo, or Nashville Hot.	3.59	ff3a7afe-6ad8-5449-a9db-edf47aed17ca
Chicken Little	A Chicken Little sandwich.	3.59	135b06ba-0dc4-58bd-84f4-4dd4ed40ace4
Classic Chicken Sandwich Box	Our Classic Chicken Sandwich (An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun), 3 sides of your choice, and medium drink of your choice.	13.19	5d7082b5-e932-5b35-a494-02a191bd89b3
Spicy Chicken Sandwich Box	Our Spicy Chicken Sandwich (An extra crispy filet with premium pickles, spicy mayo, on a brioche-style bun), 3 sides of your choice, and medium drink of your choice.	13.19	058bea94-295d-5cef-977a-06f39e96c2bf
3 pc. Crispy Tenders Combo	3 Extra Crispy tenders, a side of your choice, a biscuit, a dipping sauce, and a medium drink.	9.59	b15dd5f0-c344-5d3b-a815-1154285ce4de
5 pc. Crispy Tenders Box	5 Extra Crispy tenders, 2 sides of your choice, a biscuit, 2 dipping sauces, and a medium drink.	14.39	d8546b08-3d67-5f44-b9f3-ea3cd82fe2be
Nashville Hot Crispy Tenders Combo	3 pc. or 5 pc. Extra Crispy tenders with Nashville Hot, a side of your choice, a biscuit, and a medium drink.	10.19	d45ce914-fab5-57b4-9508-231180172569
A La Carte Crispy Tender	1 Extra Crispy tender with dipping sauce.	2.99	096b906c-cbd3-58e6-b15b-236d19b812ef
Popcorn Nuggets Combo	Large Popcorn Nuggets with a side of your choice, your choice of a dipping sauce, a biscuit, and a medium drink.	10.19	bf8b5fc8-2ceb-5221-a103-efe325ec48ad
Large Popcorn Nuggets	All white meat Popcorn Nuggets.	7.19	c32bbe4a-3c3e-5606-9e69-c57e711b9889
Mac & Cheese Bowl Combo	Our Mac & Cheese Bowls combine KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend. Includes a side and medium drink of your choice.	10.79	d8ac5ddf-4819-53b8-8c03-454fa93c6064
Spicy Mac & Cheese Bowl Combo	Our Mac & Cheese Bowls combine KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend. Includes a side and medium drink of your choice.	10.79	ef17b5c2-c9a0-5add-9639-4f53d9b4f23e
Spicy Mac & Cheese Bowl Combo	Our Spicy Mac & Cheese Bowl combines KFCs rich and creamy mac and cheese, topped with crispy chicken, Nashville Hot sauce, and sprinkled with a three-cheese blend. Includes a medium drink.	7.19	d90c756c-0159-52ff-a735-3bc137bdd8ab
Spicy Famous Bowl Combo	A Famous Bowl with our signature Nashville Hot sauce, a cookie and your choice of a medium drink.	9.59	b23afbe2-8903-5be0-aaf6-2de94b4b17f1
Mac & Cheese Bowl	Our Mac & Cheese Bowl combines KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend.	6	9e4f3c56-11be-5586-abfe-b66c7fc8a1ba
Spicy Mac & Cheese Bowl	Our Mac & Cheese Bowl combines KFCs rich and creamy mac and cheese, topped with crispy chicken, and sprinkled with a three-cheese blend.	6	18dc04ef-1602-5125-a946-d1186d38a0fa
Famous Bowl	Creamy mashed potatoes, sweet corn, and bite-sized chunks of crispy chicken are layered together then drizzled with home-style gravy and topped with a perfect blend of three shredded cheeses.	7.55	d73f106b-3c9f-58f2-bb75-f7bf61d6f348
Spicy Famous Bowl	Creamy mashed potatoes, sweet corn, and bite-sized chunks of crispy chicken are layered together then drizzled with home-style gravy and topped with a perfect blend of three shredded cheeses and our signature Nashville Hot sauce.	8.15	4e3987b6-2aa2-5d83-8d65-85c17102595b
Pot Pie Fill Up	Classic chicken pot pie with a cookie and your choice of a medium drink.	9.59	62f6aedb-12f9-5da2-8815-9f0b5cb56895
8 Tenders Family Bucket Meal	Feeds 3-4. 8 pieces of our freshly prepared Extra Crispy Tenders, 2 large sides of your choice, 4 biscuits and 4 dipping sauces.	31.19	ca41d911-3fe9-5b92-816e-1d94af2cc86c
12 Tenders Family Bucket Meal	Feeds 3-4. 12 of our freshly prepared Extra Crispy Tenders, 3 large sides of your choice, 6 dipping sauces, and 6 biscuits.	43.19	b56fdbee-08be-5a3e-8663-31e3b864abd9
16 Tenders Family Bucket Meal	Feeds 7-8. 16 pieces of our freshly prepared Extra Crispy Tenders, 4 large sides of your choice, 8 biscuits and 8 dipping sauces.	55.19	73b73052-29c1-5414-a0bb-2b5f4b3d1c89
8 Tenders Bucket	8 pieces of our freshly prepared Extra Crispy Tenders served with 4 dipping sauces.	21.59	f60bc4ce-2561-5cc3-805a-19a9be5b90e8
12 Tenders Bucket	12 pieces of our freshly prepared Extra Crispy Tenders served with 6 dipping sauces.	29.99	e46452bd-bc69-57ee-8021-3ea5fc9656bc
16 Tenders Bucket	16 pieces of our freshly prepared Extra Crispy Tenders served with 6 dipping sauces.	38.39	e8a54f0f-4fef-5a7b-8c46-90948f84cf63
8 pc. Chicken	8 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	21.59	697218b8-4a4c-5ed5-bdcf-599cbe8f95ef
8 pc. Family Bucket Meal	Feeds 3-4. 8 pieces of our freshly prepared World Famous Chicken, available in Original Recipe or Extra Crispy, 2 large sides of your choice, and 4 biscuits.	31.19	8ffe70d2-7232-5a6e-a83b-b937e36714f9
8 pc. Family Fill Up Bucket Meal	Feeds 3-4. 8 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy, 1 large mashed potatoes & gravy, 1 large mashed potatoes, 1 large cole slaw, and 4 biscuits.	32.39	f688e646-34be-590f-b7d9-5afc5fd5ef1c
12 pc. Chicken	12 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	29.99	d1bab250-57bd-5346-a742-ef4f47b3fd4c
12 pc. Family Bucket Meal	Feeds 5-6. 12 pieces of our freshly prepared World Famous Chicken, available in Original Recipe or Extra Crispy, 3 large sides of your choice, and 6 biscuits.	43.19	16259f84-9dfd-5bae-82ce-6e02a1d4c70e
16 pc. Chicken	16 pieces of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	38.39	20c1e8cb-5c0e-57a7-b587-12fde441942d
16 pc. Family Bucket Meal	Feeds 7-8. 16 pieces of our freshly prepared World Famous Chicken, available in Original Recipe or Extra Crispy, 4 large sides of your choice, and 8 biscuits.	55.19	2fee5e83-8533-5a0e-a74a-88c45037ee58
Secret Recipe Fries	Crispier than your average fry and seasoned with our Secret Recipe.	3.59	55ddf8f3-1d7e-5d13-a18d-8e30dd9e0f72
Mashed Potatoes & Gravy	Creamy mashed potatoes and our signature brown gravy.	3.59	16d83c0a-4d73-5a1a-ac9e-dc5dc3a28a65
Mac & Cheese	Elbow macaroni covered in a rich, creamy cheddar cheese sauce.	3.59	2e1b5d51-c682-59cc-bf7a-465e00e3b69b
Cole Slaw	Freshly prepared in restaurant with cabbage, carrots, onion, and our signature dressing.	3.59	3874f1f1-52c4-5c8e-9cec-880ffe830a3a
Gravy	Our signature brown gravy.	0.95	9ab388ca-6522-5068-b60e-0b7d419745db
Whole Kernel Corn	Sweet yellow corn.	3.59	58e99e4b-f9d8-523c-86c9-eb527b2fb750
Mashed Potatoes (No Gravy)	Creamy mashed potatoes.	3.59	718bc357-875e-5a1b-9677-4cff47343a90
2 Biscuits	Warm, flaky, southern-style biscuits.	1.91	2132d8c7-ac8e-5087-a4e6-f6449c9ee416
Chicken Little	A Chicken Little available in Extra Crispy, Honey BBQ, Buffalo, or Nashville Hot.	3.59	ff3a7afe-6ad8-5449-a9db-edf47aed17ca
Chicken Little	A Chicken Little sandwich.	3.59	135b06ba-0dc4-58bd-84f4-4dd4ed40ace4
A La Carte Breast	1 Breast piece of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	3.78	ce9be8de-81bd-559f-a732-7aefdb6c16eb
A La Carte Drum	1 Drum piece of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	2.99	dd0f69b9-c2fa-594b-8cd9-befc9770787c
A La Carte Thigh	1 Thigh piece of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	2.99	d7fd4a1d-a60e-5e09-9507-3a4c75153365
A La Carte Wing	1 Wing piece of our freshly prepared chicken, available in Original Recipe or Extra Crispy.	2.99	7d5f1684-3232-54b5-a74c-0032475705b4
A La Carte Crispy Tender	1 Extra Crispy tender with dipping sauce.	2.99	096b906c-cbd3-58e6-b15b-236d19b812ef
12 Chocolate Chip Cookies	12 of our signature chocolate chip cookies.	7.19	584738f5-80fc-5633-b923-9bb5f7f87c5d
Buffalo Ranch		0.3	e227cc81-b4d2-527a-8d77-b2eafafff751
Classic Ranch		0.3	a922c302-5bab-5cce-9d49-941190166ac9
KFC Sauce		0.3	b1126385-78a0-5a6b-809a-3e0d30438c09
Honey BBQ Sauce		0.3	589123cd-5e67-522b-9e40-4781fb30b7e5
Honey Mustard Sauce		0.3	c35f0a0e-7497-56d4-a327-723d7678996d
Honey Sauce		0	d3e54b11-e080-56f2-a0e9-83207e4d7f2c
Hot Sauce		0	301bdfb4-765f-5b57-9322-2b58295dbb60
Ketchup		0	7ca2288e-0cbe-5b2a-8fd5-fadfc3998e81
Pepsi	Pepsi	3.11	5030cf4e-a12d-5fe0-ac1d-0cc3e2e49f50
Diet Pepsi	Diet Pepsi	3.11	eef8ff79-c904-5b24-bb9c-a13bceec5ae1
Mountain Dew	Mountain Dew	3.11	71dab78d-4f62-5cd4-8df7-6db20b23f1e8
Mountain Dew Sweet Lightning	Mountain Dew Sweet Lightning	3.11	2b351dba-e9ce-5ff1-a406-3be16c9a5d90
Sierra Mist	Sierra Mist	3.11	5da9cc6e-464b-502e-92d7-276361fd6603
Bottled Water	Bottle of Aquafina water.	3.11	952aa47e-3a08-576e-aba9-1afd9754c08c
Colonel Lemonade	Colonel Lemonade	3.11	b6454dd9-f6d2-5b40-acd3-fed59c41248f
Dr. Pepper	Dr. Pepper	3.11	a41f08d0-a0c8-5ff4-b38b-9d564ee55fa6
\.


--
-- Data for Name: MenuSection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MenuSection" ("menuSectionName", "menuSectionDescription", "menuSectionId") FROM stdin;
Picked for you	\N	7e12b8f3-4d07-51f8-a8ba-83c72b7a5065
Appetizers	\N	4076cdc7-930f-55d8-9718-f48ccc3c8467
Steaks & Ribs	\N	2bdf1cf4-f407-5bf8-beca-b692e57562a7
Picked for you	\N	7e12b8f3-510f-5104-b07d-72bf4f7200ef
Entrees	\N	c3444e60-c80e-56ce-be96-0c291f9574f1
Lifestyle Bowls	\N	5c328212-ec4f-5530-b0e7-fde2869ed21e
Sides	\N	c6ef2787-cde9-5737-a46d-0677999ba2a6
Drinks	\N	2e0967b3-1156-53d9-98bb-74740976298f
Picked for you	\N	7e12b8f3-afc4-5469-a66c-9aca10407bfc
Tamales	Celebrate the holiday season with our Tamales. Filled with seasoned shredded pork, fire roasted salsa, stone ground corn masa and individually hand wrapped the authentic way with real corn husk. Single, 2 Pack and 4 Pack. \n\nAvailable for a limited time only, 10AM - 10PM. 	d67838ea-6c89-5b6f-bc24-759af9d1bd98
20 Under $2 Menu	\N	08b50231-ca3e-5375-90a0-a773756fd38d
Picked for you	\N	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
Appetizers	\N	6e200ded-02c9-52ea-a752-40ddd32ebd98
Wings	\N	2e873fd8-6069-5677-87ae-4c31d883c4b4
Salad	\N	54ac4ef7-664c-5c51-b869-5b37872cf0c2
Pizzas	\N	8b43958a-e83f-574f-9c87-b826578cf69a
Specialty Pies	\N	78cc1ec8-d147-5962-86f2-b1966d1566a8
Pasta and Entree	\N	59a5f226-05ce-5a9f-a840-fcb5769f91bb
Calzones	\N	4f5927c8-45ce-5374-94fb-bcdaabe1bceb
Desserts	\N	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
Beverages	\N	8bfb7427-ebfe-5995-8fb6-c8b968169675
Picked for you	\N	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
Appetizers	\N	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
Salad and Soup	\N	6d352052-14d8-43ee-b887-d7e9df9f33f0
Chicken Dishes	\N	5d51b1be-7db2-4d81-8e22-8ff0087606b2
Beef and Pork Dishes	\N	dd954a97-bcbc-437e-aef2-67f306f99fbf
Vegetarian Dishes	\N	e899c9dc-3ba2-4b19-8830-073301b3ed14
Seafood	\N	df33942b-bdf4-4c23-8c1b-147478681049
Side Orders	\N	738fdb6b-b44b-4eb3-a9b6-eae69a7f12c8
Desserts	\N	2ec82d7b-42c8-4eed-9d6c-9d9e8bce02b8
Beverages	\N	333f20d9-2b48-423c-a3ae-b614f7d27324
Picked for you	\N	7e12b8f3-ef3a-5542-bb59-369d94639384
Pizza Napoletana	\N	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
Homemade Pasta	Hand crafted Recipes & ingredients imported straight from Italy!	2875ba32-cca3-54bb-a645-a4e3fd9f1047
Panini	\N	21cc3254-a4b9-53f6-be83-cb55a286e058
Antipasti	\N	e0100ad5-1666-52ca-956d-d1764ebe3319
Picked for you	\N	7e12b8f3-99d8-5c00-af7a-b38348955aa0
Appetizers	\N	eabea3fe-4185-4960-8c6b-08aac67af013
Soup	\N	832434e4-ef61-4c4d-8394-75784a145139
Chefs Special	\N	7dbdf808-1f87-4191-9b1d-60b83bfe1166
Fried Rice	\N	02896984-1fd8-416a-bcbc-ae9da71163d0
Lo Mein	\N	b928cfab-edc1-4b9e-a606-ebca5fc93919
Rice Noodle	\N	8434d2c9-22f5-4c93-bba9-5ae20e36b288
Chow Fun	\N	81a2345a-40a9-4347-8315-2cb847ff8439
Chop Suey	\N	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
Chicken	\N	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
Beef	\N	fb222788-4357-4ae9-9c2d-e216589bdf6c
Shrimp	\N	20b6daff-85e7-4345-9f31-0b37bdaa78ca
Pork	\N	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
Egg Foo Young	\N	4e662a23-0426-4491-a8c0-cdd00813390a
Vegetable	\N	6768f911-1029-47d5-8ece-b301ec187801
Drinks	\N	ad67fcdb-4856-44e1-bdce-727ce41394ba
Rice Bowls	\N	41eb3678-4983-4c8d-bca5-eaa1d1739885
Dinner Combo	\N	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
Side Order	\N	a758028a-4163-4dd0-8e92-f709f5f45399
Dessert	\N	416dbf29-4e78-43db-ab9d-31fb01d2d9ed
Handcrafted Burgers	\N	3e3b4899-003f-51b4-bad1-6982eb091137
Chicken	\N	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
Sandwiches & More	\N	ccfcd933-634b-5d5f-a9ed-929a5473f15d
Salads	\N	e1911682-b394-58fb-8e98-b3d503e15e2b
Irresist-A-Bowls	\N	1dff99ab-8f2a-5bf0-8081-705fe2cb53b5
Kids Menu	\N	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
2 for $24 - 29	\N	8035c92a-0929-59f7-8562-ecc0b9c0aa75
Non-Alcoholic Beverages	\N	e9cd457a-d53a-5d2f-9839-4132a0103b4c
Desserts	\N	13663156-7582-599e-a6b1-5018602c7acc
Extras	\N	d4c64f6c-e9f7-542e-99c7-077dba449369
Seafood	\N	0671d53b-2e66-5da6-9823-52bca92326b3
Pasta	\N	3e0edcae-6909-50b5-8ec2-63d55cd662c1
Cheetosr Exclusive  Flavors	\N	05472b82-4859-5818-a5b3-88aee2b150e4
ToGo	\N	850cd047-74b3-52a0-aa9f-45599ed0f788
Picked for you	\N	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
Featured	\N	f15720bd-3340-5a88-addb-a4df4070cfe3
Combo Meals	\N	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
Sandwiches	\N	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
Tenders	\N	fcec80f8-c236-5453-88c2-88ffc086c15d
Nuggets	\N	ce443f1e-f4da-5ed8-b396-f46192c094bf
Bowls & Pot Pies	\N	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
Family Meals	\N	7183428f-9b37-5dd8-9438-a83b3b7fef55
Sides & Add Ons	\N	f61f94f5-ae82-53d3-a37f-3c88ee75d437
Sauces	\N	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
Beverages	\N	e2670054-a26a-5515-8db1-6a9aaf799fe4
\.


--
-- Data for Name: MenuSectionToMenuItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MenuSectionToMenuItem" ("menuItemId", "menuSectionId") FROM stdin;
96fd41ee-7043-5a28-8cb3-67a8fefbbcea	7e12b8f3-4d07-51f8-a8ba-83c72b7a5065
1228fed5-994c-5f41-a02b-747293447628	7e12b8f3-4d07-51f8-a8ba-83c72b7a5065
7dd8a66c-1b24-59e7-981c-9d6db7158c0b	7e12b8f3-4d07-51f8-a8ba-83c72b7a5065
650b84bb-6a28-576f-8606-198ffd55aa23	151a1a2e-e93c-594d-845a-3f9620d9b3ac
0960fea5-4194-5125-a357-3257ed6bbf2b	151a1a2e-e93c-594d-845a-3f9620d9b3ac
ab565305-0fd9-5df0-9e14-75fe382a7d22	151a1a2e-e93c-594d-845a-3f9620d9b3ac
5f3617a1-eff9-5338-a1f2-1ae6e95c85c1	151a1a2e-e93c-594d-845a-3f9620d9b3ac
97debfc7-9793-540a-a39b-40420d364e0e	151a1a2e-e93c-594d-845a-3f9620d9b3ac
7a888c46-730f-54c8-8972-860e995843d5	4076cdc7-930f-55d8-9718-f48ccc3c8467
0c8145c2-ff6a-5ddc-8838-d05bc4f9de13	4076cdc7-930f-55d8-9718-f48ccc3c8467
3c0961c5-6311-5255-a683-76e85f9aedcd	4076cdc7-930f-55d8-9718-f48ccc3c8467
303e9e8a-8abc-5d02-8033-5e24eb381a42	4076cdc7-930f-55d8-9718-f48ccc3c8467
5c2a19fa-0904-5047-850c-f17ce909ba67	4076cdc7-930f-55d8-9718-f48ccc3c8467
ce1e1e75-c7b9-50a9-b3e0-b613a7325cc0	4076cdc7-930f-55d8-9718-f48ccc3c8467
45ef74ca-36b7-591b-9d47-c054f90d8fac	4076cdc7-930f-55d8-9718-f48ccc3c8467
f57f4bbb-9258-54ad-97d6-273f0b5896d7	4076cdc7-930f-55d8-9718-f48ccc3c8467
15f742c6-bc48-553b-9a1f-4b4ec1162808	4076cdc7-930f-55d8-9718-f48ccc3c8467
69485b69-1468-5c87-92d6-bff5a4c9dd18	4076cdc7-930f-55d8-9718-f48ccc3c8467
1d3ae392-e192-5009-a0ce-183efffbf59d	4076cdc7-930f-55d8-9718-f48ccc3c8467
683da624-dd3f-54c8-9c65-12c073ad50f9	4076cdc7-930f-55d8-9718-f48ccc3c8467
7eb1d279-3e7c-5c06-9035-528934088f3b	4076cdc7-930f-55d8-9718-f48ccc3c8467
ffe160e0-722a-5453-865f-dc9818406e6e	4076cdc7-930f-55d8-9718-f48ccc3c8467
c2b601e4-a492-5be2-a37d-982feded1fd9	4076cdc7-930f-55d8-9718-f48ccc3c8467
a37c4db0-6daa-5a7b-b3e4-cbcf7262342d	2bdf1cf4-f407-5bf8-beca-b692e57562a7
89e2664f-16c0-542e-8fbb-a1eb9fe6370c	2bdf1cf4-f407-5bf8-beca-b692e57562a7
7599a26f-a270-5704-a45a-d699f1463c6e	2bdf1cf4-f407-5bf8-beca-b692e57562a7
bdbcae4c-f8a4-5a4b-82e0-180251f74449	2bdf1cf4-f407-5bf8-beca-b692e57562a7
92e1a1e4-f085-5ddf-a7d7-66fa0be9bf8d	2bdf1cf4-f407-5bf8-beca-b692e57562a7
3021827c-2546-50bd-b18b-8ced206d484e	2bdf1cf4-f407-5bf8-beca-b692e57562a7
00e01911-ab3f-5dc1-a9e8-87e8c4d7dc64	2bdf1cf4-f407-5bf8-beca-b692e57562a7
d7894be9-fffd-5a92-8bdc-d9c21d7d2d87	7e12b8f3-510f-5104-b07d-72bf4f7200ef
cd5ba78e-58a0-53a2-82e4-a70ce1beb832	7e12b8f3-510f-5104-b07d-72bf4f7200ef
19110b3b-1c26-5e5b-9de7-002e97878598	7e12b8f3-510f-5104-b07d-72bf4f7200ef
0919f3c8-3390-54a5-8e70-a00d9c5be545	7e12b8f3-510f-5104-b07d-72bf4f7200ef
3a03a7d0-9eaf-5b1e-a6be-1a1dff89216e	7e12b8f3-510f-5104-b07d-72bf4f7200ef
cd5ba78e-58a0-53a2-82e4-a70ce1beb832	c3444e60-c80e-56ce-be96-0c291f9574f1
d7894be9-fffd-5a92-8bdc-d9c21d7d2d87	c3444e60-c80e-56ce-be96-0c291f9574f1
0919f3c8-3390-54a5-8e70-a00d9c5be545	c3444e60-c80e-56ce-be96-0c291f9574f1
4be675c9-1c20-5937-8d4c-fa4611b1176f	c3444e60-c80e-56ce-be96-0c291f9574f1
b890dc6c-b776-5d45-855c-bdb9f25bb042	c3444e60-c80e-56ce-be96-0c291f9574f1
05ed8bf3-3d4d-57ad-8b09-95bcefe25fee	c3444e60-c80e-56ce-be96-0c291f9574f1
b5200025-040a-556e-a0da-3ff5b8af65c8	c3444e60-c80e-56ce-be96-0c291f9574f1
460e92b0-3022-5e9b-a92d-ae753759a525	c3444e60-c80e-56ce-be96-0c291f9574f1
8a297e9e-9d43-51a4-b5d1-4ec78a233e36	5c328212-ec4f-5530-b0e7-fde2869ed21e
409e3681-3290-5ff1-8f92-fdc0df9a00ee	5c328212-ec4f-5530-b0e7-fde2869ed21e
cdb672ca-e291-55e0-a5fe-29db9786733c	5c328212-ec4f-5530-b0e7-fde2869ed21e
073e9fe3-cbc9-5228-bd9e-ca86483bdbdb	5c328212-ec4f-5530-b0e7-fde2869ed21e
4c4cb3c7-ab6e-5844-9e7a-485fcce8f7cf	5c328212-ec4f-5530-b0e7-fde2869ed21e
5d99668e-516a-5473-97b6-99735f991add	5c328212-ec4f-5530-b0e7-fde2869ed21e
9c2c0624-d6ca-5816-b598-4497e12d7b23	5c328212-ec4f-5530-b0e7-fde2869ed21e
201e044c-9b73-54be-8d81-8f6be0786597	5c328212-ec4f-5530-b0e7-fde2869ed21e
75f7f91a-54f0-5f3d-a20b-971c29ba4d35	5c328212-ec4f-5530-b0e7-fde2869ed21e
cc4e28fc-8757-587a-b5ae-2b058b44a8ba	c6ef2787-cde9-5737-a46d-0677999ba2a6
19110b3b-1c26-5e5b-9de7-002e97878598	c6ef2787-cde9-5737-a46d-0677999ba2a6
8bdcef92-0221-50d2-a9ba-880c8a3d5edc	c6ef2787-cde9-5737-a46d-0677999ba2a6
55fa1a5e-5261-5049-84d9-18d133075e0e	c6ef2787-cde9-5737-a46d-0677999ba2a6
075501b2-6a74-5b9f-b90a-abf3e1120838	c6ef2787-cde9-5737-a46d-0677999ba2a6
3a03a7d0-9eaf-5b1e-a6be-1a1dff89216e	c6ef2787-cde9-5737-a46d-0677999ba2a6
d776de59-3055-5d9e-920b-1eb5c6117fa5	c6ef2787-cde9-5737-a46d-0677999ba2a6
01e5163e-b28d-583b-814c-71f52a060588	c6ef2787-cde9-5737-a46d-0677999ba2a6
020be16c-691f-5222-b3a2-cdc7bcccbc19	c6ef2787-cde9-5737-a46d-0677999ba2a6
9c4c62d5-8316-5362-a942-75d298c99f0a	c6ef2787-cde9-5737-a46d-0677999ba2a6
d80bc78c-383b-5b2a-b7d5-7ddef6a743cb	c6ef2787-cde9-5737-a46d-0677999ba2a6
2181a2b2-3155-5f0f-a239-72370e388f79	c6ef2787-cde9-5737-a46d-0677999ba2a6
21183932-be85-5360-af6f-0bfb673fada9	c6ef2787-cde9-5737-a46d-0677999ba2a6
f56b1133-d90c-552b-b280-5837cff99c9e	c6ef2787-cde9-5737-a46d-0677999ba2a6
5c26a2fc-f08b-58a2-b0f2-0a56735a7419	2e0967b3-1156-53d9-98bb-74740976298f
9ec857e3-4a0e-5b3b-bdcd-1416ce3946ff	2e0967b3-1156-53d9-98bb-74740976298f
ae347c2d-fb4e-50da-bbe1-78c986e0ee9a	2e0967b3-1156-53d9-98bb-74740976298f
6cd93ae7-81f3-58e6-8262-6bc74b362796	2e0967b3-1156-53d9-98bb-74740976298f
70761a7c-f6f4-56fa-8bcf-e6092cb8a9b6	2e0967b3-1156-53d9-98bb-74740976298f
446eb5b7-bdee-5121-8d9d-21ff8a2662c8	2e0967b3-1156-53d9-98bb-74740976298f
79ae1c72-032f-5a58-b18c-9223678c61f9	2e0967b3-1156-53d9-98bb-74740976298f
bb86e174-eb6b-57a3-a7e2-66e104e44d8f	2e0967b3-1156-53d9-98bb-74740976298f
f27ac13f-6fb3-5c1d-afe3-95c4fa765b65	2e0967b3-1156-53d9-98bb-74740976298f
1075e2dc-3a7a-50ad-b156-026697e03e0d	2e0967b3-1156-53d9-98bb-74740976298f
92a5105d-3ef5-5b2f-b842-f73e12763807	2e0967b3-1156-53d9-98bb-74740976298f
ab8e0744-bc7a-5f60-a744-be5e3d8920fe	7e12b8f3-afc4-5469-a66c-9aca10407bfc
a1fa6f62-468c-5374-bfa1-0c185d753825	7e12b8f3-afc4-5469-a66c-9aca10407bfc
b22a2a3d-9912-57b3-9c76-3c1e25640798	7e12b8f3-afc4-5469-a66c-9aca10407bfc
dd30a961-46e1-58e7-87ed-4f08b2b73947	7e12b8f3-afc4-5469-a66c-9aca10407bfc
e5d9c02e-cb91-5d77-88e3-1cacb5305910	7e12b8f3-afc4-5469-a66c-9aca10407bfc
e333cdca-dc0c-57bc-a62b-0ae984f17c67	d67838ea-6c89-5b6f-bc24-759af9d1bd98
39b29693-29d6-5c35-8fa6-28435b8f236b	d67838ea-6c89-5b6f-bc24-759af9d1bd98
aa14d523-2b8e-5fa4-b68d-3aef3323197e	d67838ea-6c89-5b6f-bc24-759af9d1bd98
18ad47a3-0e94-54de-a4f3-0163add03b81	d67838ea-6c89-5b6f-bc24-759af9d1bd98
123c694c-9813-5c46-bb06-97c4e1e22a54	08b50231-ca3e-5375-90a0-a773756fd38d
f7256940-90b0-5bb9-b513-a8d559432cc9	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
f1a8d9bc-01cc-5e56-bc8c-f2f5be62f694	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
abbbbcc3-34f6-58b1-804a-7658572807d0	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
ada4899d-1521-5b82-adc6-17f5209a930d	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
e09e9347-3578-5dc6-b1fa-2d074ad52d1c	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
3cbe1858-9fc0-5531-9acd-d23a602f2595	6e200ded-02c9-52ea-a752-40ddd32ebd98
9289fdc3-bcb7-50d4-93bc-1c2dea7b6960	6e200ded-02c9-52ea-a752-40ddd32ebd98
09490203-741d-5366-820e-eb122124ff90	6e200ded-02c9-52ea-a752-40ddd32ebd98
e906b2d5-1cae-59d2-9d0c-302c0b44858c	6e200ded-02c9-52ea-a752-40ddd32ebd98
0750ca0a-a13a-5f30-83c6-6fe203eca2c6	6e200ded-02c9-52ea-a752-40ddd32ebd98
af6d6957-a663-5301-bf30-f445dfbf6f00	6e200ded-02c9-52ea-a752-40ddd32ebd98
24edf384-8e6f-5b68-8e5d-a2ada84fdee2	6e200ded-02c9-52ea-a752-40ddd32ebd98
d41290a4-5e86-5684-b81f-082dea7b80c8	2e873fd8-6069-5677-87ae-4c31d883c4b4
f1a8d9bc-01cc-5e56-bc8c-f2f5be62f694	2e873fd8-6069-5677-87ae-4c31d883c4b4
c10e1624-9360-53be-ad01-07b82e78727b	54ac4ef7-664c-5c51-b869-5b37872cf0c2
48d152bb-fcc9-5e69-a76e-a18cb163278d	54ac4ef7-664c-5c51-b869-5b37872cf0c2
457bd428-0b1b-58b5-adeb-97eb59cc4ff4	54ac4ef7-664c-5c51-b869-5b37872cf0c2
48dd21fd-1e20-57f2-ac20-c1ee4863d764	54ac4ef7-664c-5c51-b869-5b37872cf0c2
eeef4e20-148e-5d31-9773-1338948216be	54ac4ef7-664c-5c51-b869-5b37872cf0c2
3fa7ea27-47d2-5fdd-9a88-829b6ebdeabe	54ac4ef7-664c-5c51-b869-5b37872cf0c2
1f13175a-d52e-5898-8606-8f5f28c51b46	54ac4ef7-664c-5c51-b869-5b37872cf0c2
940bbd49-9604-5a57-8f55-0d12d6690dfd	54ac4ef7-664c-5c51-b869-5b37872cf0c2
68db1ab7-3164-56fc-9dd9-971ceb470ab1	54ac4ef7-664c-5c51-b869-5b37872cf0c2
d1e8e947-781b-55dc-adb5-bda6941afd37	54ac4ef7-664c-5c51-b869-5b37872cf0c2
d42a1ae0-be42-5712-8601-25083710a219	54ac4ef7-664c-5c51-b869-5b37872cf0c2
86ee80c5-8359-5058-ac2d-c199325e04cb	8b43958a-e83f-574f-9c87-b826578cf69a
ada4899d-1521-5b82-adc6-17f5209a930d	8b43958a-e83f-574f-9c87-b826578cf69a
9da4a0e4-2734-5ec4-bb75-e9a75e3d435f	8b43958a-e83f-574f-9c87-b826578cf69a
abbbbcc3-34f6-58b1-804a-7658572807d0	8b43958a-e83f-574f-9c87-b826578cf69a
f7256940-90b0-5bb9-b513-a8d559432cc9	78cc1ec8-d147-5962-86f2-b1966d1566a8
1f9b8cf8-249a-5f3e-98b7-72fb2d354887	78cc1ec8-d147-5962-86f2-b1966d1566a8
94c62829-9885-5afe-92fb-23f04b38e9b8	78cc1ec8-d147-5962-86f2-b1966d1566a8
5d2df51a-a51c-528b-a65d-1c05344f2909	78cc1ec8-d147-5962-86f2-b1966d1566a8
22bb7577-d851-5fea-9b58-2c90de673bc3	78cc1ec8-d147-5962-86f2-b1966d1566a8
1c6ffb69-406b-5cab-9348-664f165abad7	78cc1ec8-d147-5962-86f2-b1966d1566a8
73a3c86c-ad8d-51a4-be0f-c9fe88ab584b	78cc1ec8-d147-5962-86f2-b1966d1566a8
85714eb0-8d86-56a2-9061-c9c23f645ff1	78cc1ec8-d147-5962-86f2-b1966d1566a8
c0ec0b30-ce61-50d4-9224-67b11b3d2e11	78cc1ec8-d147-5962-86f2-b1966d1566a8
f9f84eb4-c7e9-5f95-ba4b-20f8cc2075fd	78cc1ec8-d147-5962-86f2-b1966d1566a8
161fc9fe-2f95-5f0e-88cc-3cd511164b26	78cc1ec8-d147-5962-86f2-b1966d1566a8
e09e9347-3578-5dc6-b1fa-2d074ad52d1c	78cc1ec8-d147-5962-86f2-b1966d1566a8
ae0d1735-6ccd-5297-8ebf-b2e09366bcbd	78cc1ec8-d147-5962-86f2-b1966d1566a8
f9395813-25be-54ca-bdf8-806234fb18a2	78cc1ec8-d147-5962-86f2-b1966d1566a8
bb4ff1b8-869f-5d10-87f8-647522bf533d	78cc1ec8-d147-5962-86f2-b1966d1566a8
e698c776-0111-5098-9997-60cc19a48bb2	78cc1ec8-d147-5962-86f2-b1966d1566a8
0f5f1177-9fa2-51b9-89b0-a03aacc20e8d	78cc1ec8-d147-5962-86f2-b1966d1566a8
3b2e5ec9-0680-56b5-aff8-96a1d241d3f1	78cc1ec8-d147-5962-86f2-b1966d1566a8
e9bc1802-5c8d-58df-84b1-45f0d11193dc	59a5f226-05ce-5a9f-a840-fcb5769f91bb
fc03bd9b-8d84-5ad4-a42c-746c2c6b9171	59a5f226-05ce-5a9f-a840-fcb5769f91bb
c4e006e5-851a-590f-b36c-27b2bb893a4a	59a5f226-05ce-5a9f-a840-fcb5769f91bb
eeb7e9a4-feb9-5afa-b9f6-47d27aec274e	59a5f226-05ce-5a9f-a840-fcb5769f91bb
0d61c524-33ac-5497-a538-6dd05eec082d	59a5f226-05ce-5a9f-a840-fcb5769f91bb
11fac108-a185-599a-a13e-cb1575feedbf	59a5f226-05ce-5a9f-a840-fcb5769f91bb
b341cf64-3612-53dd-bc77-1beeefff447c	59a5f226-05ce-5a9f-a840-fcb5769f91bb
5d96d878-8b06-5011-92ba-4f01767a4145	4f5927c8-45ce-5374-94fb-bcdaabe1bceb
60f57110-689d-50af-9016-8c1e13d5d62a	4f5927c8-45ce-5374-94fb-bcdaabe1bceb
ec26731f-68dd-5204-9c9f-accc136d1319	4f5927c8-45ce-5374-94fb-bcdaabe1bceb
b512ed6a-13d5-5b33-bb74-0b51074aab99	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
4e29092a-62f0-5628-bf57-f9f048742215	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
2190bc45-7802-5a44-b7c3-1c0c9d98bb17	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
9e657b90-cd34-5b7e-a2fc-0190a83fd23e	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
c0491dc2-3f3d-5b43-86da-52f385ef1712	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
6b077fed-2f67-592a-95dc-de8ccf3f4649	8bfb7427-ebfe-5995-8fb6-c8b968169675
85997463-8ca1-5273-9221-160340c487ca	8bfb7427-ebfe-5995-8fb6-c8b968169675
9b815875-d25b-5d0f-bdcc-1511477397b2	8bfb7427-ebfe-5995-8fb6-c8b968169675
98776c0f-0ec9-5fbc-99a1-96936fe3f10f	8bfb7427-ebfe-5995-8fb6-c8b968169675
64f338a3-5454-4bfe-9605-01a9095be25d	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
2f2c33c2-c01b-432f-8076-4bb2692bad85	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
89219444-89e0-4f64-b447-477ddf0f3c5d	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
61e33e5c-345b-404f-9505-21871546e4da	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
b491aed9-a8b6-4939-9120-14125d833947	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
77428671-89ac-455d-a043-4a07cf33de45	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
64f338a3-5454-4bfe-9605-01a9095be25d	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
b491aed9-a8b6-4939-9120-14125d833947	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
b6d2f244-f16b-41bf-81ec-d6b7a183b7e7	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
897a0820-2b5f-4fc8-b516-2aed4714eb64	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
ddbf0b60-aae7-4a39-b2c3-8f73fa0251da	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
4b33da34-53ee-4336-9363-63f4d84cb478	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
dac34536-ef4e-4884-8a75-8280b8cd4a3f	6d352052-14d8-43ee-b887-d7e9df9f33f0
798f81b6-2dcb-4f8c-a651-0f66715387b1	6d352052-14d8-43ee-b887-d7e9df9f33f0
f6883009-33f3-4f04-969a-61dd9655b38c	6d352052-14d8-43ee-b887-d7e9df9f33f0
fa7e3559-9e82-4adf-b64a-028659b07413	6d352052-14d8-43ee-b887-d7e9df9f33f0
b961825b-9366-44f7-88f3-2be155a64464	6d352052-14d8-43ee-b887-d7e9df9f33f0
eb5bb2cb-b3dd-490c-8c10-d7317b970a0c	6d352052-14d8-43ee-b887-d7e9df9f33f0
89219444-89e0-4f64-b447-477ddf0f3c5d	6d352052-14d8-43ee-b887-d7e9df9f33f0
2f2c33c2-c01b-432f-8076-4bb2692bad85	5d51b1be-7db2-4d81-8e22-8ff0087606b2
61e33e5c-345b-404f-9505-21871546e4da	5d51b1be-7db2-4d81-8e22-8ff0087606b2
77c20247-c788-41d6-a467-f8c570e33857	5d51b1be-7db2-4d81-8e22-8ff0087606b2
4d948293-be39-49f8-901b-7cc2c8f3ae6d	5d51b1be-7db2-4d81-8e22-8ff0087606b2
09cf976b-2d61-47a9-bfa7-4a2622a47702	5d51b1be-7db2-4d81-8e22-8ff0087606b2
e695e86c-cceb-4ef3-97bb-c1fa320a09d0	5d51b1be-7db2-4d81-8e22-8ff0087606b2
7395e362-e13a-4af9-8f03-52ac0d0d799d	5d51b1be-7db2-4d81-8e22-8ff0087606b2
13d2ecfb-7380-40d9-8088-7790147b94f6	dd954a97-bcbc-437e-aef2-67f306f99fbf
4b2b1b9c-6509-44bf-a6f8-cf6db2aa4dc1	dd954a97-bcbc-437e-aef2-67f306f99fbf
d7ac6e63-f37e-4e27-926f-f0f9fec4717a	dd954a97-bcbc-437e-aef2-67f306f99fbf
6170ef74-9d6b-4207-8f67-f388936c8f50	e899c9dc-3ba2-4b19-8830-073301b3ed14
81681e10-f145-45b7-8aa2-92850300b826	e899c9dc-3ba2-4b19-8830-073301b3ed14
87c94adb-ac39-4d3d-8ede-8ac0efff108f	e899c9dc-3ba2-4b19-8830-073301b3ed14
2ec552a6-c607-4010-bbe2-4887363e38ea	df33942b-bdf4-4c23-8c1b-147478681049
29c14dee-a12d-4b29-a32a-bce096e74ab8	df33942b-bdf4-4c23-8c1b-147478681049
bfa1d705-e785-4bfa-bc5c-be35f9f73e71	df33942b-bdf4-4c23-8c1b-147478681049
b4deba42-a6fa-4bcf-9d6f-79eb3f2d9fd2	738fdb6b-b44b-4eb3-a9b6-eae69a7f12c8
6617eb5b-4a34-4fa3-9893-ee81a2bfc175	738fdb6b-b44b-4eb3-a9b6-eae69a7f12c8
df7f628e-62a5-4cbd-abd5-61ed57a70a60	738fdb6b-b44b-4eb3-a9b6-eae69a7f12c8
2a5e37b2-88f3-49b9-9a9d-6b5e4def1709	2ec82d7b-42c8-4eed-9d6c-9d9e8bce02b8
d36563c3-840f-4e9a-8856-f8243d996c43	2ec82d7b-42c8-4eed-9d6c-9d9e8bce02b8
554e780f-4da6-452a-830d-c9f49d1e58ad	333f20d9-2b48-423c-a3ae-b614f7d27324
43a39d9b-335d-411e-b830-4cf5832bd7d2	333f20d9-2b48-423c-a3ae-b614f7d27324
9f2875f5-9e6d-4873-8392-de3efb9755c3	333f20d9-2b48-423c-a3ae-b614f7d27324
20c9ba88-036a-4acd-a339-ad3d1a028fc4	333f20d9-2b48-423c-a3ae-b614f7d27324
cc7a9717-4ce6-4e9d-b181-1c10be64bac9	333f20d9-2b48-423c-a3ae-b614f7d27324
e2a7eefc-6c1c-458a-b356-1a1bcd2bcbf1	333f20d9-2b48-423c-a3ae-b614f7d27324
f213fe70-d86a-5938-8060-4911a7379b8b	7e12b8f3-ef3a-5542-bb59-369d94639384
418150eb-c5d6-59ec-a105-0589d14fa82a	7e12b8f3-ef3a-5542-bb59-369d94639384
4bc4a457-f3b1-54c0-91f2-fe95f713d7f1	7e12b8f3-ef3a-5542-bb59-369d94639384
7b9dcd54-7e7b-5474-a901-6353758a8665	7e12b8f3-ef3a-5542-bb59-369d94639384
b022a06d-b46d-509d-954b-d49796a30ad9	7e12b8f3-ef3a-5542-bb59-369d94639384
6b1c894a-591f-556a-a6d5-2dabc85a0653	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
f9fdae01-02c1-5c6d-87c9-8ebe0322f584	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
7b9dcd54-7e7b-5474-a901-6353758a8665	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
81f88b9e-6609-52d6-ba1c-b44793d81ffe	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
836e9b5c-8b64-5021-84b4-1e526cc58886	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
1b3564b3-ab3c-5576-9a7a-123a29377584	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
c12d5343-a44d-5459-ad3a-fbb37ff30c38	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
f213fe70-d86a-5938-8060-4911a7379b8b	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
1e387ff8-9d27-5abb-9b99-6a745a6985fd	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
1a7ee40b-3582-5d57-b6df-ca73cbec829a	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
e155b546-9ca1-5aaa-9b47-f42726606b2c	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
4dbb6a96-e341-576e-987a-402c6126b448	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
355c34cc-bc71-54c4-9797-d4a9a257ccb1	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
d0079b94-1f4b-5542-aa8b-acd0e2090fca	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
e2d4f464-f3ae-51d2-a92b-fc49879b3934	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
509f7abb-2ad2-513a-99ed-5950043dc96b	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
41104ee8-c103-53fe-88cd-1a252053be1c	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
fac72c5e-4419-56d6-9ca3-77d5b680c443	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
b7000505-c881-52e3-80a1-c823cd1e200b	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
868372fc-14d8-5cc1-812d-cceb987f4a29	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
418150eb-c5d6-59ec-a105-0589d14fa82a	2875ba32-cca3-54bb-a645-a4e3fd9f1047
40149256-a0e8-5e7c-b588-bed74679a280	2875ba32-cca3-54bb-a645-a4e3fd9f1047
43d83bfc-ab5f-52fc-b2c7-57e82ea3e5e8	2875ba32-cca3-54bb-a645-a4e3fd9f1047
b08c6d99-3aae-5b3c-a72e-e57c93aa4434	2875ba32-cca3-54bb-a645-a4e3fd9f1047
b022a06d-b46d-509d-954b-d49796a30ad9	2875ba32-cca3-54bb-a645-a4e3fd9f1047
b5eb8360-81c9-5f6e-9f44-a6b575e010e8	2875ba32-cca3-54bb-a645-a4e3fd9f1047
e18d110c-fc7f-58d3-99dc-3e96c243fc64	21cc3254-a4b9-53f6-be83-cb55a286e058
79272c7d-96d0-575f-b621-088716c8c4bd	21cc3254-a4b9-53f6-be83-cb55a286e058
818d412d-4163-5e6c-8052-f9c642942aa0	21cc3254-a4b9-53f6-be83-cb55a286e058
6d1a25d8-12a4-5471-8226-d276249c07f9	21cc3254-a4b9-53f6-be83-cb55a286e058
0751f076-412d-554b-ae7a-76a99f1711e5	e0100ad5-1666-52ca-956d-d1764ebe3319
4bc4a457-f3b1-54c0-91f2-fe95f713d7f1	e0100ad5-1666-52ca-956d-d1764ebe3319
da0cb062-896e-5a01-9e05-3ced5b1d6548	e0100ad5-1666-52ca-956d-d1764ebe3319
7edb815f-1fe8-4eed-a913-c1f2ac9e2f07	7e12b8f3-99d8-5c00-af7a-b38348955aa0
e887ce9d-d8c9-4fff-854a-e6474907ce8c	7e12b8f3-99d8-5c00-af7a-b38348955aa0
1995225b-be58-4e01-894b-4ebd36ee2ce3	7e12b8f3-99d8-5c00-af7a-b38348955aa0
129b5d86-7911-46ef-949b-6bd476bdcf6a	7e12b8f3-99d8-5c00-af7a-b38348955aa0
2ec5edcc-dc39-4d60-a173-25f940a21b8a	7e12b8f3-99d8-5c00-af7a-b38348955aa0
d4dcb516-519f-4143-be45-e6b5fcd59c5a	eabea3fe-4185-4960-8c6b-08aac67af013
62fd3eed-6b60-433e-b839-d96b47374d0a	eabea3fe-4185-4960-8c6b-08aac67af013
477804d7-cccd-4309-80f1-5041725f1ee8	eabea3fe-4185-4960-8c6b-08aac67af013
a48c8d74-32b7-4dfb-ac04-4860f391a8b7	eabea3fe-4185-4960-8c6b-08aac67af013
054f4ad7-20c8-47e6-8294-a31a0bc93d20	eabea3fe-4185-4960-8c6b-08aac67af013
d8c880e1-4d31-4dee-8729-76460cdef31f	eabea3fe-4185-4960-8c6b-08aac67af013
31253d71-8584-4882-9fdc-4b95f8741ca0	eabea3fe-4185-4960-8c6b-08aac67af013
5d85a3e6-f5d8-4a9f-a4fe-b12a39ea506e	eabea3fe-4185-4960-8c6b-08aac67af013
fa4dac73-2a10-4327-aa93-c87e261d0cb9	eabea3fe-4185-4960-8c6b-08aac67af013
2d886daa-1c73-4bf9-9fa1-de555711fad6	eabea3fe-4185-4960-8c6b-08aac67af013
c5b72cbd-3567-4c1f-bbfa-4eb90707ec86	eabea3fe-4185-4960-8c6b-08aac67af013
b3f69319-5486-4364-aadf-958d3fd4d428	eabea3fe-4185-4960-8c6b-08aac67af013
2595bf99-1a8c-4e36-a0d2-79f8b06e24e0	eabea3fe-4185-4960-8c6b-08aac67af013
531dffe0-ad06-41e2-bd86-874a7dfbeac0	eabea3fe-4185-4960-8c6b-08aac67af013
0d146686-0413-4cd0-b9ff-4f31a548e75e	eabea3fe-4185-4960-8c6b-08aac67af013
3f5ff52b-77f3-471b-9916-80bd6ee10a40	eabea3fe-4185-4960-8c6b-08aac67af013
961e57ad-41bb-4166-bf80-0104c6b2dd87	eabea3fe-4185-4960-8c6b-08aac67af013
7f2f6855-4499-4e5c-b2a4-10fb707216f3	eabea3fe-4185-4960-8c6b-08aac67af013
a8a0671d-ce83-4b3c-b03e-a94b1e4059cc	eabea3fe-4185-4960-8c6b-08aac67af013
8a68a058-f185-422b-81d6-c87c021045f4	832434e4-ef61-4c4d-8394-75784a145139
fe84d306-d897-4f7e-8b4a-c5d8e079c864	832434e4-ef61-4c4d-8394-75784a145139
d7ed09c2-d232-4464-a722-032c83328fe3	832434e4-ef61-4c4d-8394-75784a145139
4fb660b2-df62-4a85-b287-c5cc911b4674	832434e4-ef61-4c4d-8394-75784a145139
c90e4f14-7b4a-4f67-a8d2-72d953105088	832434e4-ef61-4c4d-8394-75784a145139
af83bcb3-f167-43d8-8b67-f80faa14586d	832434e4-ef61-4c4d-8394-75784a145139
e1d2e4e1-d2ce-41b5-90f0-3653aaa38dce	832434e4-ef61-4c4d-8394-75784a145139
462edab7-1fee-47c3-9320-2f1257ed5ed3	832434e4-ef61-4c4d-8394-75784a145139
3224903e-6840-43be-9766-81e8e7e866f1	832434e4-ef61-4c4d-8394-75784a145139
aff3b67a-3c6a-42a5-bdae-c62f7cff328e	832434e4-ef61-4c4d-8394-75784a145139
94864f74-4921-439b-b064-f9d537844023	832434e4-ef61-4c4d-8394-75784a145139
bf078374-00aa-4857-8b0a-b7e0b728f90e	832434e4-ef61-4c4d-8394-75784a145139
b6ffbf37-5754-42df-ac78-9bb32efb20e3	7dbdf808-1f87-4191-9b1d-60b83bfe1166
5bbd0def-786f-4167-a56c-189b6f07f473	7dbdf808-1f87-4191-9b1d-60b83bfe1166
1388b6e4-f424-4fe1-a8ba-a86081e4dec3	7dbdf808-1f87-4191-9b1d-60b83bfe1166
8b2b9ca1-e5a9-497f-a84f-b8107fd6a9dc	7dbdf808-1f87-4191-9b1d-60b83bfe1166
21aa3a12-ed02-4613-b68e-3d5ddb0bbb97	7dbdf808-1f87-4191-9b1d-60b83bfe1166
5e1bf925-5abc-4519-bcea-ac2f8da61201	7dbdf808-1f87-4191-9b1d-60b83bfe1166
9bb52d0e-c0d8-4eed-a353-54c137f5f944	7dbdf808-1f87-4191-9b1d-60b83bfe1166
d2c0bfbd-de23-4f28-8fe3-c3142977e527	7dbdf808-1f87-4191-9b1d-60b83bfe1166
35714663-1e5e-431e-a45f-9c4b7d5062e5	7dbdf808-1f87-4191-9b1d-60b83bfe1166
cc87991c-6d88-4e89-9eac-1b33707c6e03	7dbdf808-1f87-4191-9b1d-60b83bfe1166
89f89e6a-cde2-44cc-8a30-9e4577349eb0	02896984-1fd8-416a-bcbc-ae9da71163d0
b075c476-672d-4092-8680-cdde5aed5093	02896984-1fd8-416a-bcbc-ae9da71163d0
485c12ba-8575-4628-8677-3e46f929c168	02896984-1fd8-416a-bcbc-ae9da71163d0
667d7b8f-faad-4790-b374-f09e7e237ed1	02896984-1fd8-416a-bcbc-ae9da71163d0
b86fb08d-fd7b-4414-ba47-50251514e282	02896984-1fd8-416a-bcbc-ae9da71163d0
30ec816d-e307-41e9-860b-d5d7871aafa4	02896984-1fd8-416a-bcbc-ae9da71163d0
1995225b-be58-4e01-894b-4ebd36ee2ce3	02896984-1fd8-416a-bcbc-ae9da71163d0
439388b8-89f4-4712-8809-3d674bacdb4f	b928cfab-edc1-4b9e-a606-ebca5fc93919
6568725e-0554-4adb-a688-adeb0f2662a8	b928cfab-edc1-4b9e-a606-ebca5fc93919
84b9d921-dd8c-4691-8d58-9dd3ef81ab32	b928cfab-edc1-4b9e-a606-ebca5fc93919
da3fe9b8-4a28-4527-a72f-9bc6eebed410	b928cfab-edc1-4b9e-a606-ebca5fc93919
78d076cb-0c97-49c5-8b40-9552e075a7ba	b928cfab-edc1-4b9e-a606-ebca5fc93919
cd133066-8702-49a6-93ea-e7649e43e8e6	b928cfab-edc1-4b9e-a606-ebca5fc93919
51564e94-91b9-43c8-a95d-d5f01de29272	8434d2c9-22f5-4c93-bba9-5ae20e36b288
b6e2223d-86dc-4fd7-bf54-61d5cd8d6731	8434d2c9-22f5-4c93-bba9-5ae20e36b288
a03bfd14-eb8b-41d2-a615-adc408398c90	8434d2c9-22f5-4c93-bba9-5ae20e36b288
dc383634-2ad3-4447-9a13-015629d79574	8434d2c9-22f5-4c93-bba9-5ae20e36b288
470e5be0-f618-4e06-bdbb-9c7009b06c99	8434d2c9-22f5-4c93-bba9-5ae20e36b288
0ee888ea-f4f9-4075-b6ef-74bde6a3c17c	8434d2c9-22f5-4c93-bba9-5ae20e36b288
bb123e55-c712-4aaf-9075-849a82142c50	8434d2c9-22f5-4c93-bba9-5ae20e36b288
0925c2e3-f408-457f-9e99-e8e25c91dbe5	81a2345a-40a9-4347-8315-2cb847ff8439
a69c4ff8-c469-4fc4-8fc0-c62a28dbd640	81a2345a-40a9-4347-8315-2cb847ff8439
ccbc86e2-17c6-46ca-821c-269ff23118d0	81a2345a-40a9-4347-8315-2cb847ff8439
37af3f2d-b295-4063-a320-7fdd9c1a6aeb	81a2345a-40a9-4347-8315-2cb847ff8439
813225cd-4148-4fde-b3c9-78139674592a	81a2345a-40a9-4347-8315-2cb847ff8439
a8506bd9-4114-444b-ba28-f3434e158b87	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
6e9aeb7c-6e1e-4e49-958e-8d579b87cbe5	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
4836cd58-deb9-4297-962d-01edc72a1d2d	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
038af7ef-751e-47fd-a8e5-23571e413433	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
4fb35ce7-a58e-48de-8c0f-90297a15714b	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
0bfac1bf-bcca-48d9-9f39-dadb04a77e64	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
e887ce9d-d8c9-4fff-854a-e6474907ce8c	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
9357a973-e1aa-454b-ab93-d9e9352d0173	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
01d267f1-0067-43b8-ba7d-af5e711d76aa	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
675930c8-693f-428b-8cec-ade83dc5e016	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
258b7ad9-50dc-4618-804b-7dd80e647ec6	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
c7bffd3a-54c3-433a-a7c3-82ee01e879e1	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
f0246abc-bdf2-416d-9c42-b9574c0fdc0b	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
c63980ba-3a04-466e-92b9-5442a742b247	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
99c15f13-d7dd-494d-978b-21a68d4daebc	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
32f72032-0277-40f5-802c-43273db73789	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
ba12520f-5c07-4450-a1a1-82f190c76d54	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
a765a1c3-7dd0-46a0-a3bb-43fe724c5ead	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
2f950ef9-6bf1-446f-9794-82c88a905639	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
37b06090-8121-4bfb-a508-c286d43f2b48	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
47b1f31d-2090-4d5b-9783-fb2d96760c65	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
343aa9a5-133f-4c09-a939-eccebcde3f80	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
ee9a4546-b7f9-496c-9461-149943e7e32d	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
4119c0f0-837b-44c0-9155-1117ef9cae43	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
8dd5295d-a727-4f20-bd9d-94a1dae16855	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
2cf9cf64-e59c-4a2d-95b1-4c5d442db0c6	fb222788-4357-4ae9-9c2d-e216589bdf6c
129b5d86-7911-46ef-949b-6bd476bdcf6a	fb222788-4357-4ae9-9c2d-e216589bdf6c
9b674723-038d-4551-80b2-db8fe686b078	fb222788-4357-4ae9-9c2d-e216589bdf6c
74fafc37-fb04-4091-826e-62bf333cecbc	fb222788-4357-4ae9-9c2d-e216589bdf6c
ea06698b-2f6b-40ce-9a27-f0eac8653703	fb222788-4357-4ae9-9c2d-e216589bdf6c
a6efb7f9-44bc-4d51-bece-526bcf506e8d	fb222788-4357-4ae9-9c2d-e216589bdf6c
412548c1-d51c-43f2-afc2-14ed37b8faa8	fb222788-4357-4ae9-9c2d-e216589bdf6c
612ab743-70f2-4fbd-a737-3393a884dc87	fb222788-4357-4ae9-9c2d-e216589bdf6c
a614c333-fc3f-4835-bbef-63bf5b7537c0	fb222788-4357-4ae9-9c2d-e216589bdf6c
2ab56497-6e10-4b64-ac78-6bcf4ba859c1	fb222788-4357-4ae9-9c2d-e216589bdf6c
2ec5edcc-dc39-4d60-a173-25f940a21b8a	fb222788-4357-4ae9-9c2d-e216589bdf6c
513803b9-8a65-4328-a465-ca5e85c1aea9	fb222788-4357-4ae9-9c2d-e216589bdf6c
4c18716a-665e-4066-8a45-a828477e8a08	fb222788-4357-4ae9-9c2d-e216589bdf6c
804a8a01-9e18-41c0-a11d-55cc701df5d1	20b6daff-85e7-4345-9f31-0b37bdaa78ca
babae72e-72ee-4a3f-a209-afd197be2d08	20b6daff-85e7-4345-9f31-0b37bdaa78ca
212aad22-9f9f-47ee-b61a-69f61eadce99	20b6daff-85e7-4345-9f31-0b37bdaa78ca
16b0497e-d1e8-4a16-b556-e2c303405c00	20b6daff-85e7-4345-9f31-0b37bdaa78ca
306bb2d3-d831-4041-b8bb-905894d567d7	20b6daff-85e7-4345-9f31-0b37bdaa78ca
874c799e-20d3-47ef-b5f0-44a29c6973b6	20b6daff-85e7-4345-9f31-0b37bdaa78ca
172dd126-e1cf-4274-a502-7f9ed65e99da	20b6daff-85e7-4345-9f31-0b37bdaa78ca
a8018cd8-b2c8-415a-a52f-4af3996762c4	20b6daff-85e7-4345-9f31-0b37bdaa78ca
1224fd3e-5ee1-415e-b34d-1b0a1a2579fe	20b6daff-85e7-4345-9f31-0b37bdaa78ca
e9c4981b-7d65-4163-acf7-7c62b75ea69f	20b6daff-85e7-4345-9f31-0b37bdaa78ca
f40f38de-0496-4884-9102-9ba5d2c6ef8c	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
4fc0723c-b0aa-4e6e-9fe8-cca6381c3d67	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
36f7b641-2e89-43b9-9795-56a3807ffa0e	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
5a24ac9d-dfb5-493c-96ae-50a29745f7c4	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
d02ca2fa-7144-49ac-b988-83897c74e264	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
adc466fa-81dd-4f14-9e25-5f9221e3717e	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
b10b9b09-976e-4972-adb5-283429e20f0e	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
9cc635dc-2d7d-4c7a-857b-8d92abe56267	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
98d867ad-4ecc-4e7c-980a-77f2246c55b0	4e662a23-0426-4491-a8c0-cdd00813390a
7bd5a13f-cf93-4770-be21-1a21cef9ab40	4e662a23-0426-4491-a8c0-cdd00813390a
06a5a275-01a2-4d64-a6d2-f973f0e8788f	4e662a23-0426-4491-a8c0-cdd00813390a
e72f9cd2-f3bc-4103-91ef-1f5c4cf83f59	4e662a23-0426-4491-a8c0-cdd00813390a
e6dcd8a2-5796-4d6e-9852-e7888813ace8	4e662a23-0426-4491-a8c0-cdd00813390a
8ac95997-cc07-431c-a953-6b7597364fd0	4e662a23-0426-4491-a8c0-cdd00813390a
199f2976-2164-44be-8e09-2facc082fbeb	6768f911-1029-47d5-8ece-b301ec187801
9d49a9db-b376-49c2-b8fa-a8cfafc9f542	6768f911-1029-47d5-8ece-b301ec187801
72d74114-2f6d-4c71-9cfb-5d4a398307fd	6768f911-1029-47d5-8ece-b301ec187801
b0139c5a-a44f-4e99-9280-a49997b55877	6768f911-1029-47d5-8ece-b301ec187801
fe4fb5cc-280e-44e4-85ec-1fd389cdb89a	6768f911-1029-47d5-8ece-b301ec187801
595fee6f-e60a-46a5-8f82-962604a840ea	6768f911-1029-47d5-8ece-b301ec187801
4c979e53-5775-4956-a420-51e10b0b62df	6768f911-1029-47d5-8ece-b301ec187801
e2cfcc40-af0a-44c5-8870-c7b927d93907	6768f911-1029-47d5-8ece-b301ec187801
e8112046-78cf-4895-a5f1-129ecb9cfd76	ad67fcdb-4856-44e1-bdce-727ce41394ba
113083f2-23c3-4ff9-8086-606bce7cec1c	ad67fcdb-4856-44e1-bdce-727ce41394ba
789747e5-bdd4-4190-b96c-e57816eb0489	ad67fcdb-4856-44e1-bdce-727ce41394ba
301b936a-1eaa-42db-aa66-8f22c33a0f9c	ad67fcdb-4856-44e1-bdce-727ce41394ba
1413d15d-538e-4ce8-9e36-8a7ecd10b00d	ad67fcdb-4856-44e1-bdce-727ce41394ba
4691162e-e521-431f-bb55-bc568d64c01f	41eb3678-4983-4c8d-bca5-eaa1d1739885
883aad3a-bf2c-4b73-b1c1-b8c21e0f5323	41eb3678-4983-4c8d-bca5-eaa1d1739885
7927849f-83d8-4fcc-89dd-2de9fb26eeef	41eb3678-4983-4c8d-bca5-eaa1d1739885
e09a252d-75ac-4795-9dae-295074d810a5	41eb3678-4983-4c8d-bca5-eaa1d1739885
e02ebb25-8d14-4577-ae0d-9a5144092751	41eb3678-4983-4c8d-bca5-eaa1d1739885
56bedc7c-37d2-4cf5-8dd5-a4d4a5e7179e	41eb3678-4983-4c8d-bca5-eaa1d1739885
5c4cb633-3673-41d0-8b43-d422c25fc452	41eb3678-4983-4c8d-bca5-eaa1d1739885
982d002c-3520-45c7-89c8-9f78feb8b784	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
7edb815f-1fe8-4eed-a913-c1f2ac9e2f07	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
fc35c8c0-5849-490c-86c6-25dcdf35045e	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
3f1ee0e4-75a0-4d66-89f6-20a727d38837	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
fab48178-7c68-4410-8e35-383174b61ee8	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
1a2fac5b-2773-4eef-b8f0-0fa3b99623d5	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
31e0f843-ce9a-4048-b55b-6131cd75ecbb	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
7fcfe520-76a6-444c-acb7-e719c891106b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
91bb6f62-d933-40bf-8b55-feeb7f4a5c6b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
e8d67744-fff2-41b7-8d84-82cb54a4b755	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
26c3773b-96c6-4f7f-80b0-ffb25233c5ae	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
f51ee67c-eaef-488c-9772-9baeb45e4b9a	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
2ad1300e-ca1b-469d-9617-1c3413f417b3	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
d795e251-0114-4fbc-9fda-1d861b25d662	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
26d6f625-0994-4ce3-a486-ecc4576fa3f3	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
79da4903-16cb-4e9c-9104-f346e65c612b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
8cf0af54-9f0d-441d-8aa3-19a853cef712	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
09f934e1-3ef1-4df9-9ed2-e3d3575ffd0b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
9b68a3a5-fdbd-47b6-a483-d45e80141df1	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
dadf6af1-81f6-4b87-9d6c-3c45d0c5a142	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
894a6f7b-f23f-4629-afd0-934e8646f7c7	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
48a5d11a-d7d1-463b-a051-dab6e8e08d0e	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
1e326f13-5191-4476-b26e-c2aeddf49f79	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
351202c3-2554-4df7-b949-4d5d7e23783b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
3a94472e-19e3-42c8-8685-a2a59ff35a2c	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
ab2262a8-20e9-4b57-a5d9-fa8da88a3ee7	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
44e7d98d-e56f-4b5d-801c-4aeb3ca6c610	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
70ababbd-6668-4433-a2c5-11a9fb98d18c	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
27f08bd8-22dd-4169-bde4-84e7c5f5ba7c	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
2298e882-fb5e-4fe4-a39d-2512252d4f35	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
e2ff7366-5afc-4084-ab8a-6ec24efaf2e6	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
6860a798-9324-4392-97aa-00d3f6976db5	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
39d91732-4a05-4336-8a92-d2f22bc2c2aa	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
24e7fef1-ec5f-4636-bf01-dc941e7e6abb	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
bb7583af-a585-4757-8258-65f50fdc9412	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
b750b144-d9e0-4f17-b5ca-613dc75d5103	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
39309dfd-3b4f-4bc9-b1a3-206d44bdf0f6	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
921130f4-c639-4a56-92f3-5c964b3eeef0	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
0847a299-6d2c-4456-914d-b77623f74d99	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
8c0309d1-8fa1-4753-a311-c9b2ce5a7ce9	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
f937fa73-af5e-46c0-a753-efa6ee71711b	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
8dbd9ce2-babe-406d-913d-5ccef9364ffa	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
a9ebffd3-ef99-4798-9594-f2357cd39198	a758028a-4163-4dd0-8e92-f709f5f45399
b835c2d4-bb88-439b-bf24-26b2870f1c26	a758028a-4163-4dd0-8e92-f709f5f45399
523aeb4a-b89a-4818-8d4f-35c2b0629948	a758028a-4163-4dd0-8e92-f709f5f45399
58268f9b-8210-4180-ae7a-beb78e329710	a758028a-4163-4dd0-8e92-f709f5f45399
ead3705a-c35c-4b86-b2be-3691fb086635	a758028a-4163-4dd0-8e92-f709f5f45399
c5bfd816-a57d-4546-8415-0a93687aca52	a758028a-4163-4dd0-8e92-f709f5f45399
d3fb3330-cadb-46b6-8f80-2fe1d4752d22	416dbf29-4e78-43db-ab9d-31fb01d2d9ed
1575c7e4-4c2a-4e3e-b22f-3c4223c4f3f2	416dbf29-4e78-43db-ab9d-31fb01d2d9ed
c011bff4-0cca-52d8-bf33-f1a250367a72	2bdf1cf4-f407-5bf8-beca-b692e57562a7
98ea43ef-dfa9-59f9-8b7a-3cea972ffff3	3e3b4899-003f-51b4-bad1-6982eb091137
8580ead8-0dca-5095-a6c5-91d354667635	3e3b4899-003f-51b4-bad1-6982eb091137
12fa93e2-d881-53e5-ae56-0e7c2c6bff1b	3e3b4899-003f-51b4-bad1-6982eb091137
138c1040-b493-51b5-b831-13e9b6ae59b6	3e3b4899-003f-51b4-bad1-6982eb091137
f864ccac-04c5-5e7a-b2c4-9cffd9645da7	3e3b4899-003f-51b4-bad1-6982eb091137
11fa9955-9301-5233-8da2-c6ae5ec8b43d	3e3b4899-003f-51b4-bad1-6982eb091137
275b897b-5888-57b7-8607-b7f1e5569b5c	3e3b4899-003f-51b4-bad1-6982eb091137
776c4c19-2d92-5418-b92f-c64ebc0e7de5	3e3b4899-003f-51b4-bad1-6982eb091137
237a33a9-d99b-5a80-a630-0bf79cb3c3c1	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
439ded17-e315-57b6-addb-643db47c8a3d	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
99289218-2eaa-5e4f-94fc-4b23507996fe	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
cdafe434-7d5a-58a9-bf30-0699db0a2c79	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
d75141cc-755c-5c22-b1bb-cb53d70e1c0e	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
51251369-b434-5339-ab9c-b2fb4b3eb1af	ccfcd933-634b-5d5f-a9ed-929a5473f15d
d42859c9-d767-5eab-beba-af1cfe4e10c4	ccfcd933-634b-5d5f-a9ed-929a5473f15d
9092ac74-0ebf-559b-b8a3-34686b1c6df9	ccfcd933-634b-5d5f-a9ed-929a5473f15d
a5aa297d-9c4d-5910-87ec-0fb8da613c06	ccfcd933-634b-5d5f-a9ed-929a5473f15d
8945efe4-7c8c-560a-933a-98a9ceddb02a	ccfcd933-634b-5d5f-a9ed-929a5473f15d
25c940a9-a73b-5922-aca1-4778889adfc0	ccfcd933-634b-5d5f-a9ed-929a5473f15d
d80dd884-8219-5f48-a843-033652ea0dc7	e1911682-b394-58fb-8e98-b3d503e15e2b
24733c2c-7294-5bf3-9a6f-bdacedc5f277	e1911682-b394-58fb-8e98-b3d503e15e2b
2b46c350-7f9b-558b-ae69-7d6eee5ab882	e1911682-b394-58fb-8e98-b3d503e15e2b
07894894-7dc1-5da1-a75c-c4209f08df35	e1911682-b394-58fb-8e98-b3d503e15e2b
1dc3ee09-3edf-5873-a703-6deb51fa7b04	e1911682-b394-58fb-8e98-b3d503e15e2b
19cc0ebd-96b7-5f80-988e-3b321cb7d97b	e1911682-b394-58fb-8e98-b3d503e15e2b
a645c433-e08f-5de9-96ad-878806bff710	e1911682-b394-58fb-8e98-b3d503e15e2b
dbdcdcdb-cb6f-5887-b955-8183730c750e	1dff99ab-8f2a-5bf0-8081-705fe2cb53b5
9cfeada7-d20d-5723-9e53-333cb5a7129f	1dff99ab-8f2a-5bf0-8081-705fe2cb53b5
6e7f6041-50de-53a7-bbd8-06503ac5986b	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
d3640c5e-c035-51f4-a186-ba062165c345	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
759c4001-f9d3-5b32-a83c-af0dbd30a521	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
f80adc42-1afe-5574-ba20-caf9c6b72569	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
5b3bbb11-7e27-5d8e-ab5a-d8784a886c32	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
d307f073-4fb1-54dd-9198-18737cf46baa	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
ebec60b6-151c-57d3-99f0-b9d2391a0584	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
dadc18a6-9cd3-535a-8da6-f6a4f9526735	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
96fd41ee-7043-5a28-8cb3-67a8fefbbcea	8035c92a-0929-59f7-8562-ecc0b9c0aa75
47cdcf46-5ed8-5767-9b11-fbc69ef3b856	e9cd457a-d53a-5d2f-9839-4132a0103b4c
ac75cbd3-8832-546e-9a17-6014e0b33f44	e9cd457a-d53a-5d2f-9839-4132a0103b4c
e1b6b189-6065-5289-83fa-116309e04ad9	e9cd457a-d53a-5d2f-9839-4132a0103b4c
47bbfacc-4a1a-5eff-9579-0a0c2bc4c52b	e9cd457a-d53a-5d2f-9839-4132a0103b4c
8afcd376-7c5a-5cd9-af39-14cf653ea4df	e9cd457a-d53a-5d2f-9839-4132a0103b4c
4d981d95-6cc1-5a7f-af33-3e31a17bd424	e9cd457a-d53a-5d2f-9839-4132a0103b4c
fc08be1a-0e77-5176-a2ba-3a36589bec13	e9cd457a-d53a-5d2f-9839-4132a0103b4c
3215af2b-6e28-52f3-a9a7-374f6bbf5606	e9cd457a-d53a-5d2f-9839-4132a0103b4c
fccfce11-3d32-5fa3-b73a-75679d5705a2	e9cd457a-d53a-5d2f-9839-4132a0103b4c
84544435-4bc5-5681-adfd-b235da2ee896	e9cd457a-d53a-5d2f-9839-4132a0103b4c
2e6b32b5-67db-5ef0-bb98-4f48e7331293	e9cd457a-d53a-5d2f-9839-4132a0103b4c
7a89022b-7011-525a-93d4-3f17f4b5672d	e9cd457a-d53a-5d2f-9839-4132a0103b4c
23cd1607-4999-5440-a0f7-ee04272d881f	e9cd457a-d53a-5d2f-9839-4132a0103b4c
616c15b1-f673-55f7-b02a-e5617c364712	e9cd457a-d53a-5d2f-9839-4132a0103b4c
f6f89139-3c47-5946-988a-87dc8cdbbd43	e9cd457a-d53a-5d2f-9839-4132a0103b4c
8f887b1f-0849-5b19-8f27-395423b15636	13663156-7582-599e-a6b1-5018602c7acc
5b64afda-7356-5ad1-83d3-f62bd4a2f196	13663156-7582-599e-a6b1-5018602c7acc
1228fed5-994c-5f41-a02b-747293447628	13663156-7582-599e-a6b1-5018602c7acc
e7dbda59-729c-5b3a-be20-4ffe2a7c6722	d4c64f6c-e9f7-542e-99c7-077dba449369
266734b6-8ab9-534c-9853-8c38bd0b3d5f	d4c64f6c-e9f7-542e-99c7-077dba449369
3365ccf8-61d0-53bb-8c4c-ed7d6815a943	d4c64f6c-e9f7-542e-99c7-077dba449369
454d627f-3dd6-5921-bf99-57e8fa55ae60	d4c64f6c-e9f7-542e-99c7-077dba449369
97b1c29b-d3d8-530d-a5a4-03b8899ddfc1	d4c64f6c-e9f7-542e-99c7-077dba449369
e9557da6-6308-5d27-889d-9f8b7cd6d20f	d4c64f6c-e9f7-542e-99c7-077dba449369
382aa6fe-c357-56e6-b581-8acb2e0fe943	d4c64f6c-e9f7-542e-99c7-077dba449369
19d9a855-c7e8-597a-9026-62a757dba373	d4c64f6c-e9f7-542e-99c7-077dba449369
ec2b241d-e52e-5c87-8ccf-aaf02806731d	d4c64f6c-e9f7-542e-99c7-077dba449369
b31aee24-99dd-59b0-a1f6-f430eaecc2e5	d4c64f6c-e9f7-542e-99c7-077dba449369
db8502a5-de8c-57f3-bdc9-1961758a49ff	d4c64f6c-e9f7-542e-99c7-077dba449369
b8174160-287b-564e-a155-0a858676d9c1	d4c64f6c-e9f7-542e-99c7-077dba449369
a582974d-1fc3-51e0-827e-f46c07a376df	d4c64f6c-e9f7-542e-99c7-077dba449369
2d6496b9-4529-595b-a1b5-cd9f721fed36	d4c64f6c-e9f7-542e-99c7-077dba449369
2686fc38-e755-5290-8643-ac12bbd17353	d4c64f6c-e9f7-542e-99c7-077dba449369
7f5ff444-fc37-5b4a-b2bf-0514d6641dfe	d4c64f6c-e9f7-542e-99c7-077dba449369
54a2229d-f5e6-55c8-9b13-2f1b0afca6af	d4c64f6c-e9f7-542e-99c7-077dba449369
1e99696e-1d67-5d97-8c1b-b0f99ccfdea8	d4c64f6c-e9f7-542e-99c7-077dba449369
c34fcae1-6560-56ed-9fc7-aafb3fe4ee51	d4c64f6c-e9f7-542e-99c7-077dba449369
8df541bb-cc60-5634-8892-ee33658ddfd4	d4c64f6c-e9f7-542e-99c7-077dba449369
0cb62c95-0949-5695-8dbf-9bfa95b0e6cd	d4c64f6c-e9f7-542e-99c7-077dba449369
19cedcea-8807-52ef-914e-097cc64e8091	d4c64f6c-e9f7-542e-99c7-077dba449369
33396ad4-4acc-5f33-9c0f-f9eeff1fe6f6	d4c64f6c-e9f7-542e-99c7-077dba449369
7f4ca74e-2f58-5272-b5a9-83e1463a720a	d4c64f6c-e9f7-542e-99c7-077dba449369
7dd8a66c-1b24-59e7-981c-9d6db7158c0b	0671d53b-2e66-5da6-9823-52bca92326b3
cc8529e2-86a7-5372-b6d3-9950cbdb76c3	0671d53b-2e66-5da6-9823-52bca92326b3
ca9cc222-0730-5892-933f-d26bea495ef5	0671d53b-2e66-5da6-9823-52bca92326b3
8e404fa2-e987-5fc5-8547-72dd9e5a97c2	3e0edcae-6909-50b5-8ec2-63d55cd662c1
8c350832-13fb-58c8-a14c-4889f28cd9a0	3e0edcae-6909-50b5-8ec2-63d55cd662c1
9d8aad23-5fa8-51fe-bfb5-8868ecc10a16	3e0edcae-6909-50b5-8ec2-63d55cd662c1
8916bbaf-a735-5769-b682-ae6effac2af4	3e0edcae-6909-50b5-8ec2-63d55cd662c1
71a2a9b4-650b-5c3f-855a-353b49cf01a4	3e0edcae-6909-50b5-8ec2-63d55cd662c1
591c47d8-0d4a-5fc1-8edf-44b08a7bbec9	05472b82-4859-5818-a5b3-88aee2b150e4
1ea2739b-cb00-560c-bdbf-a8d48016c8ac	05472b82-4859-5818-a5b3-88aee2b150e4
536a07fe-cbab-55fa-b8aa-6e0c7354266d	05472b82-4859-5818-a5b3-88aee2b150e4
8565efb5-2b0c-5d0b-a053-62d1c55ee3b4	05472b82-4859-5818-a5b3-88aee2b150e4
75039b8f-ac4e-5384-be88-7500e27878b2	05472b82-4859-5818-a5b3-88aee2b150e4
320e0372-4a7b-5494-950d-98d972768590	05472b82-4859-5818-a5b3-88aee2b150e4
ba486e4c-6324-5a3b-8476-128ff3704c42	850cd047-74b3-52a0-aa9f-45599ed0f788
4678476b-3ee9-5293-810f-415e78023404	850cd047-74b3-52a0-aa9f-45599ed0f788
d73f106b-3c9f-58f2-bb75-f7bf61d6f348	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
8ffe70d2-7232-5a6e-a83b-b937e36714f9	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
de9c4630-1125-5fe2-99ff-62fd23e64399	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
c32bbe4a-3c3e-5606-9e69-c57e711b9889	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
d45ce914-fab5-57b4-9508-231180172569	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
06422b86-d74f-5c02-b8df-f9ff015525f5	f15720bd-3340-5a88-addb-a4df4070cfe3
be7aee5a-c3db-58f3-891c-dd0fd8f538c6	f15720bd-3340-5a88-addb-a4df4070cfe3
d8ac5ddf-4819-53b8-8c03-454fa93c6064	f15720bd-3340-5a88-addb-a4df4070cfe3
ef17b5c2-c9a0-5add-9639-4f53d9b4f23e	f15720bd-3340-5a88-addb-a4df4070cfe3
d90c756c-0159-52ff-a735-3bc137bdd8ab	f15720bd-3340-5a88-addb-a4df4070cfe3
39448546-f845-505e-b4f8-c4736cf9f329	f15720bd-3340-5a88-addb-a4df4070cfe3
a91d2457-cd04-5c4a-9dc1-e5cae9e73a63	f15720bd-3340-5a88-addb-a4df4070cfe3
6361584c-1de8-5242-984e-c7cbf045a13a	f15720bd-3340-5a88-addb-a4df4070cfe3
39448546-f845-505e-b4f8-c4736cf9f329	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
ba4adb20-1702-5b9a-b7b3-cd4af1c4deac	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
bf8b5fc8-2ceb-5221-a103-efe325ec48ad	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
b15dd5f0-c344-5d3b-a815-1154285ce4de	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
a91d2457-cd04-5c4a-9dc1-e5cae9e73a63	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
d8546b08-3d67-5f44-b9f3-ea3cd82fe2be	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
d45ce914-fab5-57b4-9508-231180172569	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
049fc331-b17e-5f7e-ba00-c8e0a68115c5	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
73c0e9a0-57fd-52f1-948d-3938fa9b2051	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
31b033f1-d8f1-5143-85db-a4fcc0182f48	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
98ec1a70-a78a-5e88-98f1-297d61eca821	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
06422b86-d74f-5c02-b8df-f9ff015525f5	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
be7aee5a-c3db-58f3-891c-dd0fd8f538c6	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
e6818aa3-d2bb-59b5-a852-dff3e078a187	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
cd2b1e68-8fbb-54fd-b28c-b5152ae1a0a3	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
e2de4584-f03a-520f-9dd3-f7209e49a662	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
39448546-f845-505e-b4f8-c4736cf9f329	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
ba4adb20-1702-5b9a-b7b3-cd4af1c4deac	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
3f6bbb99-9f5a-5b8d-97ff-9a14a2d5b6b7	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
de9c4630-1125-5fe2-99ff-62fd23e64399	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
049fc331-b17e-5f7e-ba00-c8e0a68115c5	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
73c0e9a0-57fd-52f1-948d-3938fa9b2051	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
ff3a7afe-6ad8-5449-a9db-edf47aed17ca	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
135b06ba-0dc4-58bd-84f4-4dd4ed40ace4	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
5d7082b5-e932-5b35-a494-02a191bd89b3	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
058bea94-295d-5cef-977a-06f39e96c2bf	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
b15dd5f0-c344-5d3b-a815-1154285ce4de	fcec80f8-c236-5453-88c2-88ffc086c15d
a91d2457-cd04-5c4a-9dc1-e5cae9e73a63	fcec80f8-c236-5453-88c2-88ffc086c15d
d8546b08-3d67-5f44-b9f3-ea3cd82fe2be	fcec80f8-c236-5453-88c2-88ffc086c15d
d45ce914-fab5-57b4-9508-231180172569	fcec80f8-c236-5453-88c2-88ffc086c15d
096b906c-cbd3-58e6-b15b-236d19b812ef	fcec80f8-c236-5453-88c2-88ffc086c15d
bf8b5fc8-2ceb-5221-a103-efe325ec48ad	ce443f1e-f4da-5ed8-b396-f46192c094bf
c32bbe4a-3c3e-5606-9e69-c57e711b9889	ce443f1e-f4da-5ed8-b396-f46192c094bf
d8ac5ddf-4819-53b8-8c03-454fa93c6064	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
ef17b5c2-c9a0-5add-9639-4f53d9b4f23e	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
d90c756c-0159-52ff-a735-3bc137bdd8ab	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
b23afbe2-8903-5be0-aaf6-2de94b4b17f1	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
9e4f3c56-11be-5586-abfe-b66c7fc8a1ba	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
18dc04ef-1602-5125-a946-d1186d38a0fa	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
d73f106b-3c9f-58f2-bb75-f7bf61d6f348	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
4e3987b6-2aa2-5d83-8d65-85c17102595b	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
62f6aedb-12f9-5da2-8815-9f0b5cb56895	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
ca41d911-3fe9-5b92-816e-1d94af2cc86c	7183428f-9b37-5dd8-9438-a83b3b7fef55
b56fdbee-08be-5a3e-8663-31e3b864abd9	7183428f-9b37-5dd8-9438-a83b3b7fef55
73b73052-29c1-5414-a0bb-2b5f4b3d1c89	7183428f-9b37-5dd8-9438-a83b3b7fef55
f60bc4ce-2561-5cc3-805a-19a9be5b90e8	7183428f-9b37-5dd8-9438-a83b3b7fef55
e46452bd-bc69-57ee-8021-3ea5fc9656bc	7183428f-9b37-5dd8-9438-a83b3b7fef55
e8a54f0f-4fef-5a7b-8c46-90948f84cf63	7183428f-9b37-5dd8-9438-a83b3b7fef55
697218b8-4a4c-5ed5-bdcf-599cbe8f95ef	7183428f-9b37-5dd8-9438-a83b3b7fef55
8ffe70d2-7232-5a6e-a83b-b937e36714f9	7183428f-9b37-5dd8-9438-a83b3b7fef55
f688e646-34be-590f-b7d9-5afc5fd5ef1c	7183428f-9b37-5dd8-9438-a83b3b7fef55
d1bab250-57bd-5346-a742-ef4f47b3fd4c	7183428f-9b37-5dd8-9438-a83b3b7fef55
16259f84-9dfd-5bae-82ce-6e02a1d4c70e	7183428f-9b37-5dd8-9438-a83b3b7fef55
20c1e8cb-5c0e-57a7-b587-12fde441942d	7183428f-9b37-5dd8-9438-a83b3b7fef55
2fee5e83-8533-5a0e-a74a-88c45037ee58	7183428f-9b37-5dd8-9438-a83b3b7fef55
55ddf8f3-1d7e-5d13-a18d-8e30dd9e0f72	f61f94f5-ae82-53d3-a37f-3c88ee75d437
16d83c0a-4d73-5a1a-ac9e-dc5dc3a28a65	f61f94f5-ae82-53d3-a37f-3c88ee75d437
2e1b5d51-c682-59cc-bf7a-465e00e3b69b	f61f94f5-ae82-53d3-a37f-3c88ee75d437
3874f1f1-52c4-5c8e-9cec-880ffe830a3a	f61f94f5-ae82-53d3-a37f-3c88ee75d437
9ab388ca-6522-5068-b60e-0b7d419745db	f61f94f5-ae82-53d3-a37f-3c88ee75d437
58e99e4b-f9d8-523c-86c9-eb527b2fb750	f61f94f5-ae82-53d3-a37f-3c88ee75d437
718bc357-875e-5a1b-9677-4cff47343a90	f61f94f5-ae82-53d3-a37f-3c88ee75d437
2132d8c7-ac8e-5087-a4e6-f6449c9ee416	f61f94f5-ae82-53d3-a37f-3c88ee75d437
ff3a7afe-6ad8-5449-a9db-edf47aed17ca	f61f94f5-ae82-53d3-a37f-3c88ee75d437
135b06ba-0dc4-58bd-84f4-4dd4ed40ace4	f61f94f5-ae82-53d3-a37f-3c88ee75d437
ce9be8de-81bd-559f-a732-7aefdb6c16eb	f61f94f5-ae82-53d3-a37f-3c88ee75d437
dd0f69b9-c2fa-594b-8cd9-befc9770787c	f61f94f5-ae82-53d3-a37f-3c88ee75d437
d7fd4a1d-a60e-5e09-9507-3a4c75153365	f61f94f5-ae82-53d3-a37f-3c88ee75d437
7d5f1684-3232-54b5-a74c-0032475705b4	f61f94f5-ae82-53d3-a37f-3c88ee75d437
096b906c-cbd3-58e6-b15b-236d19b812ef	f61f94f5-ae82-53d3-a37f-3c88ee75d437
584738f5-80fc-5633-b923-9bb5f7f87c5d	f61f94f5-ae82-53d3-a37f-3c88ee75d437
e227cc81-b4d2-527a-8d77-b2eafafff751	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
a922c302-5bab-5cce-9d49-941190166ac9	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
b1126385-78a0-5a6b-809a-3e0d30438c09	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
589123cd-5e67-522b-9e40-4781fb30b7e5	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
c35f0a0e-7497-56d4-a327-723d7678996d	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
d3e54b11-e080-56f2-a0e9-83207e4d7f2c	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
301bdfb4-765f-5b57-9322-2b58295dbb60	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
7ca2288e-0cbe-5b2a-8fd5-fadfc3998e81	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
5030cf4e-a12d-5fe0-ac1d-0cc3e2e49f50	e2670054-a26a-5515-8db1-6a9aaf799fe4
eef8ff79-c904-5b24-bb9c-a13bceec5ae1	e2670054-a26a-5515-8db1-6a9aaf799fe4
71dab78d-4f62-5cd4-8df7-6db20b23f1e8	e2670054-a26a-5515-8db1-6a9aaf799fe4
2b351dba-e9ce-5ff1-a406-3be16c9a5d90	e2670054-a26a-5515-8db1-6a9aaf799fe4
5da9cc6e-464b-502e-92d7-276361fd6603	e2670054-a26a-5515-8db1-6a9aaf799fe4
952aa47e-3a08-576e-aba9-1afd9754c08c	e2670054-a26a-5515-8db1-6a9aaf799fe4
b6454dd9-f6d2-5b40-acd3-fed59c41248f	e2670054-a26a-5515-8db1-6a9aaf799fe4
a41f08d0-a0c8-5ff4-b38b-9d564ee55fa6	e2670054-a26a-5515-8db1-6a9aaf799fe4
\.


--
-- Data for Name: MenuToMenuSection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MenuToMenuSection" ("menuId", "menuSectionId") FROM stdin;
a47fc313-8938-5525-911c-e7917347c273	7e12b8f3-4d07-51f8-a8ba-83c72b7a5065
a47fc313-8938-5525-911c-e7917347c273	151a1a2e-e93c-594d-845a-3f9620d9b3ac
a47fc313-8938-5525-911c-e7917347c273	4076cdc7-930f-55d8-9718-f48ccc3c8467
a47fc313-8938-5525-911c-e7917347c273	2bdf1cf4-f407-5bf8-beca-b692e57562a7
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	7e12b8f3-510f-5104-b07d-72bf4f7200ef
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	c3444e60-c80e-56ce-be96-0c291f9574f1
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	5c328212-ec4f-5530-b0e7-fde2869ed21e
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	c6ef2787-cde9-5737-a46d-0677999ba2a6
2066f9bc-e9c3-5517-8b5e-260dcb54b4f7	2e0967b3-1156-53d9-98bb-74740976298f
5a52e241-5877-595f-ac33-6ec5fa96b6ce	7e12b8f3-afc4-5469-a66c-9aca10407bfc
5a52e241-5877-595f-ac33-6ec5fa96b6ce	d67838ea-6c89-5b6f-bc24-759af9d1bd98
5a52e241-5877-595f-ac33-6ec5fa96b6ce	08b50231-ca3e-5375-90a0-a773756fd38d
23b37dd2-760c-54c9-a675-bc5d907d9875	7e12b8f3-5511-5fe8-a250-a6f9e5a3baf7
23b37dd2-760c-54c9-a675-bc5d907d9875	6e200ded-02c9-52ea-a752-40ddd32ebd98
23b37dd2-760c-54c9-a675-bc5d907d9875	2e873fd8-6069-5677-87ae-4c31d883c4b4
23b37dd2-760c-54c9-a675-bc5d907d9875	54ac4ef7-664c-5c51-b869-5b37872cf0c2
23b37dd2-760c-54c9-a675-bc5d907d9875	8b43958a-e83f-574f-9c87-b826578cf69a
23b37dd2-760c-54c9-a675-bc5d907d9875	78cc1ec8-d147-5962-86f2-b1966d1566a8
23b37dd2-760c-54c9-a675-bc5d907d9875	59a5f226-05ce-5a9f-a840-fcb5769f91bb
23b37dd2-760c-54c9-a675-bc5d907d9875	4f5927c8-45ce-5374-94fb-bcdaabe1bceb
23b37dd2-760c-54c9-a675-bc5d907d9875	27518546-1dfd-51fc-b2d2-74a9cb6adaeb
23b37dd2-760c-54c9-a675-bc5d907d9875	8bfb7427-ebfe-5995-8fb6-c8b968169675
54371d2f-1c83-494c-bea0-7abaf9319e6b	7e12b8f3-4663-56eb-a393-e59a4fb2d94c
54371d2f-1c83-494c-bea0-7abaf9319e6b	f07e973f-d1d8-4034-aa8b-3d2ebbbb672f
54371d2f-1c83-494c-bea0-7abaf9319e6b	6d352052-14d8-43ee-b887-d7e9df9f33f0
54371d2f-1c83-494c-bea0-7abaf9319e6b	5d51b1be-7db2-4d81-8e22-8ff0087606b2
54371d2f-1c83-494c-bea0-7abaf9319e6b	dd954a97-bcbc-437e-aef2-67f306f99fbf
54371d2f-1c83-494c-bea0-7abaf9319e6b	e899c9dc-3ba2-4b19-8830-073301b3ed14
54371d2f-1c83-494c-bea0-7abaf9319e6b	df33942b-bdf4-4c23-8c1b-147478681049
54371d2f-1c83-494c-bea0-7abaf9319e6b	738fdb6b-b44b-4eb3-a9b6-eae69a7f12c8
54371d2f-1c83-494c-bea0-7abaf9319e6b	2ec82d7b-42c8-4eed-9d6c-9d9e8bce02b8
54371d2f-1c83-494c-bea0-7abaf9319e6b	333f20d9-2b48-423c-a3ae-b614f7d27324
e5468e08-24d6-5867-985d-0fd38b7bf58a	7e12b8f3-ef3a-5542-bb59-369d94639384
e5468e08-24d6-5867-985d-0fd38b7bf58a	29725af3-ad60-5be0-b04f-8c7a0f9e59d6
e5468e08-24d6-5867-985d-0fd38b7bf58a	2875ba32-cca3-54bb-a645-a4e3fd9f1047
e5468e08-24d6-5867-985d-0fd38b7bf58a	21cc3254-a4b9-53f6-be83-cb55a286e058
e5468e08-24d6-5867-985d-0fd38b7bf58a	e0100ad5-1666-52ca-956d-d1764ebe3319
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	7e12b8f3-99d8-5c00-af7a-b38348955aa0
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	eabea3fe-4185-4960-8c6b-08aac67af013
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	832434e4-ef61-4c4d-8394-75784a145139
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	7dbdf808-1f87-4191-9b1d-60b83bfe1166
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	02896984-1fd8-416a-bcbc-ae9da71163d0
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	b928cfab-edc1-4b9e-a606-ebca5fc93919
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	8434d2c9-22f5-4c93-bba9-5ae20e36b288
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	81a2345a-40a9-4347-8315-2cb847ff8439
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	96a8bbdd-bf06-416b-9dbf-9e53dbe28148
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	b397d436-b5a4-46a3-9ed3-8c51c9b464f6
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	fb222788-4357-4ae9-9c2d-e216589bdf6c
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	20b6daff-85e7-4345-9f31-0b37bdaa78ca
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	c0713b51-a1a6-433d-b5aa-5c4c5bf01304
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	4e662a23-0426-4491-a8c0-cdd00813390a
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	6768f911-1029-47d5-8ece-b301ec187801
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	ad67fcdb-4856-44e1-bdce-727ce41394ba
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	41eb3678-4983-4c8d-bca5-eaa1d1739885
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	5d3316ce-96e9-49bb-a3a9-cbd2c193b271
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	a758028a-4163-4dd0-8e92-f709f5f45399
b82a3562-4c4c-49ec-8fe4-6c9f638a165a	416dbf29-4e78-43db-ab9d-31fb01d2d9ed
a47fc313-8938-5525-911c-e7917347c273	3e3b4899-003f-51b4-bad1-6982eb091137
a47fc313-8938-5525-911c-e7917347c273	0be5e0e8-de5b-5f0f-b1c5-d06cd141fea7
a47fc313-8938-5525-911c-e7917347c273	ccfcd933-634b-5d5f-a9ed-929a5473f15d
a47fc313-8938-5525-911c-e7917347c273	e1911682-b394-58fb-8e98-b3d503e15e2b
a47fc313-8938-5525-911c-e7917347c273	1dff99ab-8f2a-5bf0-8081-705fe2cb53b5
a47fc313-8938-5525-911c-e7917347c273	453b0af2-a6e7-5512-a3ce-eb20e3bf8b8c
a47fc313-8938-5525-911c-e7917347c273	8035c92a-0929-59f7-8562-ecc0b9c0aa75
a47fc313-8938-5525-911c-e7917347c273	e9cd457a-d53a-5d2f-9839-4132a0103b4c
a47fc313-8938-5525-911c-e7917347c273	13663156-7582-599e-a6b1-5018602c7acc
a47fc313-8938-5525-911c-e7917347c273	d4c64f6c-e9f7-542e-99c7-077dba449369
a47fc313-8938-5525-911c-e7917347c273	0671d53b-2e66-5da6-9823-52bca92326b3
a47fc313-8938-5525-911c-e7917347c273	3e0edcae-6909-50b5-8ec2-63d55cd662c1
a47fc313-8938-5525-911c-e7917347c273	05472b82-4859-5818-a5b3-88aee2b150e4
a47fc313-8938-5525-911c-e7917347c273	850cd047-74b3-52a0-aa9f-45599ed0f788
a81b6caa-cffa-54a1-b556-51aed94bac1e	7e12b8f3-bf38-5f23-8793-0dc8e2d3b06c
a81b6caa-cffa-54a1-b556-51aed94bac1e	f15720bd-3340-5a88-addb-a4df4070cfe3
a81b6caa-cffa-54a1-b556-51aed94bac1e	1c0ccf2d-9c2e-5460-b81f-225a4bf61247
a81b6caa-cffa-54a1-b556-51aed94bac1e	2ff073ac-c1ab-5657-a1d3-1bbb146c71fd
a81b6caa-cffa-54a1-b556-51aed94bac1e	fcec80f8-c236-5453-88c2-88ffc086c15d
a81b6caa-cffa-54a1-b556-51aed94bac1e	ce443f1e-f4da-5ed8-b396-f46192c094bf
a81b6caa-cffa-54a1-b556-51aed94bac1e	69ff3360-3bf9-5759-a39c-2ee6a2ea72ef
a81b6caa-cffa-54a1-b556-51aed94bac1e	7183428f-9b37-5dd8-9438-a83b3b7fef55
a81b6caa-cffa-54a1-b556-51aed94bac1e	f61f94f5-ae82-53d3-a37f-3c88ee75d437
a81b6caa-cffa-54a1-b556-51aed94bac1e	3a2ecb84-d6a5-5337-ab2d-02ac5645d85a
a81b6caa-cffa-54a1-b556-51aed94bac1e	e2670054-a26a-5515-8db1-6a9aaf799fe4
\.


--
-- Data for Name: Restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Restaurant" ("phoneNumber", "restaurantName", rating, address) FROM stdin;
+16027952555	Pomo Pizzeria (1st St & Pierce)	4.8	705 N 1st St, 120, Phoenix, AZ 85004
+16022720581	KFC (1525 N 43rd Ave)	4.3	1525 N 43rd Ave, Phoenix, AZ 85009
+16026058010	Applebee's (51st - Baseline)	4	5210 W Baseline Rd., Laveen, AZ 85339
+16027775072	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)	4.6	5130 W Baseline Rd Ste 105, Laveen, AZ 85339
+16022340857	Del Taco (305 E Thomas Rd | 1124)	4.4	305 E Thomas Rd, Phoenix, AZ 85012
+16023436973	NYPD Pizza (W McDowell)	4.7	556 W Mcdowell Rd, Phoenix, AZ 85003
+16022543171	Blue Fin	4.7	1401 N. Central Ave, Phoenix, AZ 85004
\.


--
-- Data for Name: RestaurantToCategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RestaurantToCategory" ("categoryName", "restaurantName") FROM stdin;
American	Applebee's (51st - Baseline)
Burgers	Applebee's (51st - Baseline)
Sandwich	Applebee's (51st - Baseline)
Family Friendly	Applebee's (51st - Baseline)
Comfort Food	Applebee's (51st - Baseline)
Pasta	Applebee's (51st - Baseline)
Salads	Applebee's (51st - Baseline)
Sandwiches	Applebee's (51st - Baseline)
Steak	Applebee's (51st - Baseline)
Wings	Applebee's (51st - Baseline)
Healthy	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)
Mexican	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)
Group Friendly	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)
Fast Food	Del Taco (305 E Thomas Rd | 1124)
Mexican	Del Taco (305 E Thomas Rd | 1124)
Tacos	Del Taco (305 E Thomas Rd | 1124)
Pizza	NYPD Pizza (W McDowell)
American	NYPD Pizza (W McDowell)
Italian	NYPD Pizza (W McDowell)
Family Friendly	NYPD Pizza (W McDowell)
Group Friendly	NYPD Pizza (W McDowell)
Japanese	Blue Fin
Asian	Blue Fin
Sushi	Blue Fin
Pizza	Pomo Pizzeria (1st St & Pierce)
Italian	Pomo Pizzeria (1st St & Pierce)
Family Friendly	Pomo Pizzeria (1st St & Pierce)
American	Applebees (51st - Baseline)
Burgers	Applebees (51st - Baseline)
Sandwich	Applebees (51st - Baseline)
Family Friendly	Applebees (51st - Baseline)
Comfort Food	Applebees (51st - Baseline)
Pasta	Applebees (51st - Baseline)
Salads	Applebees (51st - Baseline)
Sandwiches	Applebees (51st - Baseline)
Steak	Applebees (51st - Baseline)
Wings	Applebees (51st - Baseline)
American	KFC (1525 N 43rd Ave)
Fast Food	KFC (1525 N 43rd Ave)
wings	KFC (1525 N 43rd Ave)
Family Meals	KFC (1525 N 43rd Ave)
Family Friendly	KFC (1525 N 43rd Ave)
Group Friendly	KFC (1525 N 43rd Ave)
\.


--
-- Data for Name: RestaurantToMenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RestaurantToMenu" ("restaurantName", "menuId") FROM stdin;
Pomo Pizzeria (1st St & Pierce)	e5468e08-24d6-5867-985d-0fd38b7bf58a
KFC (1525 N 43rd Ave)	a81b6caa-cffa-54a1-b556-51aed94bac1e
Applebee's (51st - Baseline)	a47fc313-8938-5525-911c-e7917347c273
Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)	2066f9bc-e9c3-5517-8b5e-260dcb54b4f7
Del Taco (305 E Thomas Rd | 1124)	5a52e241-5877-595f-ac33-6ec5fa96b6ce
NYPD Pizza (W McDowell)	23b37dd2-760c-54c9-a675-bc5d907d9875
Blue Fin	54371d2f-1c83-494c-bea0-7abaf9319e6b
\.


--
-- Data for Name: RestaurantToReview; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RestaurantToReview" ("reviewId", "restaurantName") FROM stdin;
67074873-4d57-4e44-b31d-3d8a4948927c	Applebee's (51st - Baseline)
92a23a62-7c9b-4c1f-8c9f-4dff329a7261	Applebee's (51st - Baseline)
f4b7cc19-fdd6-4a4f-b8b6-e6c5dbfd046c	Applebee's (51st - Baseline)
d49eedb4-e644-4e02-99da-000370c97745	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)
1323c1c2-fe2d-4900-9793-8e61cbc2e29d	Chipotle Mexican Grill (5130 W Baseline Rd Ste 105)
752b663a-6c98-4bf0-b316-95e989149985	Del Taco (305 E Thomas Rd | 1124)
8759b104-0760-4bd9-bf84-c5c95121a304	Del Taco (305 E Thomas Rd | 1124)
def06b24-5e9d-49f2-82f5-053b7c23c3ab	Del Taco (305 E Thomas Rd | 1124)
9364a2f2-1eca-4c80-b967-b3346f92ac4d	NYPD Pizza (W McDowell)
496c6e85-3473-4332-a6a9-6effbf313a12	NYPD Pizza (W McDowell)
e2afe63c-05c2-415b-8fe1-f0ee3744ce67	NYPD Pizza (W McDowell)
4b635936-686a-4ba1-86b7-76976ec3ffda	NYPD Pizza (W McDowell)
0a906011-bdd2-44c3-8858-f0ccafffeaa5	NYPD Pizza (W McDowell)
4ce2ff5e-f6ef-4dd9-81bb-67fa8b0b4442	NYPD Pizza (W McDowell)
1591d0f5-e9eb-4bfb-af6b-ff431cbf785f	NYPD Pizza (W McDowell)
49795848-c89e-44e6-9086-08bfe65ecbea	NYPD Pizza (W McDowell)
71165a3a-08b7-4bbf-acf9-e4d2e55d7325	NYPD Pizza (W McDowell)
c0fef4e4-165b-49a6-9c7a-6f253895b7a8	NYPD Pizza (W McDowell)
e7e1eb1f-49c6-465b-a40c-b4688ddf8851	NYPD Pizza (W McDowell)
43f00bbd-d256-4ea8-8ad5-8756ac011d0e	NYPD Pizza (W McDowell)
5e909bbf-a6ff-4e7f-a3fa-6eaba6fe07c5	NYPD Pizza (W McDowell)
443a4892-4f28-41a5-9168-8b1263af6a48	NYPD Pizza (W McDowell)
7af2cb94-6868-415a-93c4-71cbd7bb76a5	NYPD Pizza (W McDowell)
2f6929a4-57b4-4171-858e-c7649899de22	NYPD Pizza (W McDowell)
ec37c355-58c5-40a9-bd2f-254216dc6ea7	NYPD Pizza (W McDowell)
b54039a0-8bbf-47fe-88d1-2f0220f83d99	NYPD Pizza (W McDowell)
0b305de8-36c7-4def-beea-0ea813598132	NYPD Pizza (W McDowell)
ca21e9cd-fd9c-465e-a352-a23d65ace2e7	NYPD Pizza (W McDowell)
56f4fc95-0828-49f1-bf05-5d07c5965944	NYPD Pizza (W McDowell)
f3c01bcc-c5b7-4b48-851b-c80268d25b44	NYPD Pizza (W McDowell)
78a9d523-872d-4650-8328-2ed99d2b6dd1	NYPD Pizza (W McDowell)
587d8d95-5890-4910-a746-fe0f94a17863	NYPD Pizza (W McDowell)
758a6f74-33bc-42c9-b49d-281088b3c95d	NYPD Pizza (W McDowell)
ccd27279-6703-4397-8330-05922956f3ec	NYPD Pizza (W McDowell)
6ffbd605-cffe-4f74-a426-3ab48a0f58d1	Blue Fin
d037254e-47e4-405d-b771-677bf8e505f9	Blue Fin
cc1dfb0b-1766-4062-b612-18f22f8623f7	Blue Fin
d4bf7deb-16a3-45ff-8edc-01e821db506d	Pomo Pizzeria (1st St & Pierce)
e485d2c4-4bae-4491-bd96-b95764f1c507	Pomo Pizzeria (1st St & Pierce)
da0f3c60-b831-44ff-9489-91f1906a6454	Pomo Pizzeria (1st St & Pierce)
4a8c4cc6-db6a-4111-a9d0-3320753cf67d	Pomo Pizzeria (1st St & Pierce)
17dcf2fe-561f-4c17-9711-249d89a4a1c8	Pomo Pizzeria (1st St & Pierce)
db3fcd54-1dc6-4574-9e72-782b21babb30	Pomo Pizzeria (1st St & Pierce)
01afa0aa-29d0-40e5-b2c4-85ebcb3a00c5	Pomo Pizzeria (1st St & Pierce)
47099781-aa8a-400d-a76a-f755adb85419	Pomo Pizzeria (1st St & Pierce)
a8b00d54-04a3-4241-9970-ed2826b91df9	Pomo Pizzeria (1st St & Pierce)
c81a7cb8-76a2-4b5b-aa6a-69450ee338dd	Asian Dining (E McDowell Rd)
5226e4de-8997-4e7c-9144-27295742c0e9	Asian Dining (E McDowell Rd)
39740cf8-bdb4-4b92-9f6d-83e2c214764b	Applebees (51st - Baseline)
1f920c3f-b8ff-42c9-9b2e-a744fd915535	KFC (1525 N 43rd Ave)
e02999b8-c6f8-4db1-b4c0-db88e42608f2	KFC (1525 N 43rd Ave)
655872e2-87c3-4bc3-826b-4d5480ad5c42	KFC (1525 N 43rd Ave)
57f2267c-78d3-4149-9635-a6993a901c2f	KFC (1525 N 43rd Ave)
\.


--
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Review" (text, reviewer, "reviewId") FROM stdin;
Food and service was perfect.	Kevin W.	67074873-4d57-4e44-b31d-3d8a4948927c
Food was great but didn't receive item I actually order been instead I got the pasta with chicken tenders look good I'm bout to go in	Gabriel C.	92a23a62-7c9b-4c1f-8c9f-4dff329a7261
Exelente	Luis M.	f4b7cc19-fdd6-4a4f-b8b6-e6c5dbfd046c
Great timely service.	Savannah S.	d49eedb4-e644-4e02-99da-000370c97745
Quick and yummy	Jenifer M.	1323c1c2-fe2d-4900-9793-8e61cbc2e29d
My Uber eats delivery drivers was very friendly and was able to get my food to me while it was still hot and fresh	Malik C.	752b663a-6c98-4bf0-b316-95e989149985
Tacos rock	Santino C.	8759b104-0760-4bd9-bf84-c5c95121a304
Wonderful	Robert B.	def06b24-5e9d-49f2-82f5-053b7c23c3ab
Amazing food, calzones and garlic cheese knots are to die for! love it	Tulasi P.	9364a2f2-1eca-4c80-b967-b3346f92ac4d
Delicious pizza... Best in the valley	Tulasi P.	496c6e85-3473-4332-a6a9-6effbf313a12
When I'm in PHX, I love looking forward to ordering in NYPD pizza. The pizza is  consistently fresh and their pepperoni always hits the spot.	Vinodh Kumar Y.	e2afe63c-05c2-415b-8fe1-f0ee3744ce67
I think the best thing that my husband and I love about them is their portions! They always hook us up when we order wings! Their flavors are great and so are their prices!	Pranaya B.	4b635936-686a-4ba1-86b7-76976ec3ffda
Great food, always consistent ly good	Tulasi P.	0a906011-bdd2-44c3-8858-f0ccafffeaa5
I love NYPD cause it's locally owned with the pizza around towwwnnn!!	Shyam S.	4ce2ff5e-f6ef-4dd9-81bb-67fa8b0b4442
Great tasting pizza!	Sandi M.	1591d0f5-e9eb-4bfb-af6b-ff431cbf785f
Extremely nice people! Great service and food! ??	Shyam S.	49795848-c89e-44e6-9086-08bfe65ecbea
Great pizza	Blair H.	71165a3a-08b7-4bbf-acf9-e4d2e55d7325
Food was good	Amanda L.	c0fef4e4-165b-49a6-9c7a-6f253895b7a8
?always good food	Azharuddin M.	e7e1eb1f-49c6-465b-a40c-b4688ddf8851
I love everything about thwir pizza,  the crust, the sauce, the cheese!! They have never failed me with my orders!	Aishwarya Y.	43f00bbd-d256-4ea8-8ad5-8756ac011d0e
Great pizza. Amazing service. Love that NYPD Pizza	Tulasi P.	5e909bbf-a6ff-4e7f-a3fa-6eaba6fe07c5
Was fast and friendly	Randy M.	443a4892-4f28-41a5-9168-8b1263af6a48
Great ingredients and consistent! Customer for life!	Pola N.	7af2cb94-6868-415a-93c4-71cbd7bb76a5
this pizza is delicious every time i order it!!	Karishma K.	2f6929a4-57b4-4171-858e-c7649899de22
Great pizza and fast service.	Sai Krishna C.	ec37c355-58c5-40a9-bd2f-254216dc6ea7
The food is great, not much else to say.	Azharuddin M.	b54039a0-8bbf-47fe-88d1-2f0220f83d99
Always the best tasting pizza	Pranaya B.	0b305de8-36c7-4def-beea-0ea813598132
It tastes like dollar pizza from New York if you ask for light cheese. I love the stuff.	Tulasi P.	ca21e9cd-fd9c-465e-a352-a23d65ace2e7
Great at fulfilling large orders for the office and everyone loves the pizza, wings and mozarella!!	Pranaya B.	56f4fc95-0828-49f1-bf05-5d07c5965944
Awesome as always!	Marcos M.	f3c01bcc-c5b7-4b48-851b-c80268d25b44
Very good food!	Andela V.	78a9d523-872d-4650-8328-2ed99d2b6dd1
Very good	Jouven L.	587d8d95-5890-4910-a746-fe0f94a17863
Fantastic as always	Marcos M.	758a6f74-33bc-42c9-b49d-281088b3c95d
Love this place best ny pizza	Isabelle O.	ccd27279-6703-4397-8330-05922956f3ec
Delicious	Dwawn I.	6ffbd605-cffe-4f74-a426-3ab48a0f58d1
love the panko ??	Karishma K.	d037254e-47e4-405d-b771-677bf8e505f9
Amazing love this place been around for years!	Monica C.	cc1dfb0b-1766-4062-b612-18f22f8623f7
Everything is delicious. This is Italian food made with the best ingredients by people who know what they are doing.	Rhea H.	d4bf7deb-16a3-45ff-8edc-01e821db506d
love the food!	Nitesh S.	da0f3c60-b831-44ff-9489-91f1906a6454
Good, quality, authentic Italian	Pranaya B.	4a8c4cc6-db6a-4111-a9d0-3320753cf67d
Tasty pizza. Not everyone has tasty pizza. As soon as I tasted Pomo, my eyes lit up.	Srinivas S.	17dcf2fe-561f-4c17-9711-249d89a4a1c8
Best pizza in AZ!	Ibrahim M.	db3fcd54-1dc6-4574-9e72-782b21babb30
Im from NJ and very picky when it comes to pizza. This pizza very much reminds me of east coast style pizza that I grew up with and love.	Pola N.	01afa0aa-29d0-40e5-b2c4-85ebcb3a00c5
Great food	Ozell G.	47099781-aa8a-400d-a76a-f755adb85419
My go to for pizza and other Italian food	Lynda C.	a8b00d54-04a3-4241-9970-ed2826b91df9
Best lo mein I ever had ?? The shrimp lo mein is my favorite	Shravani G.	5226e4de-8997-4e7c-9144-27295742c0e9
Food and service was perfect.	Kevin W.	39740cf8-bdb4-4b92-9f6d-83e2c214764b
Delicious	Cyrus M.	1f920c3f-b8ff-42c9-9b2e-a744fd915535
Delicious food	Mary K S.	e02999b8-c6f8-4db1-b4c0-db88e42608f2
Fast and delicious as usual	Rexford B.	655872e2-87c3-4bc3-826b-4d5480ad5c42
large order with everything correct!	Andrea G.	57f2267c-78d3-4149-9635-a6993a901c2f
\.


--
-- PostgreSQL database dump complete
--

