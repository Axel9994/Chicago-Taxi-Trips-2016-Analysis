CREATE TABLE dbo.DimPaymentMethod(
	payment_id int NOT NULL,
	payment_type varchar(50) NOT NULL,
    CONSTRAINT PK_DimPaymentMethod PRIMARY KEY CLUSTERED 
    (
        payment_id ASC
    )
);
GO


CREATE TABLE dbo.StageTrips(
	trip_start_date date NOT NULL,
	trip_end_date date NOT NULL,
	taxi_id int NOT NULL,
	pickup_community_area int NOT NULL,
	dropoff_community_area int NOT NULL,
	payment_id int NOT NULL,
	company int NOT NULL,
	trips bigint NOT NULL,
	avg_trip_seconds decimal(18, 2) NOT NULL,
	avg_trip_miles decimal(18, 2) NOT NULL,
	fare decimal(18, 2) NOT NULL,
	tips decimal(18, 2) NOT NULL,
	tolls decimal(18, 2) NOT NULL,
	extras decimal(18, 2) NOT NULL,
	trip_total decimal(18, 2) NOT NULL
);
GO

CREATE TABLE dbo.FactTrips(
	trip_start_date date NOT NULL,
	trip_end_date date NOT NULL,
	taxi_id int NOT NULL,
	pickup_community_area int NOT NULL,
	dropoff_community_area int NOT NULL,
	payment_id int NOT NULL,
	company int NOT NULL,
	trips bigint NOT NULL,
	avg_trip_seconds decimal(18, 2) NOT NULL,
	avg_trip_miles decimal(18, 2) NOT NULL,
	fare decimal(18, 2) NOT NULL,
	tips decimal(18, 2) NOT NULL,
	tolls decimal(18, 2) NOT NULL,
	extras decimal(18, 2) NOT NULL,
	trip_total decimal(18, 2) NOT NULL
);
GO


CREATE CLUSTERED COLUMNSTORE INDEX cc_fact_trips ON dbo.FactTrips;
GO