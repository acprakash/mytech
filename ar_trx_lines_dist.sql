select min(trx_date), max(trx_date)
from apps.ra_customer_trx_all trx,
     apps.ra_customer_trx_lines_all lines,
     apps.ra_cust_trx_line_gl_dist_all dist,
       apps.hz_cust_Accounts_all hca,
     apps.hz_parties hp
where trx.org_id = 119851
and trx.trx_number like '_%'
AND TRUNC(trx.CREATION_DATE) = TRUNC(SYSDATE)
and trx.customer_trx_id = lines.customer_trx_id
and lines.customer_trx_line_id = dist.customer_trx_line_id
and trx.bill_to_customer_id = hca.cust_Account_id
and hca.party_id = hp.party_id


SELECT 
