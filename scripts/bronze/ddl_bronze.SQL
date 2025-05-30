/*
========================================================================================================
DDL Script: Create Bronze Tables
========================================================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
========================================================================================================
*/
-- create table for every sourse, one by one as source
IF OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO
  
CREATE TABLE bronze.crm_cust_info (
    -- columns one by one as source
    cst_id INT,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(50),
    cst_lastname NVARCHAR(50),
    cst_material_status NVARCHAR(50),
    cst_gnar NVARCHAR(50),
    cst_create_date DATE
);
GO

IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    -- columns one by one as source
    prd_id INT,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(50),
    prd_cost INT,
    prd_line NVARCHAR(2),
    prd_start_dt DATE,
    prd_end_dt DATE
);
GO

IF OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    -- columns one by one as source
    sls_ord_num VARCHAR(50),
    sls_prd_key NVARCHAR(50),
    sls_cust_id INT,
    sls_order_dt VARCHAR(50),
    sls_ship_dt DATE,
    sls_due_dt DATE,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);
GO
  
-- U stands for object type == user defined table
IF OBJECT_ID ('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    -- columns one by one as source
    cid NVARCHAR(20),
    bdate DATE,
    gen NVARCHAR(20)
);
GO

IF OBJECT_ID ('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    -- columns one by one as source
    cid NVARCHAR(20),
    cntry NVARCHAR(50)
);
GO

IF OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    -- columns one by one as source
    id VARCHAR(10),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(5)
);
GO
