# db-Assignment
Answer (1)=>
The relationship between the "Product" and "Product_Category" entities is established through the "category_id" attribute in the "Product" entity. This attribute serves as a foreign key, linking each product to a specific category by referencing the "id" attribute in the "Product_Category" entity. In other words, the "category_id" in the "Product" entity is associated with the "id" in the "Product_Category" entity, forming a connection that allows products to be categorized under different product categories.


Answer(2)=>
To ensure that each product in the "Product" table has a valid category assigned to it, we can establish a foreign key relationship between the "Product" table's "category_id" column and the "product_category" table's "id" column. This way, every entry in the "Product" table must reference a valid category ID from the "product_category" table.
