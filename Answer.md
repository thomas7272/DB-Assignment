# DB-Assignment
1. The relationship is likely established through the "category_id" attribute in the "Product" entity.

Product_Category entity:

Fields:
id (int)
name (varchar)
desc (text)
created_at (timestamp)
modified_at (timestamp)
Product entity:

Fields:
id (int)

deleted_at (timestamp)

name (varchar)

desc (text)

...

category_id (int) - This is the key attribute indicating the relationship.

...

The "category_id" field in the "Product" entity likely serves as a foreign key, referencing the "id" field in the "Product_Category" entity. This establishes a relationship between the two entities. Each product in the "Product" entity is associated with a specific category through the "category_id" attribute.

In summary, the relationship between "Product" and "Product_Category" entities is that a product belongs to a specific product category, and this association is maintained through the "category_id" foreign key in the "Product" entity, referencing the "id" primary key in the "Product_Category" entity.


2.  you can use a foreign key constraint between the "category_id" column in the "Product" table and the "id" column in the "product_category" table. This constraint will enforce referential integrity, ensuring that every value in the "category_id" column of the "Product" table corresponds to a valid "id" in the "product_category" table.

Here's an example of how you can define the foreign key constraint:

sql

ALTER TABLE product
ADD CONSTRAINT fk_product_category
FOREIGN KEY (category_id)
REFERENCES product_category(id)
ON DELETE CASCADE;

This SQL statement adds a foreign key constraint named "fk_product_category" to the "Product" table, linking the "category_id" column to the "id" column in the "product_category" table. The "ON DELETE CASCADE" option is optional and specifies that if a category is deleted, the corresponding products will also be deleted. You can choose a different action based on your specific requirements.

By establishing this foreign key relationship, you ensure that each product in the "Product" table references a valid category in the "product_category" table, helping maintain data integrity. If an attempt is made to insert or update a product with an invalid category_id, the database will reject the operation, preventing inconsistencies in your data.




