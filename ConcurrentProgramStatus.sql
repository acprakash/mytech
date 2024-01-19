SELECT FCP.USER_CONCURRENT_PROGRAM_NAME,FR.RESPONSIBILITY_NAME,FU.USER_NAME,FU.DESCRIPTION,FCR.*
FROM APPS.FND_CONCURRENT_PROGRAMS_VL FCP,
     APPS.FND_CONCURRENT_REQUESTS FCR,
     APPS.FND_RESPONSIBILITY_VL FR,
     APPS.FND_USER FU
WHERE FCP.CONCURRENT_PROGRAM_ID = FCR.CONCURRENT_PROGRAM_ID
AND FCR.RESPONSIBILITY_ID = FR.RESPONSIBILITY_ID
AND FCR.REQUESTED_BY = FU.USER_ID
--AND FCR.ORG_ID = 29564
--and FCR.REQUEST_ID IN (490754164,490745210,490736820)
--AND TRUNC(REQUESTED_START_DATE) >= '17-MAY-2021'
AND FCP.USER_CONCURRENT_PROGRAM_NAME = 'GEPS SOGGE TO Interface Program'
ORDER BY FCR.REQUEST_ID DESC


SELECT *
FROM  APPS.FND_CONCURRENT_REQUESTS FCR
WHERE FCR.REQUEST_ID IN (490754164,490745210,490736820)

490745210
