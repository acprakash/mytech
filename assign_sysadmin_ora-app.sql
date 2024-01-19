BEGIN
fnd_user_pkg.addresp ('&Enter_User_Name','SYSADMIN','SYSTEM_ADMINISTRATOR','STANDARD','Add Responsibility to USER using pl/sql',SYSDATE,SYSDATE + 100);
commit;
dbms_output.put_line('Responsibility Added Successfully');
exception
        WHEN others THEN
                dbms_output.put_line(' Responsibility is not added due to ' || SQLCODE || substr(SQLERRM, 1, 100));
                ROLLBACK;
END;
/