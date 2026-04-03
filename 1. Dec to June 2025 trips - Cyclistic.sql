-- Combine all the tables in one so quering is cleaner and easier
CREATE OR REPLACE TABLE `drift-project-1.Bike_trips.Dec2024_to_june2025`
AS
SELECT * 
FROM `drift-project-1.Bike_trips.Dec_2024`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.Jan_2025`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.Feb_2025`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.Mar_2025`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.Apr_2025`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.May_2025`
UNION ALL
SELECT * 
FROM `drift-project-1.Bike_trips.Jun_2025`
