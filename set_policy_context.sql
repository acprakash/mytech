BEGIN
MO_GLOBAL.SET_POLICY_CONTEXT('S','84');
END;
/
COMMIT

BEGIN
MO_GLOBAL.SET_POLICY_CONTEXT('S','30144');
END;
/
commit;


BEGIN
MO_GLOBAL.SET_POLICY_CONTEXT('S','29564');
END;
/
commit;

SELECT APPS.FND_GLOBAL.ORG_NAME FROM DUAL
UNION
SELECT TAG
FROM APPS.FND_LOOKUP_VALUES_VL FVL
WHERE FVL.LOOKUP_TYPE = 'BKR_PBPC_RECAST_OU_PAIR'
AND FVL.LOOKUP_CODE = APPS.FND_GLOBAL.ORG_NAME
AND NVL(FVL.ENABLED_FLAG,'Y') = 'Y'
AND SYSDATE BETWEEN FVL.START_DATE_ACTIVE AND NVL(FVL.END_DATE_ACTIVE,SYSDATE + 1)


SELECT *
FROM 

INSERT INTO npgl.BKR_PBPC_DEF_RECAST_TRAFFIC_LT(ORG_ID,
                                           LEDGER_ID,
                                           PERIOD_NAME,
                                           SOURCE_NAME,
                                           STATUS
                                           )
                                           VALUES(84,
                                                  5,
                                                  'MAY-21',
                                                  'Account Receivables',
                                                  'Open'
                                                  )
                                                  

INSERT INTO npgl.BKR_PBPC_DEF_RECAST_TRAFFIC_LT(ORG_ID,
                                           LEDGER_ID,
                                           PERIOD_NAME,
                                           SOURCE_NAME,
                                           STATUS
                                           )
                                           VALUES(30144,                                                                           
                                                  345,
                                                  'MAY-21',
                                                  'Account Receivables',
                                                  'Open'
                                                  )                                                  
SELECT *
FROM npgl.BKR_PBPC_DEF_RECAST_TRAFFIC_LT


SELECT 'A','B'
FROM DUAL
WHERE NOT EXISTS (SELECT 1
                  FROM npgl.BKR_PBPC_DEF_RECAST_TRAFFIC_LT
                  WHERE PERIOD_NAME = 'JUN-21')
