SELECT FCP.USER_CONCURRENT_PROGRAM_NAME,FCR.*
FROM FND_CONCURRENT_PROGRAMS_VL FCP,
            FND_CONCURRENT_REQUESTS FCR
WHERE FCP.CONCURRENT_PROGRAM_ID = FCR.CONCURRENT_PROGRAM_ID
AND FCR.REQUEST_ID = 577031265