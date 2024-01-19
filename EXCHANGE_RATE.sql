SELECT TYPES.USER_CONVERSION_TYPE,RATES.*
FROM APPS.GL_DAILY_RATES RATES,
     APPS.GL_DAILY_CONVERSION_TYPES TYPES
WHERE RATES.CONVERSION_TYPE = TYPES.CONVERSION_TYPE
AND  TYPES.USER_CONVERSION_TYPE IN ('User','SPOT_CO','MOR')    
AND FROM_CURRENCY IN ('EUR','USD')
AND TO_CURRENCY IN ('USD','COP')
AND CONVERSION_DATE IN ('06-JUN-2019','20-OCT-2016')
ORDER BY CONVERSION_DATE DESC
