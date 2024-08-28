/* CREATE CROWNDFUNDING DATABASE -- CREATE TABLES */
--drop table Contacts; 
--drop table Category;
--drop table Subcategory;
--drop table Campaign;

/*-------------------------------------------------*/
-- [Step #1:] Create the table of contact information
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

-- View the table
SELECT * FROM public.contacts;

/*-------------------------------------------------*/
-- [Step #2:] Create the table of category
CREATE TABLE category (
    category_id VARCHAR(4) NOT NULL,
    category VARCHAR(12) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
	
);

-- View the table
SELECT * FROM public.category;

/*-------------------------------------------------*/
-- [Step #3:] Create the table of subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) NOT NULL,
    subcategory VARCHAR(20) NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

-- View the table
SELECT * FROM public.subcategory;

/*---------------------------------------------------*/
-- [Step #4:] Create the table of campaign. Note! Pay attention with foreign keys
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(4) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id),
	CONSTRAINT fk_campaign_contact_id FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	CONSTRAINT fk_campaign_category_id FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- View the table
SELECT * FROM public.campaign;


