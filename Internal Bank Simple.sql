SELECT HP_LE.PARTY_NAME OwnerOrg,
       XEP.LEGAL_ENTITY_IDENTIFIER OwnerLE,
       XEP.NAME OwnerLEName,
       hou.name OwnerOU,
       HOU.ORGANIZATION_ID,
       CBA.BANK_ACCOUNT_NAME,
       CBA.BANK_ACCOUNT_NUM,
       CBA.CURRENCY_CODE,
       CBA.BANK_ACCOUNT_NUM_ELECTRONIC,
       CBA.multi_currency_allowed_flag,
       CBU.AP_USE_ENABLE_FLAG,
       CBU.AR_USE_ENABLE_FLAG,
       CBU.AUTHORIZED_FLAG,
       CBB.BANK_HOME_COUNTRY,
       CBB.BANK_NAME,
       CBB.BANK_NUMBER,
       CBB.BANK_BRANCH_NAME,
       CBB.ADDRESS_LINE1,
       CBB.ADDRESS_LINE2,
       CBB.ADDRESS_LINE3,
       CBB.ADDRESS_LINE4,
       CBB.CITY,
       CBB.STATE,
       CBB.PROVINCE,
       CBB.ZIP,
       CBB.COUNTRY,
       CBB.BANK_BRANCH_TYPE,
       CBB.DESCRIPTION,
       CBB.EFT_SWIFT_CODE,
       CBB.EFT_USER_NUMBER
FROM CE_BANK_ACCOUNTS CBA,
     CE_BANK_ACCT_USES_ALL CBU,
     HZ_PARTIES HP_LE,
     XLE_ENTITY_PROFILES XEP,
    -- HZ_GEOGRAPHIES HG,
     HR_OPERATING_UNITS HOU,
     CE_BANK_BRANCHES_V CBB
WHERE CBA.BANK_ACCOUNT_ID = CBU.BANK_ACCOUNT_ID
AND   CBA.ACCOUNT_OWNER_ORG_ID = XEP.LEGAL_ENTITY_ID(+)
AND   ACCOUNT_OWNER_PARTY_ID = HP_LE.PARTY_ID(+)
--AND   XEP.GEOGRAPHY_ID = HG.GEOGRAPHY_ID
AND HOU.ORGANIZATION_ID = CBU.ORG_ID
AND CBB.BANK_PARTY_ID = CBA.BANK_ID
AND CBB.BRANCH_PARTY_ID = CBA.BANK_BRANCH_ID
AND NVL(CBU.AR_USE_ENABLE_FLAG,'N') = 'Y'
--AND HG.COUNTRY_CODE <> CBB.COUNTRY
AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(CBA.START_DATE,SYSDATE-1)) AND TRUNC(NVL(CBA.END_DATE,SYSDATE+1))
AND HOU.ORGANIZATION_ID = 69213
