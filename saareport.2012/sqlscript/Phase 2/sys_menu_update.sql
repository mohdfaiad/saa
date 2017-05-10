select * from v_material_request
where status ='N'


select DELIVERY_NO,DELIVERY_DATE,COUNT(*) from so_det_DT

GROUP BY  DELIVERY_NO,DELIVERY_DATE
HAVING COUNT(*) > 23


select pl_req_hd.doc_no as "document No"  ,
 pl_req_hd.doc_date as "document Date"  ,
 pl_req_hd.req_by as "Request By"  ,
 pl_req_hd.issue_by as "Issue By"  ,
 pl_req_hd.melt_no as "Melt No",
 pl_req_hd.status as "Status"
from pl_req_hd
where status ='N'


select * from    pl_req_hd


select * from sys_menus
where module_id ='JRX'
ORDER BY MENU_INDEX,FORM_NAME   ,MENU_ITEM_INDEX




INSERT INTO sys_menus (FORM_NAME,MENU_INDEX,MODULE_ID,MENU_ITEM_INDEX,FORM_CAPTION,ENABLED,UPDATE_DATE,UPDATE_USER,FORM_TAG,HISTORY_CAPTION,MAIN_MENU_NAME) VALUES ('PROCESS',1,'JRX',90,'บันทึกรายการเบิกวัตถุดิบ','Y',current_timestamp,'jrx',0,'WH009.JRXML','Warehouse System');


INSERT INTO sys_menus (FORM_NAME,MENU_INDEX,MODULE_ID,MENU_ITEM_INDEX,FORM_CAPTION,ENABLED,UPDATE_DATE,UPDATE_USER,FORM_TAG,HISTORY_CAPTION,MAIN_MENU_NAME) VALUES ('PROCESS',5,'JRX',90,'Invoice Transaction','Y',current_timestamp,'jrx',0,'WH009.JRXML','Account Receivable System');
INSERT INTO sys_menus (FORM_NAME,MENU_INDEX,MODULE_ID,MENU_ITEM_INDEX,FORM_CAPTION,ENABLED,UPDATE_DATE,UPDATE_USER,FORM_TAG,HISTORY_CAPTION,MAIN_MENU_NAME) VALUES ('PROCESS',5,'JRX',91,'Receipt Transaction','Y',current_timestamp,'jrx',0,'WH009.JRXML','Account Receivable System');
INSERT INTO sys_menus (FORM_NAME,MENU_INDEX,MODULE_ID,MENU_ITEM_INDEX,FORM_CAPTION,ENABLED,UPDATE_DATE,UPDATE_USER,FORM_TAG,HISTORY_CAPTION,MAIN_MENU_NAME) VALUES ('REPORT',5,'JRX',92,'Debtor Ledger','Y',current_timestamp,'jrx',0,'WH009.JRXML','Account Receivable System');

