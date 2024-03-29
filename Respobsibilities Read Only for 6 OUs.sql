ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-RR' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY'

ALTER SESSION SET  CURRENT_SCHEMA = APPS

SELECT RESPONSIBILITY_NAME
FROM FND_RESPONSIBILITY_VL 
WHERE (UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1544%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1561%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1562%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1563%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1564%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%IF1834%'
                )
AND NVL(END_DATE,SYSDATE+1) > sysdate         



SELECT RESPONSIBILITY_NAME
FROM FND_RESPONSIBILITY_VL 
WHERE (UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1544%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1561%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1562%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1563%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1564%'
                OR
                UPPER(RESPONSIBILITY_NAME) LIKE '%READ%1834%'
                )
AND NVL(END_DATE,SYSDATE+1) > sysdate         
