
CREATE TABLE AR_RECEIPT_HD (
    BATCH_NO       INTEGER NOT NULL,
    DOC_NO         VARCHAR(15) NOT NULL,
    DOC_DATE       TIMESTAMP NOT NULL,
    DESCS          VARCHAR(60),
    BANK_CODE      VARCHAR(4) NOT NULL,
    DEBTOR_ACCT    VARCHAR(10) NOT NULL,
    CHEQUE_NO      VARCHAR(25) NOT NULL,
    REMARKS        VARCHAR(255),
    STATUS         VARCHAR(1),
    PRINT_STATUS   VARCHAR(1),
    UPDATE_USER    VARCHAR(10),
    UPDATE_DATE    TIMESTAMP,
    CURRENCY_CODE  VARCHAR(4) NOT NULL,
    CURRENCY_RATE  FLOAT
);





/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE AR_RECEIPT_HD ADD CONSTRAINT PK_AR_RECEIPT_HD PRIMARY KEY (BATCH_NO);



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/

CREATE TABLE AR_RECEIPT_DT (
    BATCH_NO     INTEGER NOT NULL,
    DOC_NO       VARCHAR(15) NOT NULL,
    DOC_DATE     TIMESTAMP NOT NULL,
    DEBTOR_ACCT  VARCHAR(10) NOT NULL,
    INV_NO       VARCHAR(15) NOT NULL,
    INV_DATE     TIMESTAMP NOT NULL,
    LINE_NO      SMALLINT NOT NULL,
    LINE_REMARK  VARCHAR(60),
    BASE_AMOUNT  FLOAT NOT NULL,
    TAX_AMOUNT   FLOAT NOT NULL,
    TRX_AMOUNT   FLOAT NOT NULL,
    STATUS       VARCHAR(1)
);





/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE AR_RECEIPT_DT ADD CONSTRAINT PK_AR_RECEIPT_DT PRIMARY KEY (BATCH_NO, LINE_NO);


/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/