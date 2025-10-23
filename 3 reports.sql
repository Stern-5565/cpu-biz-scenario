-- Daily arrivals: How many displaced persons arrived today?
select TodaysArrivals = count(*), [Day] = d.ArrivalDate
from dbo.DPcampDB d
where d.ArrivalDate = cast(getdate() as date)
group by d.ArrivalDate;


-- Top camps: Which 5 DP camps received the most arrivals in the last 30 days?
select top 5 Arrivals = count(*), d.DPCamp
from dbo.DPcampDB d
where d.ArrivalDate between dateadd(day, -30, cast(getdate() as date)) and cast(getdate() as date)
group by d.DPCamp
order by count(*) desc;


-- Current population by camp: How many DPs are currently present (not departed and alive)?
select CurrentPopulation = count(*), d.DPCamp
from dbo.DPcampDB d
where (d.DepartureDate is null or d.DepartureDate > cast(getdate() as date))
  and d.IsAlive = 1
group by d.DPCamp
order by count(*) desc;


-- Daily departures: How many people departed today?
select TodaysDepartures = count(*), [Day] = d.DepartureDate
from dbo.DPcampDB d
where d.DepartureDate = cast(getdate() as date)
group by d.DepartureDate;


-- Bunk occupancy: How many DPs in each bunk (currently alive and in camp)?
select Occupants = count(*), d.BunkNumber
from dbo.DPcampDB d
where (d.DepartureDate is null or d.DepartureDate > cast(getdate() as date))
  and d.IsAlive = 1
group by d.BunkNumber
order by d.BunkNumber;


-- Mortality report: How many deceased, grouped by cemetery
select DeceasedCount = count(*), d.Cemetery
from dbo.DPcampDB d
where d.IsAlive = 0
group by d.Cemetery
order by count(*) desc;


-- Country of origin report: How many DPs from each country?
select PeopleCount = count(*), d.HomeCountry
from dbo.DPcampDB d
group by d.HomeCountry
order by count(*) desc, d.HomeCountry;


-- Average age by camp (using computed Age column)
select AvgAge = avg(cast(d.Age as decimal(10,2))), d.DPCamp
from dbo.DPcampDB d
group by d.DPCamp
order by AvgAge desc;


-- Family structure: How many have parents with different addresses?
select 
    DifferentParentAddresses = sum(case when d.MotherAddress <> d.FatherAddress then 1 else 0 end),
    SameParentAddresses = sum(case when d.MotherAddress = d.FatherAddress then 1 else 0 end),
    UnknownOrMissing = sum(case when d.MotherAddress is null or d.FatherAddress is null then 1 else 0 end)
from dbo.DPcampDB d;


-- Population overview: Alive vs Deceased...
select 
    Status = case when d.IsAlive = 1 then 'Alive' else 'Deceased' end,
    TotalPeople = count(*)
from dbo.DPcampDB d
group by case when d.IsAlive = 1 then 'Alive' else 'Deceased' end;

