insert dbo.DPcampDB
(
    FirstName, LastName, Gender, DateOfBirth, DPCamp, ArrivalDate, DepartureDate,
    HomeAddress, HomeCity, HomeCountry, HomeZip,
    IsMarried, BirthPlace,
    MotherFirstName, MotherLastName, MotherMaidenName, MotherDOB, MotherAddress,
    FatherFirstName, FatherLastName, FatherDOB, FatherAddress,
    IsAlive, DateOfDeath, Cemetery
)
select 'David', 'Klein', 'Male', '1925-05-14', 'Munich', '1946-02-10', null,
       '12 Main St', 'Warsaw', 'Poland', '00-001',
       1, 'Warsaw',
       'Sarah', 'Klein', 'Levi', '1900-07-12', '10 River Rd, Warsaw, Poland, 00-002',
       'Jacob', 'Klein', '1898-05-03', '10 River Rd, Warsaw, Poland, 00-002',
       1, null, null
union select 'Miriam', 'Rosen', 'Female', '1932-09-21', 'Feldafing', '1946-07-15', null,
       '45 Orchard St', 'Vilnius', 'Lithuania', '11-005',
       0, 'Vilnius',
       'Esther', 'Rosen', 'Goldberg', '1910-03-04', 'Vilnius, Lithuania, 11-005',
       'Aaron', 'Rosen', '1908-02-11', 'Vilnius, Lithuania, 11-005',
       1, null, null
union select 'Isaac', 'Levi', 'Male', '1918-11-03', 'Landsberg', '1945-12-01', '1947-05-01',
       '9 Hill Rd', 'Krakow', 'Poland', '31-001',
       1, 'Krakow',
       'Hannah', 'Levi', 'Weiss', '1893-04-05', 'Krakow, Poland, 31-001',
       'Moshe', 'Levi', '1891-09-12', 'Krakow, Poland, 31-001',
       1, null, null
union select 'Rachel', 'Stein', 'Female', '1929-04-25', 'Bergen', '1946-05-20', null,
       '23 Linden Ave', 'Budapest', 'Hungary', '10-015',
       0, 'Budapest',
       'Leah', 'Stein', 'Horowitz', '1905-02-08', 'Budapest, Hungary, 10-015',
       'David', 'Stein', '1902-11-20', 'Budapest, Hungary, 10-015',
       1, null, null
union select 'Moshe', 'Weiss', 'Male', '1910-01-07', 'Belsen', '1946-09-10', null,
       '1 Market St', 'Prague', 'Czechoslovakia', '11000',
       1, 'Prague',
       'Chana', 'Weiss', 'Friedman', '1888-06-18', 'Prague, Czechoslovakia, 11000',
       'Eliyahu', 'Weiss', '1887-05-20', 'Prague, Czechoslovakia, 11000',
       1, null, null
union select 'Esther', 'Goldman', 'Female', '1939-03-19', 'Fohrenwald', '1946-08-01', null,
       '78 Garden Rd', 'Vienna', 'Austria', '1101',
       0, 'Vienna',
       'Miriam', 'Goldman', 'Fischer', '1914-12-24', 'Vienna, Austria, 1101',
       'Shlomo', 'Goldman', '1912-03-15', 'Vienna, Austria, 1101',
       1, null, null
union select 'Reuven', 'Katz', 'Male', '1905-06-17', 'Lubeck', '1946-03-22', null,
       '5 Bridge St', 'Lodz', 'Poland', '90-001',
       1, 'Lodz',
       'Rivka', 'Katz', 'Berg', '1880-09-10', 'Lodz, Poland, 90-001',
       'Mendel', 'Katz', '1879-05-14', 'Lodz, Poland, 90-001',
       0, '1946-09-01', 'Lubeck Memorial Cemetery'
union select 'Leah', 'Green', 'Female', '1916-12-12', 'Bergen', '1946-11-30', null,
       '4 Olive Rd', 'Berlin', 'Germany', '10115',
       1, 'Berlin',
       'Sarah', 'Green', 'Weissman', '1894-05-03', 'Berlin, Germany, 10115',
       'Jacob', 'Green', '1890-07-07', 'Berlin, Germany, 10115',
       1, null, null
union select 'Aaron', 'Fischer', 'Male', '1937-02-08', 'Feldafing', '1946-04-22', null,
       '8 Cherry Ln', 'Vienna', 'Austria', '1101',
       0, 'Vienna',
       'Rachel', 'Fischer', 'Levi', '1915-08-02', 'Vienna, Austria, 1101',
       'Isaac', 'Fischer', '1911-06-04', 'Vienna, Austria, 1101',
       1, null, null
