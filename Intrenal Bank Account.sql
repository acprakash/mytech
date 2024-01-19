(SELECT HP_LE.PARTY_NAME OwnerOrg,XEP.LEGAL_ENTITY_IDENTIFIER OwnerLE,XEP.NAME OwnerLEName,hou.name OwnerOU,HP_BANK.PARTY_NAME BankName,hp_bank.party_id,HP_BANK_BR.PARTY_NAME BranchName,HL_BANK.*,CBA.*
FROM CE_BANK_ACCOUNTS CBA,
     CE_BANK_ACCT_USES_ALL CBU,
     HZ_PARTIES HP_LE,
     XLE_ENTITY_PROFILES XEP,
     HR_OPERATING_UNITS HOU,
     HZ_PARTIES HP_BANK,
     HZ_PARTY_SITES HP_BANK_ST,
     HZ_LOCATIONS HL_BANK,
     HZ_PARTIES HP_BANK_BR,
     HZ_PARTY_SITES HP_BR_ST,
     HZ_LOCATIONS HL_BR
WHERE CBA.BANK_ACCOUNT_ID = CBU.BANK_ACCOUNT_ID
AND   CBA.ACCOUNT_OWNER_ORG_ID = XEP.LEGAL_ENTITY_ID(+)
AND   ACCOUNT_OWNER_PARTY_ID = HP_LE.PARTY_ID(+)
AND   CBA.BANK_ID = HP_BANK.PARTY_ID
AND   CBA.BANK_BRANCH_ID = HP_BANK_BR.PARTY_ID
AND HOU.ORGANIZATION_ID = CBU.ORG_ID
AND HP_BANK.PARTY_ID = HhP_BANK_ST.PARTY_ID(+)
AND HP_BANK_BR.PARTY_ID = HP_BR_ST.PARTY_ID(+)
AND HP_BR_ST.LOCATION_ID = HL_BR.LOCATION_ID(+)
AND HP_BANK_ST.LOCATION_ID = HL_BANK.LOCATION_ID(+)
AND TRUNC(SYSDATE) BETWEEN TRUNC(NVL(CBA.START_DATE,SYSDATE-1)) AND TRUNC(NVL(CBA.END_DATE,SYSDATE+1))

