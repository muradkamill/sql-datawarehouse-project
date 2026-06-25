drop table if exists bronze.crm_cust_info;
create table bronze.crm_cust_info
(
    cst_id             INT,
    cst_key            TEXT,
    cst_firstname      TEXT,
    cst_lastname       TEXT,
    cst_martial_status TEXT,
    cst_gndr           TEXT,
    cst_create_date    DATE
);

drop table if exists bronze.crm_prd_info;
create table bronze.crm_prd_info
(
    prd_id       INT,
    prd_key      TEXT,
    prd_nm       TEXT,
    prd_cost     INT,
    prd_line     TEXT,
    prd_start_dt DATE,
    prd_end_dt   DATE
);



drop table if exists bronze.crm_sales_details;
create table bronze.crm_sales_details
(
    sls_ord_num TEXT,
    sls_prd_key   TEXT,
    sls_cust_id   TEXT,
    sls_order_dt  INT,
    sls_ship_dt   INT,
    sls_due_dt    INT,
    sls_sales     INT,
    sls_quantity  INT,
    sls_price     INT
);


drop table if exists bronze.erp_cust_az12;
create table bronze.erp_cust_az12
(
    cid   TEXT,
    bdate DATE,
    gen   TEXT
);

drop table if exists bronze.erp_loc_a101;
create table bronze.erp_loc_a101
(
    cid   TEXT,
    cntry TEXT
);


drop table if exists bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2
(
    id          TEXT,
    cat         TEXT,
    subcat      TEXT,
    maintenance TEXT
);
