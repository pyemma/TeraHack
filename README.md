We are team UCLA Xie Xing

Our project is to evaluate the safety of your current location. Currently, you can select a point on the Google map, and a marker will be located on that position with a histogram describing the types of crime within that area. The area is aggregrated by zipcode. 

We use Google API to build the client side, use Geocode to resovle the zipcode and use javascript to issue a request to our backend services. In our backend, there is a python script that is used for accessing Teradata's dataset and process the data according to each record's zipcode. We use ruby on rails to build the backend RESTful API for query.

There are two points that we have not implemented yet:
1. The appliction should be a mobile application, it will repeatedly issue request to our web service and will get the safety of the current location. If you are in danger, the application will alarm you.
2. We plan to use GMM as our model, each point's safety would be evaluate by the nearby point. And since the dataset does not have a safety associated with it, we plan to you EM algroithm to train the safety of each point in dataset.

## Data Scale
* cdc.national_divorce_trends  12
* cdc.national_marriage_trends 12

* crime_data.murders_by_weapon_type  5
* crime_data.police_military_purchases  49999
* crime_data.portland_crime    679110
* crime_data.san_diego_crime    615906  
* crime_data.us_crime_rates  20

* health.country_death_rates    9302
* health.life_expectancy_hivaids_countries    12
* health.life_expectancy_russia    12
* health.life_expectancy_usa   12
* health.life_expectancy_world_projection_2100  30    
* health.world_population_projection_2100   30

* housing_data.san_francisco_rental_listings    85944
* housing_data.freddie_mae_house_price_index  85944

* homeland_security
* homeland_securityrefugee_arrivals_by_country 10
* homeland_securityrefugee_arrivals_by_region    10
* homeland_securityfire_problem_overview      35
* homeland_securitynumber_fires_by_type  32  
    
* world_health_orginization.hepb_immunizations_oneyearolds: 184
* world_health_orginization.infants_exclusivley_breastfed_first6mos: 189

* weather.tornado_counts: 45
* weather.tornado_deaths: 45


* us_census.us_military_aid_inmillions: 12

* treasury.us_debt: 3743

* transportation.aircraft_accident_rates: 28
* transportation.alcohol_related_crashes: 23
* transportation.monthy_number_of_airline_passengers_all_carriers: 158
* transportation.retail_deisel_prices: 929
* transportation.unruly_airline_passengers: 21
* transportation.usa_airline_fuel_cost_consumption: 188
