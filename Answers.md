1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
ANSWER - From the above diagram, we can see that the "Product" entity has a foreign key category_id which references the id of the "Product_Category" entity. This indicates a one-to-many relationship between "Product_Category" and "Product", where a single category can have multiple products associated with it.


2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
ANSWER - To ensure that each product in the "Product" table has a valid category assigned to it, we can implement a constraint on the category_id column of the "Product" table. This constraint can be a foreign key constraint that references the "Product_Category" table's id column. This way, any attempt to insert a product without a valid category_id will result in an error, ensuring that all products have a valid category assigned to them.
