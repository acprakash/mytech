select HOU.NAME OU_NAME,
	   TRX.TRX_NUMBER,
	   RCT.NAME,
	   RCT.TYPE,
	   TRX.INVOICE_CURRENCY_CODE,
	   TRX.INTERFACE_HEADER_CONTEXT,
	   TRX.INTERFACE_HEADER_ATTRIBUTE1,
	   TRX.INTERFACE_HEADER_ATTRIBUTE2,
	   TRX.INTERFACE_HEADER_ATTRIBUTE3,
       TRX.INTERFACE_HEADER_ATTRIBUTE4,
       TRX.INTERFACE_HEADER_ATTRIBUTE5
from apps.ra_customer_trx_all trx,
      apps.hr_operating_units HOU,
      apps.RA_CUST_TRX_TYPES_ALL RCT,
      APPS.RA_CUST_TRX_LINE_GL_DIST_ALL DIST,
      APPS.GL_CODE_COMBINATIONS_KFV GCC
where hou.organization_id = trx.org_id
and rct.cust_trx_type_id = trx.cust_trx_type_id
and rct.org_id = trx.org_id
and hou.name IN ('OU_AM_US') --('OU_NP_IT','OU_SRL_IT')
AND TRX.CUSTOMER_TRX_ID = DIST.CUSTOMER_TRX_ID
AND DIST.CODE_COMBINATION_ID = GCC.CODE_COMBINATION_ID
AND GCC.SEGMENT2 IN ('031110000',
                        '030111000',
                        '030118000',
                        '031701000',
                        '031711000',
                        '031721200'
                        )
and trunc(TRX.trx_date) BETWEEN '01-JAN-2021' AND SYSDATE;


