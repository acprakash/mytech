SELECT HP.PARTY_NAME,HPS.*
FROM APPS.HZ_PARTIES HP,
     APPS.HZ_PARTY_SITES HPS,
     APPS.HZ_CUST_ACCOUNTS_ALL HCA,
     APPS.HZ_CUST_ACCT_SITES_ALL HCAS
WHERE HP.PARTY_ID = HCA.PARTY_ID
AND  HCA.CUST_ACCOUNT_ID = HCAS.CUST_ACCOUNT_ID
AND HP.PARTY_ID = HPS.PARTY_ID
AND HCAS.ORG_ID = 43945
AND HCAS.STATUS = 'A'
AND HP.PARTY_NAME = 'BAKER HUGHES PRESSURE CONTROL LP'AND HPS.PARTY_SITE_NUMBER = '008430456'
--and hca.account_number = '168329'


OU_IF1834_SA

select *
from hr_operating_units
where name = 'OU_IF1834_SA'

43945
