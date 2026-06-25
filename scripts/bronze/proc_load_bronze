do $$
    begin

        begin
        copy bronze.crm_cust_info
            from '/Users/muradkamil/Desktop/source_crm/cust_info.csv'
            delimiter ','
            csv header;
        exception
        when others then
            raise notice 'error:%' , SQLERRM;
        end;

        begin
        copy bronze.crm_prd_info
            from '/Users/muradkamil/Desktop/source_crm/prd_info.csv'
            delimiter ','
            csv header;
        exception
            when others then
                raise notice 'error:%' , SQLERRM;
        end;

        begin
        copy bronze.crm_sales_details
            from '/Users/muradkamil/Desktop/source_crm/sales_details.csv'
            delimiter ','
            csv header;
        exception
            when others then
                raise notice 'error:%' , SQLERRM;
        end;

        begin
        copy bronze.erp_cust_az12
            from '/Users/muradkamil/Desktop/source_erp/CUST_AZ12.csv'
            delimiter ','
            csv header;
        exception
            when others then
                raise notice 'error:%' , SQLERRM;
        end;

        begin
        copy bronze.erp_loc_a101
            from '/Users/muradkamil/Desktop/source_erp/LOC_A101.csv'
            delimiter ','
            csv header;
        exception
            when others then
                raise notice 'error:%' , SQLERRM;
        end;

        begin
        copy bronze.erp_px_cat_g1v2
            from '/Users/muradkamil/Desktop/source_erp/PX_CAT_G1V2.csv'
            delimiter '-'
            csv header;
        exception
            when others then
                raise notice 'error in erp_px_cat_g1v2 : % ' , SQLERRM;
        end;

end
$$;
