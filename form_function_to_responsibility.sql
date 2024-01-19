ALTER SESSION SET NLS_LANGUAGE= 'AMERICAN' NLS_TERRITORY= 'AMERICA' NLS_CURRENCY= '$' NLS_ISO_CURRENCY= 'AMERICA' NLS_NUMERIC_CHARACTERS= '.,' NLS_CALENDAR= 'GREGORIAN' NLS_DATE_FORMAT= 'DD-MON-YYYY' NLS_DATE_LANGUAGE= 'AMERICAN' NLS_SORT= 'BINARY';
ALTER SESSION SET  CURRENT_SCHEMA = APPS;



SELECT fr.RESPONSIBILITY_NAME,fm.MENU_NAME,fme.PROMPT,fff.FUNCTION_NAME
FROM apps.fnd_responsibility_vl fr,
            apps.fnd_menus_vl fm,
            apps.fnd_menu_entries_vl fme,
            apps.fnd_form_functions_vl fff
where fr.MENU_ID = fm.MENU_ID
and fm.menu_id = fme.menu_id
and fme.FUNCTION_ID = fff.FUNCTION_ID
and fff.function_name = 'NPGL_NPGLPAYINT'