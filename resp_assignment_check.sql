SELECT FU.USER_NAME,FU.DESCRIPTION,FA.APPLICATION_NAME,FR.RESPONSIBILITY_NAME,FRG.END_DATE
FROM APPS.FND_USER_RESP_GROUPS_DIRECT FRG,
     APPS.FND_RESPONSIBILITY_VL FR,
     APPS.FND_USER FU,
     APPS.FND_APPLICATION_VL FA
WHERE FU.USER_ID IN (SELECT USER_ID
                  FROM APPS.FND_USER
                  WHERE USER_NAME IN ('USERINTEFIN')
                  )
AND FRG.RESPONSIBILITY_ID(+) = FR.RESPONSIBILITY_ID                  
AND FU.USER_ID(+) = FRG.USER_ID
AND FA.APPLICATION_ID = FR.APPLICATION_ID
--AND FR.RESPONSIBILITY_NAME IN ('OG GL Super User (SRL-GE)','PS GL Super User (NP-GE)')
AND NVL(FRG.END_DATE,SYSDATE + 1) > SYSDATE
AND FR.RESPONSIBILITY_NAME IN ('BKR GL SL User (US-GE)',
                                'BKR GL User Display (US-GE)',
                                'OG PA Billing Super User (US-GE)',
                                'OG PA Accounting Period (US-GE)',
                                'OG PA Billing Power User (US-GE)',
                                'OG GL Super User (US-GE)',
                                'BHGE Projects Support (US-GE)',
                                'OG GL S Power User (US-GE)',
                                'OG PA Billing S Power User (US-GE)'
)

--AND SYSDATE BETWEEN FRG.START_DATE AND NVL(FRG.END_DATE,SYSDATE+1)

select *
from apps.fnd_user
where DESCRIPTION LIKE 'Francesca Berti%'


