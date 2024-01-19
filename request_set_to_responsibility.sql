ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-YYYY' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY';
ALTER SESSION SET  CURRENT_SCHEMA = APPS;

SELECT FRV.RESPONSIBILITY_NAME,fcsv.user_request_set_name
FROM   apps.fnd_responsibility_vl frv,
	   apps.fnd_request_groups frg,
	   apps.fnd_request_group_units frgu,
	   apps.fnd_request_Sets_vl fcsv
WHERE  frv.request_group_id = frg.request_group_id
AND    frgu.request_group_id = frg.request_group_id
AND    fcsv.request_set_id = frgu.request_unit_id
AND    fcsv.user_request_set_name = 'NP Collect Rev COGS Recognition Set'
AND FRV.RESPONSIBILITY_NAME LIKE '%PT-AG%'
