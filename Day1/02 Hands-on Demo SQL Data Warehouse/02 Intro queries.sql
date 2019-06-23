

-- Distributions scaling 
SELECT   *  FROM SYS.pdw_distributions

-- list the distributions on the compute nodes
SELECT distinct pdw_node_id, MIN(distribution_id) [min_distributions_id], MAX(distribution_id) [max_distributions_id]
FROM SYS.pdw_distributions
GROUP BY pdw_node_id
ORDER BY 2

-- Total number of compute nodes
SELECT count(distinct pdw_node_id) [No of Nodes] 
FROM SYS.pdw_distributions
GROUP BY pdw_node_id

-- resource class
SELECT name 
FROM   sys.database_principals
WHERE  name LIKE '%rc%' AND type_desc = 'DATABASE_ROLE';







