SELECT *
FROM XLE_ENTITY_PROFILES XEP,
     XLE_REGISTRATIONS XER,
     HZ_LOCATIONS HL,
     HZ_RELATIONSHIPS HREL
WHERE LEGAL_ENTITY_IDENTIFIER = 'LE_IF1921_IQ'
AND XEP.LEGAL_ENTITY_ID = XER.SOURCE_ID
AND XER.SOURCE_TABLE = 'XLE_ENTITY_PROFILES'
AND XER.LOCATION_ID = HL.LOCATION_ID(+)
AND HREL.OBJECT_ID(+) = XEP.PARTY_ID


SELECT *
FROM HZ_PERSON_PROFILES
WHERE PERSON_FIRST_NAME LIKE 'Firdaus%'

select *
from HZ_ORG_CONTACTS