    SELECT   g.* 
--           INTO l_email_address
           FROM APPS.HZ_PARTIES             a,
                APPS.HZ_CUST_ACCOUNTS       b,
                APPS.HZ_CUST_ACCT_SITES_ALL c,
                APPS.HZ_CUST_SITE_USES_ALL  d,
                APPS.HR_OPERATING_UNITS     e,
                APPS.HZ_CUST_ACCOUNT_ROLES  f,
                APPS.HZ_CONTACT_POINTS      g
          WHERE a.party_id = b.party_id
            AND b.cust_account_id   = c.cust_account_id
            AND d.cust_acct_site_id = c.cust_acct_site_id
            AND e.organization_ID   = c.org_id
            AND f.cust_account_id   = c.cust_account_id
            AND g.owner_table_id    = f.party_id
            AND c.cust_acct_site_id = f.cust_acct_site_id
            AND a.party_name        = 'PERU LNG SRL'
            AND g.owner_table_name  = 'HZ_PARTIES'
            AND g.contact_point_type= 'EMAIL'
            AND f.status            = 'A'
            AND c.bill_to_flag      = 'P'
            AND d.primary_flag      = 'Y'
            AND d.site_use_code     = 'BILL_TO'
            --REL087 starts
            AND g.status            = 'A'
            AND g.primary_flag      = 'Y' --MQ
            AND ROWNUM               = 1 --MQ
            --REL087 ends
            AND e.name              = 'OU_IF1842_PE';
            

HZ_CUST_ACCT_SITES_ALL.bill_to_glag 
HZ_CUST_SITE_USES_ALL.primary_flag


    SELECT DISTINCT g.email_address
--           INTO l_email_address
           FROM APPS.HZ_PARTIES             a,
                APPS.HZ_CUST_ACCOUNTS       b,
                APPS.HZ_CUST_ACCT_SITES_ALL c,
                APPS.HZ_CUST_SITE_USES_ALL  d,
                APPS.HR_OPERATING_UNITS     e,
                APPS.HZ_CUST_ACCOUNT_ROLES  f,
                APPS.HZ_CONTACT_POINTS      g
          WHERE a.party_id = b.party_id
            AND b.cust_account_id   = c.cust_account_id
            AND d.cust_acct_site_id = c.cust_acct_site_id
            AND e.organization_ID   = c.org_id
            AND f.cust_account_id   = c.cust_account_id
            AND g.owner_table_id    = f.party_id
            AND c.cust_acct_site_id = f.cust_acct_site_id
            AND a.party_name        = 'PLUSPETROL PERU CORPORATION SA'
            AND g.owner_table_name  = 'HZ_PARTIES'
            AND g.contact_point_type= 'EMAIL'
            AND f.status            = 'A'
            AND c.bill_to_flag      = 'P'
            AND d.primary_flag      = 'Y'
            AND d.site_use_code     = 'BILL_TO'
            --REL087 starts
            AND g.status            = 'A'
            AND g.primary_flag      = 'Y' --MQ
            AND ROWNUM               = 1 --MQ
            --REL087 ends
            AND e.name              = 'OU_IF1842_PE';
            
            
  SELECT DISTINCT g.* --g.email_address
         --    INTO l_email_address
             FROM APPS.HZ_PARTIES             a,
                  APPS.HZ_CUST_ACCOUNTS       b,
                  APPS.HZ_CUST_ACCT_SITES_ALL c,
                  APPS.HZ_CUST_SITE_USES_ALL  d,
                  APPS.HR_OPERATING_UNITS     e,
                  APPS.HZ_CUST_ACCOUNT_ROLES  f,
                  APPS.HZ_CONTACT_POINTS      g
            WHERE a.party_id = b.party_id
              AND b.cust_account_id   = c.cust_account_id
              AND d.cust_acct_site_id = c.cust_acct_site_id
              AND e.organization_ID   = c.org_id
              AND f.cust_account_id   = c.cust_account_id
              AND g.owner_table_id    = f.party_id
              AND c.cust_acct_site_id = f.cust_acct_site_id
              AND a.party_name        = 'PLUSPETROL PERU CORPORATION SA'
              AND g.owner_table_name  = 'HZ_PARTIES'
              AND g.contact_point_type= 'EMAIL'
              AND f.status            = 'A'
              AND c.ship_to_flag      = 'Y'
              AND f.status            = 'A'
              AND c.ship_to_flag      = 'P'
              AND d.primary_flag      = 'Y'
              AND d.site_use_code     = 'SHIP_TO'
              AND g.status            = 'A' -- Added in REL087
              AND e.name              = 'OU_IF1842_PE';        
