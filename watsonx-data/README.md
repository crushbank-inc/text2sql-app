## watsonx.data UI access

1. TechZone environment is provisioned for watsonx.data
2. Kindly navigate to URL https://na4.services.cloud.techzone.ibm.com:25602 to access the UI. 
3. Login using ID `ibmlhadmin` and password `password`
4. Click on Hemberger menu available at top left corner.
5. Navigate to `Query workspace` 
6. Under Catalogs associated section click on `iceberg_data` -> `cb_di` and expand it. 
7. Data from JSON file is loaded to staging tables having `_stg` mentioned at the end of the table name. These tables have varchar datatype for all the columns. 
8. Relevant data conversion done through notebook and loaded to table. 


## Data Ingestion 

1.	JSON files have been ingested to watsonx.data in iceberg format following below steps.
 - Load JSON files into stg tables. 
 - Convert the datatype, change the date format and load data to actual tables name.
2.	Data ingestion notebook is available here.
3.	Since this is TechZone environment, Data Ingestion notebook should be run from TechZone environment, same can be access at http://na4.services.cloud.techzone.ibm.com:41802/notebooks/Crushbank_Data_Ingestion.ipynb . This limitation is not applicable for SaaS and Software version of watsonx.data.
