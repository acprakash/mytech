DECLARE

l_appl_short_key VARCHAR2(540);
l_resp_key VARCHAR2(540);
l_user_name VARCHAR2(540) := '&Enter_User_Name';
l_resp_name VARCHAR2(540) := '&Enter_Resp_Name';

BEGIN
select   fa.application_short_name,frv.responsibility_key
into l_appl_short_key,l_resp_key
from fnd_responsibility_vl frv,
     fnd_application fa
where frv.application_id = fa.application_id
and responsibility_name = l_resp_name;

fnd_user_pkg.addresp (l_user_name,l_appl_short_key,l_resp_key,'STANDARD','Add Responsibility to USER using pl/sql',SYSDATE,SYSDATE + 100);
commit;
dbms_output.put_line('Responsibility Added Successfully');
exception
        WHEN others THEN
                dbms_output.put_line(' Responsibility is not added due to ' || SQLCODE || substr(SQLERRM, 1, 100));
                ROLLBACK;
END;
/