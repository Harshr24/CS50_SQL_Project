CREATE TABLE Ingredients (id INTEGER PRIMARY KEY, name TEXT NOT NULL, price_per_unit REAL NOT NULL);
CREATE TABLE Donuts (id INTEGER PRIMARY KEY, name TEXT NOT NULL, gluten_free INTEGER NOT NULL, price REAL NOT NULL);
CREATE TABLE Donut_Ingredients (donut_id INTEGER NOT NULL, ingredient_id INTEGER NOT NULL, amount REAL NOT NULL, PRIMARY KEY (donut_id, ingredient_id), FOREIGN KEY (donut_id) REFERENCES Donuts (id), FOREIGN KEY (ingredient_id) REFERENCES Ingredients (id));
CREATE TABLE Customers (id INTEGER PRIMARY KEY, first_name TEXT NOT NULL, last_name TEXT NOT NULL);
CREATE TABLE Orders (id INTEGER PRIMARY KEY, customer_id INTEGER NOT NULL, order_number INTEGER NOT NULL, FOREIGN KEY (customer_id) REFERENCES Customers (id));
CREATE TABLE Order_Donuts (order_id INTEGER NOT NULL, donut_id INTEGER NOT NULL, quantity INTEGER NOT NULL, PRIMARY KEY (order_id, donut_id), FOREIGN KEY (order_id) REFERENCES Orders (id), FOREIGN KEY (donut_id) REFERENCES Donuts (id));

INSERT INTO Ingredients (name, price_per_unit) VALUES ('Cocoa', 5.00), ('Sugar', 2.00);
INSERT INTO Donuts (name, gluten_free, price) VALUES ('Belgian Dark Chocolate', 0, 4.00), ('Back-To-School Sprinkles', 0, 4.00);
INSERT INTO Donut_Ingredients (donut_id, ingredient_id, amount) VALUES (1, 1, 2.0), (1, 2, 4.0), (1, 3, 0.5), (2, 1, 2.0), (2, 2, 4.0), (2, 4, 2.0);
INSERT INTO Customers (first_name, last_name) VALUES ('Luis', 'Singh');
INSERT INTO Orders (customer_id, order_number) VALUES (1, 1);
INSERT INTO Order_Donuts (order_id, donut_id, quantity) VALUES (1, 1, 3), (1, 2, 2);
