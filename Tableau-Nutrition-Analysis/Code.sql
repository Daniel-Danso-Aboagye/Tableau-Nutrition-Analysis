-- 1. Query to show the distribution of calories across different food items (bar chart)
SELECT
    Food,
    SUM(calories) AS Total_Calories
FROM
    nutrition_data
GROUP BY
    Food
ORDER BY
    Total_Calories DESC;

-- 2. Query to create a scatter plot comparing calories to protein content
SELECT
    calories,
    protein
FROM
    nutrition_data;

-- 3. Query to focus on low-calorie foods
SELECT
    *
FROM
    nutrition_data
WHERE
    calories < 100; -- Example threshold for low-calorie foods

-- 4. Query to calculate the total calories consumed per meal type
SELECT
    Meal,
    SUM(calories) AS Total_Calories
FROM
    nutrition_data
GROUP BY
    Meal;

-- 5. Query to find the average food score per day
SELECT
    Date,
    AVG(Food_Score) AS Average_Food_Score
FROM
    nutrition_data
GROUP BY
    Date;

-- 6. Query to calculate the total carbohydrates, fats, and proteins consumed per day
SELECT
    Date,
    SUM(carbs) AS Total_Carbs,
    SUM(fat) AS Total_Fat,
    SUM(protein) AS Total_Protein
FROM
    nutrition_data
GROUP BY
    Date;
