SELECT *
FROM APPS.FND_DOCUMENT_SEQUENCES
WHERE NAME = 'CONV_PE'

SELECT *
FROM APPS.FND_DOC_SEQUENCE_ASSIGNMENTS FDSA,
     APPS.FND_DOCUMENT_SEQUENCES FDS
WHERE FDSA.DOC_SEQUENCE_ID = FDS.DOC_SEQUENCE_ID
AND FDS.NAME = 'CONV_PE'
AND FDS.APPLICATION_ID = FDSA.APPLICATION_ID

SELECT FDS.NAME,GJC.USER_JE_CATEGORY_NAME,FDSA.SET_OF_BOOKS_ID,FDSA.START_DATE,FDSA.END_DATE,FDSA.METHOD_CODE
FROM APPS.FND_DOC_SEQUENCE_ASSIGNMENTS FDSA,
     APPS.FND_DOCUMENT_SEQUENCES FDS,
     APPS.GL_JE_CATEGORIES GJC
WHERE FDSA.DOC_SEQUENCE_ID = FDS.DOC_SEQUENCE_ID
AND FDS.APPLICATION_ID = FDSA.APPLICATION_ID
AND FDSA.SET_OF_BOOKS_ID = 5
AND FDSA.CATEGORY_CODE = GJC.JE_CATEGORY_NAME
AND GJC.USER_JE_CATEGORY_NAME = 'FX ENTRY'
