select  fr.responsibility_name,frg.request_group_name,frg.request_group_code,fa.application_name
from apps.fnd_request_groups frg,
     apps.fnd_responsibility_vl fr,
      apps.fnd_application_vl fa
where   fr.request_group_id = frg.request_group_id
and frg.application_id = fa.application_id
--AND frg.request_group_name = 'GL Concurrent Program Group'
and   fr.responsibility_name IN ('OG GL SL User (NP-GE)')
/*,
                                'OG GL Super User (SRL-GE)',
                                'PS GL Super User (NP-GE)',
                                'OG GL WEB ADI (SRL-GE)',
                                'PS GL WEB ADI (NP-GE)'
                                )
                                */
     


