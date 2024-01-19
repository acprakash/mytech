select fr.responsibility_name,FRG.APPLICATION_ID,frg.request_group_name,FA.APPLICATION_NAME
from apps.fnd_request_groups frg,
          apps.fnd_responsibility_vl fr,
          APPS.FND_APPLICATION_VL FA
where   fr.request_group_id = frg.request_group_id
AND FA.APPLICATION_ID = FRG.APPLICATION_ID
and fr.responsibility_name like '%LFK%'