ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-YYYY' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY';
ALTER SESSION SET  CURRENT_SCHEMA = APPS;

select *
from gl_daily_rates
where from_currency in ('USD','EUR')
AND TO_CURRENCY = 'GBP'
and conversion_Date in ('29-JUN-2023','28-JUN-2023','12-SEP-2022')
AND CONVERSION_TYPE = '1000'
