DECLARE
  v_user_name  VARCHAR2(30):=UPPER('&Enter_User_Name');
  v_password   VARCHAR2(30):='&Enter_Password';
  v_session_id INTEGER     := USERENV('sessionid');

BEGIN
  fnd_user_pkg.createuser (
    x_user_name => v_user_name,
    x_owner => NULL,
    x_unencrypted_password => v_password,
    x_start_date => SYSDATE,
    x_end_date => NULL
  );

  COMMIT;

  DBMS_OUTPUT.put_line ('User:'||v_user_name||'Created Successfully');

EXCEPTION

  WHEN OTHERS THEN

    DBMS_OUTPUT.put_line ('Unable to create User due to'|| SQLCODE ||' ' || SQLERRM);

    ROLLBACK;

END;
/