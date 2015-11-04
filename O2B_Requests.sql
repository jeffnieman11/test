
/* Formatted on 12/19/2014 4:00:25 PM (QP5 v5.256.13226.35538) */
  SELECT *
    FROM XXCTS_DF_O.O2B_REQUESTS o2br, XXCTS_DF_O.O2B_REQUESTS_PARAM o2brp
   WHERE     1 = 1
         AND o2br.request_id = o2brp.request_id
         AND o2br.creation_user = 'ssorimut'
         and O2BR.REQUEST_ID in ('914660')
ORDER BY o2br.request_id DESC


/* Formatted on 1/12/2015 9:17:57 PM (QP5 v5.256.13226.35538) */
SELECT request_id, param_type, param_value
  FROM XXCTS_DF_O.O2B_REQUESTS_PARAM
 WHERE     1 = 1
       --AND request_id IN ('906737', '906689', '906795')
       AND param_value LIKE 'ROCK%TERRITORY%'

SELECT TO_DATE('14-06-2012 20:30','dd-MM-yyyy HH24:MI') FROM dual

select * from all_tables where table_name like '%AUTO%SUMMARY%'

select * from  XXCTS_DF_O.auto_1tier_output_summary where request_id = '10184' and Quarter = 'MAR'--oppty_category like '%Under%'

SELECT * FROM  XXCTS_DF_O.O2B_LINE_ITEMS_REPORT -- where request_id = '914689'-- and oppty_type <> 'ATTACH'

select * from XXCTS_DF_O.O2B_LINE_ITEMS_FINAL --where requestid = '914689'

select * from XXCTS_DF_O.O2B_OPPORTUNITY_LINE_ITEMS_F where 1=1 and level5 like '%ROCKIES%' order by INSTANCE_CREATION_DATE desc

select * from  XXCTS_DF_O.O2B_REQUESTS where request_id in  ('913722', '913742', '913741')

select * from  XXCTS_DF_O.o2b_sum_line_items_report

select * from  XXCTS_DF_O.O2B_REQUESTS_PARAM where request_id = 0



--------------------------------------------------------------------------------------
-- To Find Bill To Id and BE_GEO_ID

/* Formatted on 7/29/2015 12:44:32 PM (QP5 v5.256.13226.35538) */
SELECT h.BE_GEO_ID,
       h.be_geo_name,
       f.service_bill_to_id,
       f.service_bill_to_address_1,
       f.service_bill_to_address_2,
       f.service_bill_to_city,
       f.service_bill_to_country,
       f.service_bill_to_postal_code,
       F.SERVICE_BILL_TO_PROVINCE
  FROM XXCTS_DF_O.PARTNER_HIER_VW H, XXCTS_DF_O.SERVICE_BILL_TO_ADDRESS_VW F
 WHERE     1 = 1
       AND F.BILLTO_PARTY_KEY = H.PARTNER_SITE_PARTY_KEY
       AND f.service_bill_to_id IN ('133506026')
--------------------------------------------------------------------------------------

select * from  O2B_OPPORTUNITY_LINE_ITEMS_F where level5 like 'EAST%TERRITORY' order by level5 desc