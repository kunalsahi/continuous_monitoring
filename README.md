How to Use the Continuous Monitoring OData Reports in Excel
1.	Open Excel
2.	Go to the Data tab → Get Data → From Other Sources → From OData Feed

 

3.	Enter the OData URL
https://<yoursapsystemurl>/sap/opu/odata/sap/zapi_se_crit_auth?
 
4.	If credentials are not already stored, you will be prompted to sign in.
•	Choose Basic Authentication
•	Enter the PBI_SERVICE credentials (username and password)
 
5.	On the next screen, choose "Select multiple items"
•	Select all the queries you want to import
•	Click Load

 
6.	After loading, you will see 11 queries listed in the Queries & Connections panel (usually on the right).
•	Queries may take a few seconds to pull data from the production system.
 

7.	Load each query into a separate worksheet:
•	Right-click each query → Load To... → Select "Table" and choose "New worksheet"
•	Rename each worksheet appropriately (e.g., Critical Profiles, Critical Roles, Critical T-Codes, etc.)
 
8.	Save the Excel file.

Refreshing Data
•	To refresh a specific query, right-click it in the Queries & Connections panel and choose Refresh
•	To refresh all queries at once, go to the Data tab → click Refresh All
 
 

