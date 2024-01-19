SELECT * 
FROM PA_TASKS
WHERE PROJECT_ID IN (SELECT PROJECT_ID 
                                                FROM PA_PROJECTS_ALL 
                                                WHERE SEGMENT1= '2392373'
                                                )
ORDER BY TASK_ID DESC