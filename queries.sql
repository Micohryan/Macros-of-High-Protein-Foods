--1. Queries
SELECT *
From macros_table
Where diet_type = 'Vegetarian' or diet_type = 'Vegan'

--2.
SELECT *
From macros_table
Where diet_type = 'Vegan'

--3.
SELECT *
From macros_table
Order BY proteins_100g DESC

--4.
SELECT *
From macros_table
Where diet_type = 'Vegetarian' or diet_type = 'Vegan'
Order BY proteins_100g DESC

--5a.
-- Diet avg of Veggie
SELECT AVG(proteins_100g) AS avg_protein_in_diet
From macros_table
WHERE diet_type = 'Vegetarian' or diet_type = 'Vegan'

--5b.
-- Diet avg of Vegan
SELECT AVG(proteins_100g) AS avg_protein_in_diet
From macros_table
WHERE diet_type = 'Vegan'

--5c.
--Diet avg of all foods
SELECT AVG(proteins_100g) AS avg_protein_in_diet
From macros_table

--6a.
-- Avg calories in Vegetarian Diet
SELECT diet_type, AVG(energy_100g) AS avg_calories_in_diet
From macros_table
WHERE diet_type = 'Vegetarian' or diet_type = 'Vegan'

--6b.
-- Avg calories in Vegan Diet
SELECT diet_type, AVG(energy_100g) AS avg_calories_in_diet
From macros_table
WHERE diet_type = 'Vegan'

--6c.
--Avg calories in Omnivorous Diet
SELECT diet_type, AVG(energy_100g) AS avg_calories_in_diet
From macros_table

--7.
SELECT food_name, (proteins_100g/energy_100g) AS percent_energy
From macros_table
Order BY percent_energy Desc

--8.
SELECT food_name, carbohydrates_100g
From macros_table
Order BY carbohydrates_100g DESC

--9.
SELECT food_name, fat_100g
From macros_table
Order BY fat_100g DESC

--10.
SELECT food_name, energy_100g AS Calories_per_100g
From macros_table
Order BY Calories_per_100g DESC

--11.
SELECT AVG(energy_100g) AS avg_calories_per_100g, category_name
From macros_table
Group BY category_name

--12.
SELECT category_name, AVG(energy_100g) AS avg_calories_per_100g
From macros_table
Group BY category_name
Order By avg_calories_per_100g DESC

--13.
SELECT category_name, AVG(proteins_100g) AS avg_proteins_per_100g
From macros_table
Group BY category_name
Order By avg_proteins_per_100g DESC