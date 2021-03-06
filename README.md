# Vaccination-Distribution-Management-System
The purpose of the database model is to maintain, process and generate data to support vaccine distribution over different networks. The database enables coordination and ensures timely administration of vaccines to the intended recipients. It stores information about the vaccine manufacturers, vaccine distributors such as centres, pharmacies, and hospitals, also stores data regarding the patients receiving the vaccine such as which vaccine they have received, the age group they belong to and the location where they live. The database allows the organization to calculate the number of vaccines distributed, number of vaccines required, number of people partially vaccinated, number of people fully vaccinated, affected areas, and ensuring an efficient vaccine delivery.

Business Problems Addressed:

The following business problems are addressed by the database model:

• The database model maintains the information about the availability of vaccines at vaccination centres,
hospitals and pharmacies.

• Stores the inventory records of different vaccines available at vaccination centres, hospitals and pharmacies.

• Stores data from the Purchase Department and the Inventory Department of the vaccination distribution
location.

• Records are maintained about the purchase orders of vaccines by the vaccination distribution location.

• Also stores information regarding different vaccine manufacturers that supply vaccines to the distribution
locations.

• Stores a record of the details of the vaccine recipient, along with the date of receiving first and second
dosage.

• Provides recipients with the information regarding the vaccine manufacturer and distribution locations.

• It allows tracking of the number of vaccines administered, along with the number of dosages received by
each recipient in a particular area.

• Helps abridge the complexity between distribution locations and the recipients in a particular area.


Business Rules:

• Each recipient has a unique residential address and a single contact number.

• Each area admin must log in with unique login credentials to manage the operations for that area.

• Each distribution location receives one or more orders from multiple vaccine manufacturers.

• The availability of vaccines varies from area to area.

• Each recipient can receive only two dosages of the same vaccine.

• Each dosage received by a recipient must have a minimum of 21 days gap.

• If vaccine V1 is available in area A1, and v1 is also known to be available in the pharmacies of division A, it can be inferred that the pharmacies in area A1 have vaccine v1 available.

Chens Relationship Diagram:

![image](https://user-images.githubusercontent.com/78456439/138176772-528bcc37-0b63-4916-afd3-78a94eb470be.png)

Database Dictionary:

![image](https://user-images.githubusercontent.com/78456439/138176868-984f01ff-5daf-4e7c-9782-4766c4891d68.png)

Key Design Decisions: 

![image](https://user-images.githubusercontent.com/78456439/138176905-c562fb8e-6e2e-4993-a686-43f2e23d058b.png)

Entity Relationship Diagram:

![image](https://user-images.githubusercontent.com/78456439/138177141-05840943-ed61-4621-adf1-4e174a64e969.png)
