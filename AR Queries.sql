select trx.trx_number,type.name,type.description,type.type
from APPS.RA_CUSTOMER_TRX_ALL trx,
     apps.RA_CUST_TRX_TYPES_ALL type
WHERE trx.TRX_NUMBER LIKE '2120018253'
AND trx.ORG_ID = 84
and type.cust_trx_type_id = trx.cust_trx_type_id

SELECT * 
FROM APPS.RA_CUSTOMER_TRX_LINES_ALL
WHERE CUSTOMER_TRX_ID IN (9505819) --,20490563,20489567)

select *
from APPS.RA_CUST_TRX_LINE_GL_DIST_ALL
WHERE CUSTOMER_TRX_ID IN (9505819)

    select *
    from  APPS.XLA_DISTRIBUTION_LINKS 
    where SOURCE_DISTRIBUTION_ID_NUM_1 in (
select cust_trx_line_gl_dist_id
from APPS.RA_CUST_TRX_LINE_GL_DIST_ALL
WHERE CUSTOMER_TRX_ID IN (9505819)
)
 
 select *
 from apps.RA_CUST_TRX_TYPES_ALL
 where cust_trx_type_id = 1053
 
 SELECT *
 FROM APPS.XLA_AE_LINES
 WHERE AE_HEADER_ID IN (257793661,257793568)
 AND LEDGER_ID = 5
    
select * 
from hr_operating_units
where organization_id = 119651

SELECT CODE_COMBINATION_ID,SEGMENT2
FROM APPS.GL_CODE_COMBINATIONS
WHERE CODE_COMBINATION_ID IN (6012680,5735158,6166088)


  SELECT flv.description
           INTO l_bank_acct_num
           FROM fnd_lookup_types  flt
               ,fnd_lookup_values flv
         WHERE 1 = 1
           AND flt.lookup_type   = 'BH_PE_DET_BANK_ACCT'
           AND flt.lookup_type   = flv.lookup_type
           AND flv.tag           = pi_operating_unit
           AND flv.enabled_flag  = 'Y'
           AND LANGUAGE          = USERENV('LANG');
