select hp.party_name,count(trx_number)
from apps.ra_customer_trx_all trx,
     apps.hz_cust_Accounts_all hca,
     apps.hz_parties hp
where trx.org_id = 119891
and trx.trx_number like 'X%'
and trx.bill_to_customer_id = hca.cust_Account_id
and hca.party_id = hp.party_id
group by hp.party_name
