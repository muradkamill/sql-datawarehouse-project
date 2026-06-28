drop table if exists silver.crm_cust_info;
create table silver.crm_cust_info
(
    cst_id             INT,
    cst_key            TEXT,
    cst_firstname      TEXT,
    cst_lastname       TEXT,
    cst_martial_status TEXT,
    cst_gndr           TEXT,
    cst_create_date    DATE,
    dwh_create_date date default current_date
);

drop table if exists silver.crm_prd_info;
create table silver.crm_prd_info
(
    prd_id       INT,
    prd_key      TEXT,
    cat_id      TEXT,
    prd_nm       TEXT,
    prd_cost     INT,
    prd_line     TEXT,
    prd_start_dt DATE,
    prd_end_dt   DATE,
    dwh_create_date date default current_date
);



drop table if exists silver.crm_sales_details;
create table silver.crm_sales_details
(
    sls_ord_num TEXT,
    sls_prd_key   TEXT,
    sls_cust_id   TEXT,
    sls_order_dt  INT,
    sls_ship_dt   INT,
    sls_due_dt    INT,
    sls_sales     INT,
    sls_quantity  INT,
    sls_price     INT,
    dwh_create_date date default current_date
);


drop table if exists silver.erp_cust_az12;
create table silver.erp_cust_az12
(
    cid   TEXT,
    bdate DATE,
    gen   TEXT,
    dwh_create_date date default current_date
);

drop table if exists silver.erp_loc_a101;
create table silver.erp_loc_a101
(
    cid   TEXT,
    cntry TEXT,
    dwh_create_date date default current_date
);


drop table if exists silver.erp_px_cat_g1v2;
create table silver.erp_px_cat_g1v2
(
    id          TEXT,
    cat         TEXT,
    subcat      TEXT,
    maintenance TEXT,
    dwh_create_date date default current_date
);
