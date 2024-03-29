ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-YYYY' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY';
ALTER SESSION SET  CURRENT_SCHEMA = APPS;

SELECT FPO.USER_PROFILE_OPTION_NAME,FR.RESPONSIBILITY_NAME,FA.APPLICATION_NAME, FPOV.PROFILE_OPTION_VALUE
FROM FND_PROFILE_OPTIONS_VL FPO,
     FND_PROFILE_OPTION_VALUES FPOV,
     FND_RESPONSIBILITY_VL FR,
     FND_APPLICATION_VL FA
WHERE FPO.PROFILE_OPTION_ID = FPOV.PROFILE_OPTION_ID     
/*AND (FPO.USER_PROFILE_OPTION_NAME LIKE 'AR%'     
      OR
     FPO.USER_PROFILE_OPTION_NAME LIKE 'MO%'     
     )
*/--AND USER_PROFILE_OPTION_NAME = 'MO: Operating Unit'     
AND FPOV.LEVEL_VALUE = FR.RESPONSIBILITY_ID
--AND PROFILE_OPTION_VALUE = '119651'
AND LEVEL_ID = 10003
--AND FPO.APPLICATION_ID IN (0,602,222)
AND FR.RESPONSIBILITY_NAME = 'BHG IT Conversion Support CA'
AND FA.APPLICATION_ID = FPOV.APPLICATION_ID