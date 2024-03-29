SELECT material_code,MACHINE_SERIAL_NUMBER 
FROM APPS.NPEAM_DM_ASSET_COMPONENT A
WHERE MATERIAL_CODE in ('259B2460BTG2',
 'IRF316711899',
 'RVO28356',
 'IS200TRLYH1B',
 '68A9663PDC24XN',
 'DS2020DACAG2',
 '246B8279G4',
 'IS415UCVHH1A',
 'IS200TRTDH1C',
 'DS2020PDMAG6',
 'IS200TBAIH1C',
 '386A3003P0001',
 '382A9473P0001',
 '231D1477G001',
 '231D1476G001',
 '216A5269P0001'
 )
and machine_serial_number in (('820056/559-135',
'820442',
'820057/559-138',
'820443',
'820058/559-139',
'820444',
'298634/G07771',
'C13240',
'C13241',
'298635/G07773',
'C13243',
'C13244',
'G06674',
'C12076',
'C12075',
'C12077',
'G06671',
'C12080',
'C12079',
'C12078',
'G07602',
'C13012',
'C13013',
'C13011',
'930705',
'C13015',
'C13017',
'C13016',
'G07912',
'C13376',
'C13375',
'C13374'
)
