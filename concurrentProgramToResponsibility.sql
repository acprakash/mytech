select  fcp.user_concurrent_program_name,fr.responsibility_name,frg.application_id,fa.application_name,frg.request_group_name
from apps.fnd_request_groups frg,
     apps.fnd_request_group_units frgu,
     apps.fnd_concurrent_programs_vl fcp,
     apps.fnd_responsibility_vl fr,
     apps.fnd_application_vl fa
where frg.request_group_id = frgu.request_group_id     
and   frgu.request_unit_id = fcp.concurrent_program_id
and   fr.request_group_id = frg.request_group_id
and   fcp.user_concurrent_program_name = 'BKR Attachment Conversion Program'
and fr.responsibility_name like 'BKR%LFK%'
and fa.application_id = frg.application_id

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
AND FCP.USER_CONCURRENT_PROGRAM_NAME = 'BKR Card Payment File Read Program'
ORDER BY FCR.REQUEST_ID DESC

     
