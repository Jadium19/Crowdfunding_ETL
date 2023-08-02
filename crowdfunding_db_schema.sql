-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int64   NOT NULL,
    "contact_id" int64   NOT NULL,
    "company_name" object   NOT NULL,
    "description" object   NOT NULL,
    "goal" float64   NOT NULL,
    "pledged" float64   NOT NULL,
    "outcome" object   NOT NULL,
    "backers_count" int64   NOT NULL,
    "country" object   NOT NULL,
    "currency" object   NOT NULL,
    "end_date" datetime64[ns]   NOT NULL,
    "Category_Id" object   NOT NULL,
    "Subcategory_Id" object   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "Category_Id" object   NOT NULL,
    "Category_Name" object   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_Id"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_Id" object   NOT NULL,
    "Subcategory_Name" object   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_Id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int64   NOT NULL,
    "name" object   NOT NULL,
    "email" object   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_Id" FOREIGN KEY("Category_Id")
REFERENCES "Category" ("Category_Id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_Id" FOREIGN KEY("Subcategory_Id")
REFERENCES "Subcategory" ("Subcategory_Id");

