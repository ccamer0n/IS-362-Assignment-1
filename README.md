# IS-362-Assignment-1

Part 1
1. How many airplanes have listed speeds? 23 What is the minimum listed speed and the maximum listed speed? Minimum speed = 90, maximum speed = 432
2. What is the total distance flown by all of the planes in January 2013? 27188805 What is the total distance flown by all of the planes in January 2013 where the tailnum is missing? 81763
3. What is the total distance flown for all planes on July 5, 2013 grouped by aircraft manufacturer? Write this statement first using an INNER JOIN, then using a LEFT OUTER JOIN. How do your results compare? Since there are talinum values that exist in the flights table and not in the planes table, a LEFT JOIN will include NULL values in the manufacturer column. Since an INNER JOIN only included rows for values that exist in both tables being joined, it will not include NULL values.
4. Write and answer at least one question of your own choosing that joins information from at least three of the tables in the flights database. Which carrier had the most flights out of Newark airport in 2013? United Airlines Inc.

Part 2
https://public.tableau.com/views/IS362Assignment1_16939247970090/Sheet1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
