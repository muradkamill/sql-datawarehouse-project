-- if  crm tables are master for gender
create or replace view gold.dim_customer as
select row_number() over (order by cst_id) as customer_key,
       cci.cst_id                          as customer_id,
       cci.cst_key                         as customer_number,
       cci.cst_firstname                   as first_name,
       cci.cst_lastname                    as last_name,
       ela101.cntry                        as country,
       cci.cst_martial_status              as martial_status,
       case
           when cci.cst_gndr <> 'n/a' then cci.cst_gndr
           else coalesce(eca12.gen, 'n/a')
           end                             as gender,
       cci.cst_create_date                 as create_date,
       eca12.bdate                         as birth_date
from silver.crm_cust_info cci
         left join silver.erp_cust_az12 eca12
                   on cci.cst_key = eca12.cid
         left join silver.erp_loc_a101 ela101
                   on cci.cst_key = ela101.cid;



create view gold.dim_products as
select row_number() over (order by prd_start_dt,prd_key) as product_key,
       prd_id                                            as product_id,
       prd_key                                           as product_number,
       prd_nm                                            as product_name,
       cat_id                                            as category_id,
       epcg1v2.cat                                          ascategory,
       epcg1v2.subcat                                    as subcategory,
       epcg1v2.maintenance,
       prd_cost                                          as cost,
       prd_line                                          as product_line,
       prd_start_dt                                      as start_date
from silver.crm_prd_info as cpi
         left join silver.erp_px_cat_g1v2 as epcg1v2
                   on cpi.cat_id = epcg1v2.id
where prd_end_dt is null; --filter out historical data;


create view gold.fact_sales as
select sls_ord_num  as order_number,
       dp.product_key,
       dc.customer_key,
       sls_order_dt as order_date,
       sls_ship_dt  as shipping_date,
       sls_due_dt   as due_date,
       sls_sales    as sales_amount,
       sls_quantity as quantity,
       sls_price    as price
from silver.crm_sales_details csd
         left join gold.dim_customer dc
                   on dc.customer_id = csd.sls_cust_id
         left join gold.dim_products dp
                   on dp.product_number = csd.sls_prd_key;
