use Accidents;

/* Create index on accident_index as it is using in both vehicles and accident tables and join clauses using indexes will perform faster */
drop index accident_index ON accident;
drop index accident_index ON vehicles;

CREATE INDEX accident_index
ON accident(accident_index);

CREATE INDEX accident_index
ON vehicles(accident_index);


/* get Accident Severity and Total Accidents per Vehicle Type */

SELECT 
    vt.vehicle_type AS Vehicle_type,
    a.accident_severity AS Accident_Severity,
    COUNT(v.accident_index) AS Total_Accident
FROM
    accident a
        JOIN
    vehicles v ON a.accident_index = v.accident_index
        JOIN
    vehicle_types vt ON v.vehicle_type = vt.vehicle_code
GROUP BY 1,2
ORDER BY 3 desc;

/* Average Severity by vehicle type */

SELECT 
    vt.vehicle_type AS vehicle_Type,
    AVG(a.accident_severity) AS Average_severity,
    COUNT(vt.vehicle_type) AS 'Number of Accidents'
FROM
    accident a
        JOIN
    vehicles v ON a.accident_index = v.accident_index
        JOIN
    vehicle_types vt ON v.vehicle_type = vt.vehicle_code
GROUP BY 1
ORDER BY 1;

/* Average Severity and Total Accidents by Motorcyle */

SELECT 
    vt.vehicle_type AS vehicle_Type,
    AVG(a.accident_severity) AS Average_severity,
    COUNT(vt.vehicle_type) AS 'Number of Accidents'
FROM
    accident a
        JOIN
    vehicles v ON a.accident_index = v.accident_index
        JOIN
    vehicle_types vt ON v.vehicle_type = vt.vehicle_code
WHERE
    vt.vehicle_type LIKE '%otorcycle%'
GROUP BY 1
ORDER BY 1;

select vehicle_type from vehicle_types where vehicle_type like '%otorcycle%';