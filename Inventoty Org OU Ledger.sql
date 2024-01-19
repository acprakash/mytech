ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-RR' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY'

SELECT HOU.ORGANIZATION_ID,HOU.NAME,GL.LEDGER_ID,GL.NAME,XEP.LEGAL_ENTITY_IDENTIFIER,XEP.NAME,OOD.ORGANIZATION_NAME,OOD.ORGANIZATION_ID,OOD.DISABLE_DATE,ood.inventory_enabled_flag
FROM ORG_ORGANIZATION_DEFINITIONS  OOD,
              hr_operating_units HOU, 
              GL_LEDGERS GL, 
              XLE_ENTITY_PROFILES XEP
WHERE OOD.OPERATING_UNIT = HOU.ORGANIZATION_ID              
AND OOD.SET_OF_BOOKS_ID = GL.LEDGER_ID
AND OOD.LEGAL_ENTITY = XEP.LEGAL_ENTITY_ID;