union select 'Sarah', 'Horowitz', 'Female', '1922-10-14', 'Landsberg', '1946-02-14', null,
       '22 Lake Rd', 'Kiev', 'Ukraine', '01001',
       0, 'Kiev',
       'Esther', 'Horowitz', 'Mendel', '1898-05-03', 'Kiev, Ukraine, 01001',
       'Baruch', 'Horowitz', '1896-09-09', 'Kiev, Ukraine, 01001',
       1, null, null
union select 'Chaim', 'Berg', 'Male', '1935-07-30', 'Munich', '1946-05-17', null,
       '13 Hill Rd', 'Warsaw', 'Poland', '00-001',
       0, 'Warsaw',
       'Ruth', 'Berg', 'Finkel', '1913-01-12', 'Warsaw, Poland, 00-001',
       'Isaac', 'Berg', '1910-03-11', 'Warsaw, Poland, 00-001',
       1, null, null
union select 'Hannah', 'Cohen', 'Female', '1940-06-20', 'Belsen', '1946-07-15', null,
       '9 Elm St', 'Budapest', 'Hungary', '10-020',
       0, 'Budapest',
       'Miriam', 'Cohen', 'Klein', '1918-10-10', 'Budapest, Hungary, 10-020',
       'Reuven', 'Cohen', '1916-02-02', 'Budapest, Hungary, 10-020',
       1, null, null
union select 'Jacob', 'Friedman', 'Male', '1928-09-01', 'Fohrenwald', '1946-06-01', null,
       '2 Forest Ln', 'Lviv', 'Ukraine', '79000',
       0, 'Lviv',
       'Rivka', 'Friedman', 'Levi', '1903-03-04', 'Lviv, Ukraine, 79000',
       'Yosef', 'Friedman', '1899-01-20', 'Lviv, Ukraine, 79000',
       1, null, null
union select 'Mendel', 'Weissman', 'Male', '1912-03-05', 'Landsberg', '1945-11-09', null,
       '10 Garden St', 'Prague', 'Czechoslovakia', '11000',
       1, 'Prague',
       'Rachel', 'Weissman', 'Berg', '1888-04-07', 'Prague, Czechoslovakia, 11000',
       'Moses', 'Weissman', '1886-02-10', 'Prague, Czechoslovakia, 11000',
       1, null, null
union select 'Eli', 'Goldstein', 'Male', '1943-02-12', 'Belsen', '1946-09-01', null,
       '3 Stone Rd', 'Krakow', 'Poland', '31-002',
       0, 'Krakow',
       'Leah', 'Goldstein', 'Rosen', '1919-01-14', 'Krakow, Poland, 31-002',
       'Samuel', 'Goldstein', '1917-10-30', 'Krakow, Poland, 31-002',
       1, null, null
union select 'Naomi', 'Finkel', 'Female', '1915-04-19', 'Lubeck', '1946-10-03', null,
       '7 Pine Rd', 'Vienna', 'Austria', '1102',
       1, 'Vienna',
       'Miriam', 'Finkel', 'Katz', '1893-08-05', 'Vienna, Austria, 1102',
       'Isaac', 'Finkel', '1891-02-14', 'Vienna, Austria, 1102',
       1, null, null
union select 'Samuel', 'Levi', 'Male', '1930-01-02', 'Munich', '1946-05-04', null,
       '2 Oak St', 'Lodz', 'Poland', '90-002',
       0, 'Lodz',
       'Chava', 'Levi', 'Green', '1907-05-09', 'Lodz, Poland, 90-002',
       'Eliyahu', 'Levi', '1903-12-23', 'Lodz, Poland, 90-002',
       1, null, null
union select 'Rivka', 'Bergman', 'Female', '1934-11-10', 'Feldafing', '1946-03-11', null,
       '8 Birch Rd', 'Warsaw', 'Poland', '00-002',
       0, 'Warsaw',
       'Esther', 'Bergman', 'Goldman', '1911-08-03', 'Warsaw, Poland, 00-002',
       'Yitzhak', 'Bergman', '1909-09-17', 'Warsaw, Poland, 00-002',
       1, null, null
union select 'Levi', 'Horowitz', 'Male', '1920-08-28', 'Bergen', '1946-12-12', null,
       '12 Brook St', 'Budapest', 'Hungary', '10-030',
       1, 'Budapest',
       'Miriam', 'Horowitz', 'Rosen', '1897-02-01', 'Budapest, Hungary, 10-030',
       'Joseph', 'Horowitz', '1894-04-10', 'Budapest, Hungary, 10-030',
       1, null, null;
go
