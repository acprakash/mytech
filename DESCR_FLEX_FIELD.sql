select DESCRIPTIVE_FLEXFIELD_NAME,
       DESCRIPTIVE_FLEX_CONTEXT_CODE,
       APPLICATION_COLUMN_NAME,
       END_USER_COLUMN_NAME,
       ENABLED_FLAG,
       REQUIRED_FLAG,
       DISPLAY_FLAG
from APPS.FND_DESCR_FLEX_COL_USAGE_VL 
where DESCRIPTIVE_FLEXFIELD_NAME = 'GL_JE_LINES'
ORDER BY DESCRIPTIVE_FLEX_CONTEXT_CODE,APPLICATION_COLUMN_NAME