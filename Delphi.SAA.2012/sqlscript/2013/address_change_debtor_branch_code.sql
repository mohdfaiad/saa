alter table ar_debtor add isheadoffice varchar(1);
alter table ar_debtor add branch_code varchar(5);


drop table COMPANY_PROFILE;


CREATE TABLE COMPANY_PROFILE (
    ENG_NAME          VARCHAR(150) NOT NULL,
    THAI_NAME         VARCHAR(150) NOT NULL,
    ADDRESS1          VARCHAR(100) NOT NULL,
    ADDRESS2          VARCHAR(100),
    ADDRESS3          VARCHAR(100),
    TH_ADDRESS1       VARCHAR(100) NOT NULL,
    TH_ADDRESS2       VARCHAR(100),
    TH_ADDRESS3       VARCHAR(100),
    POSTCODE          VARCHAR(10) NOT NULL,
    PROVINCE          VARCHAR(60) NOT NULL,
    TELEPHONE         VARCHAR(60) NOT NULL,
    FAX               VARCHAR(60),
    LOGO              BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    EMAIL             VARCHAR(60),
    WEBSITE           VARCHAR(60),
    TAXREGISTERED_ID  VARCHAR(25),
    BRANCH_CODE       VARCHAR(5)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE COMPANY_PROFILE ADD CONSTRAINT PK_COMPANY_PROFILE PRIMARY KEY (ENG_NAME);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/


/* Privileges of users */
GRANT REFERENCES ON COMPANY_PROFILE TO REPL;
GRANT SELECT, INSERT, UPDATE, DELETE ON COMPANY_PROFILE TO REPL WITH GRANT OPTION;



INSERT INTO COMPANY_PROFILE (ENG_NAME, THAI_NAME, ADDRESS1, ADDRESS2, ADDRESS3, TH_ADDRESS1, TH_ADDRESS2, TH_ADDRESS3, POSTCODE, PROVINCE, TELEPHONE, FAX, LOGO, EMAIL, WEBSITE, TAXREGISTERED_ID, BRANCH_CODE) VALUES ('Siam Anglo Alloy Co., Ltd.', 'บริษัท สยามแองโกลอัลลอย จำกัด', '306/1 Sukhumvit 55 Road', NULL, 'Bangkhen Bangkok', '306/1 ถนนสุขุมวิท 55,แขวงคลองตันเหนือ,เขตวัฒนา,', 'กรุงเทพมหานคร 10110 ประเทศไทย', NULL, '10110', 'กรุงเทพ', '+66(0)23812638,23917168-9', '+66(0)23811924', NULL, 'admin@saasiam.com', 'www.ssaasiam.com', '0105554123995', '000');


INSERT INTO SYS_MENUS (FORM_NAME, MENU_INDEX, MODULE_ID, MENU_ITEM_INDEX, FORM_CAPTION, ENABLED, UPDATE_DATE, UPDATE_USER, FORM_TAG, HISTORY_CAPTION, MAIN_MENU_NAME) VALUES ('SA16', 0, 'SA', 6, 'Company Setup', 'Y', '17-JUL-2013 12:07:55', 'admin', 1, 'Company Setup', 'SAMENU');

