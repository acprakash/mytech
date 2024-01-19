ALTER SESSION SET CURRENT_SCHEMA = APPS

Select Distinct
    A.Id,
    A.SEQUENCE,
    A.Form_Name ,
    A.FUNCTION_NAME,
    A.Enabled,
    A.TRIGGER_EVENT,
    A.TRIGGER_OBJECT,
    A.CONDITION,
    C.User_Form_Name,
    D.Application_Name ,
    A.Description,
    Ca.Action_Type,
    Ca.Enabled,
    Ca.Object_Type,
    ca.message_type,
    ca.message_text,
    CA.*
from
    FND_FORM_CUSTOM_RULES a,
    FND_FORM b,
    FND_FORM_VL c,
    Fnd_Application_Vl D,
    Fnd_Form_Custom_Actions ca
where a.form_name = b.form_name
    And B.Form_Id = C.Form_Id
    And B.Application_Id = D.Application_Id
    And D.Application_NAME = 'General Ledger'
    And C.User_Form_Name = 'Enter Journals/Encumbrances'
    And A.Enabled = 'Y'
    and a.id = ca.rule_id
    AND A.DESCRIPTION = 'Line level Project DFF mandatory'
