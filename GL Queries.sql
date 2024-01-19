SELECT * 
FROM GL_LEDGERS
ORDER BY LEDGER_ID DESC


select *
from gl_je_batches
where name = 'AR UT 001';


SELECT *
FROM GL_JE_HEADERS
WHERE JE_BATCH_ID = 17079643;


select *
from gl_je_lines
where ledger_id = 846;


select *
from gl_je_lines
where ledger_id = 867;
