select aip.invoice_num,aip.invoice_amount,asa.vendor_name,ast.vendor_site_code
from apps.ap_invoices_all aip,
     apps.ap_suppliers asa,
     apps.ap_supplier_sites_all ast
where aip.org_id = 119891
and asa.vendor_id = ast.vendor_id
and ast.vendor_site_id = aip.vendor_site_id
order by invoice_id desc
