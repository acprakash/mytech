ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-YYYY' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY';
ALTER SESSION SET  CURRENT_SCHEMA = APPS;

set define off
SELECT *
FROM FND_DESCR_FLEX_COL_USAGE_VL
WHERE DESCRIPTIVE_FLEXFIELD_NAME = 'OE_LINE_ATTRIBUTES'
AND DESCRIPTIVE_FLEX_CONTEXT_CODE = 'PT_US_NU_Ship & Bill line'

SELECT *
FROM FND_DESCR_FLEX_COL_USAGE_VL
WHERE DESCRIPTIVE_FLEXFIELD_NAME = 'OE_HEADER_ATTRIBUTES'
AND DESCRIPTIVE_FLEX_CONTEXT_CODE = 'PT_US_New Units'