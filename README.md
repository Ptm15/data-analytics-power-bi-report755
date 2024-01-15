# Project Name

## Overview
Brief description of the project and its goals.

## Milestone Achievements

### Orders Table
1. **Importing Data from Azure SQL Database:**
   - Connected to Azure SQL Database using the given credentials.
   - Imported the `orders_powerbi` table into Power BI.

2. **Data Privacy in Power Query Editor:**
   - Deleted the column named `[Card Number]` in Power Query Editor to ensure data privacy.

3. **Column Splitting:**
   - Separated `[Order Date]` and `[Shipping Date]` columns into date and time components.

4. **Data Integrity:**
   - Filtered out and removed rows with missing or null values in the `[Order Date]` column.

5. **Column Renaming:**
   - Renamed columns in the dataset for consistency and clarity in alignment with Power BI naming conventions.

### Products Table
1. **Importing Data from CSV:**
   - Downloaded the `Products.csv` file.
   - Used Power BI's Get Data option to import the file into the project.

2. **Data Cleaning and Transformation:**
   - Removed duplicates in the `product_code` column to ensure uniqueness.
   - Used Column From Examples to generate new columns for weight values and units.
   - Replaced blank entries in the units column with "kg".
   - Converted the data type of the values column to decimal number.
   - Handled errors during conversion by replacing them with the number 1.
   - Created a calculated column to convert non-kg units to kilograms.

3. **Column Deletion:**
   - Deleted unnecessary columns in Power Query Editor.

4. **Column Renaming:**
   - Renamed columns for consistency and clarity in alignment with Power BI naming conventions.

### Stores Table
1. **Importing Data from Azure Blob Storage:**
   - Connected to Azure Blob Storage using the given credentials.
   - Imported the `Stores` table into Power BI.

2. **Column Renaming:**
   - Renamed columns for consistency and clarity in alignment with Power BI naming conventions.

3. **Hierarchies and Calculated Columns:**
   - Created a date hierarchy with levels: Start of Year, Start of Quarter, Start of Month, Start of Week, Date.
   - Created a calculated column called `Country` in the Stores table for a full country name based on the `Stores[Country Code]` column.
   - Created a calculated column called `Geography` in the Stores table for a full geography name based on `Stores[Country Region]` and `Stores[Country]` columns, separated by a comma and a space.

4. **Data Category Assignment:**
   - Ensured the correct data category is assigned for specific columns:
     - World Region: Continent
     - Country: Country
     - Country Region: State or Province.

5. **Geography Hierarchy:**
   - Created a geography hierarchy with levels: World Region, Country, Country Region.

### Customers Table
1. **Importing Data from CSVs:**
   - Downloaded and unzipped the `Customers.zip` file.
   - Used Power BI's Get Data option with Folder data connector to import the Customers folder.

2. **Data Transformation:**
   - Created a Full Name column by combining `[First Name]` and `[Last Name]` columns.
   - Deleted unused columns (e.g., index columns).

3. **Column Renaming:**
   - Renamed columns for consistency and clarity in alignment with Power BI naming conventions.



