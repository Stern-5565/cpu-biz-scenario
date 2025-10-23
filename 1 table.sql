drop table if exists dbo.DPcampDB;
go

create table dbo.DPcampDB(
    DP_ID int not null identity primary key,

    -- Basic Info
    FirstName varchar(50) not null constraint DP_FirstName_not_blank check(FirstName <> ''),
    LastName  varchar(50) not null constraint DP_LastName_not_blank  check(LastName  <> ''),
    Gender    varchar(10) not null constraint DP_Gender_valid         check(Gender in ('Male','Female','Other')),
    DateOfBirth date not null constraint DP_DOB_not_in_future         check(DateOfBirth <= getdate()),

    -- Camp Details
    DPCamp       varchar(50) not null constraint DP_Camp_not_blank check(DPCamp <> ''),
    ArrivalDate  date not null constraint DP_Arrival_not_in_future check(ArrivalDate <= getdate()),
    DepartureDate date null,

    -- Computed fields (use deterministic DATEFROMPARTS)
    Age as datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) persisted,
    BunkNumber as 
        case 
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 0 and 10  then 1
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 11 and 20 then 2
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 21 and 30 then 3
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 31 and 40 then 4
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 41 and 50 then 5
            when datediff(year, DateOfBirth, DATEFROMPARTS(1947,12,31)) between 51 and 60 then 6
            else 7
        end persisted,

    -- Home address
    HomeAddress  varchar(100) not null,
    HomeCity     varchar(50)  not null,
    HomeCountry  varchar(50)  not null,
    HomeZip      varchar(15)  null,

    -- Family Info
    IsMarried bit not null default 0,

    BirthPlace varchar(50) null,

    MotherFirstName  varchar(50) null,
    MotherLastName   varchar(50) null,
    MotherMaidenName varchar(50) null,
    MotherDOB date null constraint DP_Mother_DOB_not_in_future check(MotherDOB is null or MotherDOB <= getdate()),
    MotherAddress varchar(150) null,

    FatherFirstName varchar(50) null,
    FatherLastName  varchar(50) null,
    FatherDOB date null constraint DP_Father_DOB_not_in_future check(FatherDOB is null or FatherDOB <= getdate()),
    FatherAddress varchar(150) null,

    -- If deceased
    IsAlive bit not null default 1,
    DateOfDeath date null,
    Cemetery varchar(100) null,

    -- Computed registration number
    RegistrationNumber as concat(FirstName, LastName, year(DateOfBirth), upper(left(DPCamp,3))) persisted,

    -- TABLE-LEVEL CHECKS
    constraint CK_DPcampDB_Departure_after_arrival 
        check (DepartureDate is null or DepartureDate >= ArrivalDate),

    constraint CK_DPcampDB_DeathDate_valid
        check (DateOfDeath is null or DateOfDeath >= DateOfBirth),

    constraint CK_DPcampDB_IsAlive_DeathDate_consistency
        check ((IsAlive = 1 and DateOfDeath is null) or (IsAlive = 0 and DateOfDeath is not null))
);
go
