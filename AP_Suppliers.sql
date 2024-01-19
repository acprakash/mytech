SELECT SUP.VENDOR_NAME,SITE.VENDOR_SITE_CODE
FROM APPS.AP_SUPPLIERS SUP,
APPS.AP_SUPPLIER_SITES_ALL SITE
WHERE SUP.VENDOR_ID = SITE.VENDOR_ID
AND SITE.ORG_ID = 120571
AND NVL(INACTIVE_DATE,SYSDATE + 1) > TRUNC(SYSDATE)  
order by vendor_name