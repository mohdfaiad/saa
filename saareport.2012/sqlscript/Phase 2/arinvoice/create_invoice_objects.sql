
/*DROP AR_INVOICE_DT REFERENCE OBJECTS*/
DROP TRIGGER TAI_AR_INVOICE_DT              ;
DROP TRIGGER TAU_AR_INVOICE_DT              ;
DROP TRIGGER TD_AR_INVOICE_DT               ;
DROP TRIGGER REPL$2_10_I_1_1                ;
DROP TRIGGER REPL$2_10_U_1_1                ;
DROP TRIGGER REPL$2_10_D_1_1                ;



/*DROP AR_INVOICE_HD REFERENCE OBJECTS*/
DROP TRIGGER TD_AR_INVOICE_HD               ;
DROP TRIGGER TU_AR_INVOICE_HD               ;
DROP TRIGGER REPL$2_11_I_1_1                ;
DROP TRIGGER REPL$2_11_U_1_1                ;
DROP TRIGGER REPL$2_11_D_1_1                ;


DROP TABLE AR_INVOICE_DT;




/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/

CREATE TABLE AR_INVOICE_DT (
    DEBTOR_ACCT    VARCHAR10 NOT NULL,
    DOC_NO         VARCHAR15 NOT NULL,
    DOC_DATE       DDATE NOT NULL,
    TRX_TYPE       VARCHAR2 NOT NULL,
    DESCS          VARCHAR60,
    TAX_AMT        NUMERIC122,
    DOC_AMT        NUMERIC122 NOT NULL,
    BASE_AMT       NUMERIC122 NOT NULL,
    ITEM_CODE      VARCHAR(15) NOT NULL,
    ITEM_DESCS     VARCHAR(60),
    QTY            NUMERIC122,
    UNIT_COST      NUMERIC122,
    UNIT_DESCS     VARCHAR(45),
    ORDER_NO       VARCHAR(15) NOT NULL,
    ORDER_DATE     TIMESTAMP NOT NULL,
    TAX_RATE       NUMERIC122,
    PURCHASE_NO    VARCHAR(15) NOT NULL,
    PURCHASE_DATE  TIMESTAMP NOT NULL,
    DELIVERY_NO    VARCHAR(30),
    DELIVERY_DATE  TIMESTAMP,
    TH_BAHT        VARCHAR(500),
    UPDATE_USER    VARCHAR(30),
    UPDATE_DATE    TIMESTAMP
);





/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE AR_INVOICE_DT ADD PRIMARY KEY (DEBTOR_ACCT, DOC_NO, DOC_DATE, TRX_TYPE, ITEM_CODE, ORDER_NO);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/








/* Trigger: REPL$2_10_D_1_1 */
CREATE TRIGGER REPL$2_10_D_1_1 FOR AR_INVOICE_DT
INACTIVE AFTER DELETE POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,OLDKEY)
  VALUES (1,1,2,10,'D',OLD.DEBTOR_ACCT||''||OLD.DOC_NO||''||OLD.DOC_DATE||''||OLD.TRX_TYPE||''||OLD.ITEM_CODE||''||OLD.ORDER_NO);END
END ;


/* Trigger: REPL$2_10_I_1_1 */
CREATE TRIGGER REPL$2_10_I_1_1 FOR AR_INVOICE_DT
INACTIVE AFTER INSERT POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,NEWKEY)
  VALUES (1,1,2,10,'I',NEW.DEBTOR_ACCT||''||NEW.DOC_NO||''||NEW.DOC_DATE||''||NEW.TRX_TYPE||''||NEW.ITEM_CODE||''||NEW.ORDER_NO);END
END    ;


/* Trigger: REPL$2_10_U_1_1 */
CREATE TRIGGER REPL$2_10_U_1_1 FOR AR_INVOICE_DT
INACTIVE AFTER UPDATE POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,OLDKEY,NEWKEY)
  VALUES (1,1,2,10,'U',OLD.DEBTOR_ACCT||''||OLD.DOC_NO||''||OLD.DOC_DATE||''||OLD.TRX_TYPE||''||OLD.ITEM_CODE||''||OLD.ORDER_NO,NEW.DEBTOR_ACCT||''||NEW.DOC_NO||''||NEW.DOC_DATE||''||NEW.TRX_TYPE||''||NEW.ITEM_CODE||''||NEW.ORDER_NO);END
END ;




/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/


/* Privileges of users */
GRANT ALL ON AR_INVOICE_DT TO REPL WITH GRANT OPTION;


/***************************AR_INVOICE_HD *******************/



DROP TABLE AR_INVOICE_HD;

/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/

CREATE TABLE AR_INVOICE_HD (
    DEBTOR_ACCT     VARCHAR10 NOT NULL,
    DOC_NO          VARCHAR15 NOT NULL,
    DOC_DATE        DDATE NOT NULL,
    TRX_TYPE        VARCHAR2 NOT NULL,
    TAX_INV_NO      VARCHAR15,
    TAX_INV_DATE    DDATE,
    DEBT_NAME       VARCHAR60,
    DESCS           VARCHAR60,
    REMARK          VARCHAR(255),
    STATUS          VARCHAR(1) DEFAULT 'N',
    RECEIPT_STATUS  VARCHAR(1) DEFAULT 'N',
    DUE_DATE        TIMESTAMP,
    CREDIT_TERM     SMALLINT,
    NO_OF_PRINT     SMALLINT DEFAULT 0,
    UPDATE_USER     VARCHAR(30),
    UPDATE_DATE     TIMESTAMP
);





/******************************************************************************/
/****                             Primary Keys                             ****/
/******************************************************************************/

ALTER TABLE AR_INVOICE_HD ADD PRIMARY KEY (DEBTOR_ACCT, DOC_NO, DOC_DATE, TRX_TYPE);


/******************************************************************************/
/****                               Indices                                ****/
/******************************************************************************/

CREATE UNIQUE INDEX XPKAR_INVOICE_HD ON AR_INVOICE_HD (DEBTOR_ACCT, DOC_NO, DOC_DATE, TRX_TYPE);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/







/* Trigger: REPL$2_11_D_1_1 */
CREATE TRIGGER REPL$2_11_D_1_1 FOR AR_INVOICE_HD
INACTIVE AFTER DELETE POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,OLDKEY)
  VALUES (1,1,2,11,'D',OLD.DEBTOR_ACCT||''||OLD.DOC_NO||''||OLD.DOC_DATE||''||OLD.TRX_TYPE);END
END;


/* Trigger: REPL$2_11_I_1_1 */
CREATE TRIGGER REPL$2_11_I_1_1 FOR AR_INVOICE_HD
INACTIVE AFTER INSERT POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,NEWKEY)
  VALUES (1,1,2,11,'I',NEW.DEBTOR_ACCT||''||NEW.DOC_NO||''||NEW.DOC_DATE||''||NEW.TRX_TYPE);END
END;


/* Trigger: REPL$2_11_U_1_1 */
CREATE TRIGGER REPL$2_11_U_1_1 FOR AR_INVOICE_HD
INACTIVE AFTER UPDATE POSITION 32760
AS
BEGIN
IF (USER <> 'REPL') THEN BEGIN
  INSERT INTO REPL_LOG(REPLNO,PUBDBNO,SUBDBNO,RELATIONNO,REPTYPE,OLDKEY,NEWKEY)
  VALUES (1,1,2,11,'U',OLD.DEBTOR_ACCT||''||OLD.DOC_NO||''||OLD.DOC_DATE||''||OLD.TRX_TYPE,NEW.DEBTOR_ACCT||''||NEW.DOC_NO||''||NEW.DOC_DATE||''||NEW.TRX_TYPE);END
END;


/* Trigger: TD_AR_INVOICE_HD */
CREATE TRIGGER TD_AR_INVOICE_HD FOR AR_INVOICE_HD
ACTIVE AFTER DELETE POSITION 0
AS
  /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
  /* DELETE trigger on AR_INVOICE_HD */
DECLARE VARIABLE numrows INTEGER;
BEGIN
    /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
    /* AR_INVOICE_HD R/65 AR_INVOICE_DT ON PARENT DELETE RESTRICT */
  delete
      from AR_INVOICE_DT
      where
        /*  AR_INVOICE_DT.DEBTOR_ACCT = OLD.DEBTOR_ACCT and
            AR_INVOICE_DT.DOC_NO = OLD.DOC_NO and
            AR_INVOICE_DT.DOC_DATE = OLD.DOC_DATE and
            AR_INVOICE_DT.TRX_TYPE = OLD.TRX_TYPE */
        AR_INVOICE_DT.DEBTOR_ACCT = OLD.DEBTOR_ACCT and
        AR_INVOICE_DT.DOC_NO = OLD.DOC_NO and
        AR_INVOICE_DT.DOC_DATE = OLD.DOC_DATE and
        AR_INVOICE_DT.TRX_TYPE = OLD.TRX_TYPE ;


  /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
END;


/* Trigger: TU_AR_INVOICE_HD */
CREATE TRIGGER TU_AR_INVOICE_HD FOR AR_INVOICE_HD
ACTIVE AFTER UPDATE POSITION 0
AS
  /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
  /* UPDATE trigger on AR_INVOICE_HD */
DECLARE VARIABLE numrows INTEGER;
BEGIN
  /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
  /* AR_INVOICE_HD R/65 AR_INVOICE_DT ON PARENT UPDATE CASCADE */
  IF
    /* OLD.DEBTOR_ACCT <> NEW.DEBTOR_ACCT or 
       OLD.DOC_NO <> NEW.DOC_NO or 
       OLD.DOC_DATE <> NEW.DOC_DATE or 
       OLD.TRX_TYPE <> NEW.TRX_TYPE */
    (OLD.DEBTOR_ACCT <> NEW.DEBTOR_ACCT or 
     OLD.DOC_NO <> NEW.DOC_NO or 
     OLD.DOC_DATE <> NEW.DOC_DATE or 
     OLD.TRX_TYPE <> NEW.TRX_TYPE) THEN
  BEGIN
    update AR_INVOICE_DT
      set
        /*  AR_INVOICE_DT.DEBTOR_ACCT = NEW.DEBTOR_ACCT,
            AR_INVOICE_DT.DOC_NO = NEW.DOC_NO,
            AR_INVOICE_DT.DOC_DATE = NEW.DOC_DATE,
            AR_INVOICE_DT.TRX_TYPE = NEW.TRX_TYPE */
        AR_INVOICE_DT.DEBTOR_ACCT = NEW.DEBTOR_ACCT,
        AR_INVOICE_DT.DOC_NO = NEW.DOC_NO,
        AR_INVOICE_DT.DOC_DATE = NEW.DOC_DATE,
        AR_INVOICE_DT.TRX_TYPE = NEW.TRX_TYPE
      where
        /*  AR_INVOICE_DT.DEBTOR_ACCT = OLD.DEBTOR_ACCT and
            AR_INVOICE_DT.DOC_NO = OLD.DOC_NO and
            AR_INVOICE_DT.DOC_DATE = OLD.DOC_DATE and
            AR_INVOICE_DT.TRX_TYPE = OLD.TRX_TYPE */
        AR_INVOICE_DT.DEBTOR_ACCT = OLD.DEBTOR_ACCT and
        AR_INVOICE_DT.DOC_NO = OLD.DOC_NO and
        AR_INVOICE_DT.DOC_DATE = OLD.DOC_DATE and
        AR_INVOICE_DT.TRX_TYPE = OLD.TRX_TYPE;
  END


  /* ERwin Builtin Mon Nov 11 16:42:53 2002 */
END;







/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/


/* Privileges of users */
GRANT ALL ON AR_INVOICE_HD TO REPL WITH GRANT OPTION;

/* Privileges of triggers */


/**post invoice */

CREATE PROCEDURE X_AR_POST_INVOICE (
    DOC_DATE TIMESTAMP,
    DOC_NO VARCHAR(15),
    DEBTOR VARCHAR(10))
AS
DECLARE VARIABLE CURRENCY_CODE VARCHAR(10);
DECLARE VARIABLE DEBTOR_TYPE VARCHAR(10);
DECLARE VARIABLE FYEAR INTEGER;
DECLARE VARIABLE FOUND_RECORD INTEGER;
DECLARE VARIABLE FMONTH INTEGER;
DECLARE VARIABLE TAX DOUBLE PRECISION;
DECLARE VARIABLE AMOUNT DOUBLE PRECISION;
DECLARE VARIABLE GRAND_TOTAL DOUBLE PRECISION;
BEGIN
  /* AR INVOICE POST ACTION
     ACTION INSERT DATA INOT AL_LEDGER AND UPDATE STATUS IN AR_INVOICE_HEADER
   */
  FYEAR = extract(YEAR FROM DOC_DATE);
  FMONTH = EXTRACT(MONTH FROM DOC_DATE);

  SELECT   DEBTOR_TYPE ,CURRENCY_CODE
  FROM AR_DEBTOR
  WHERE DEBTOR_ACCT = :DEBTOR
  INTO  :DEBTOR_TYPE,:CURRENCY_CODE ;

  SELECT SUM(BASE_AMT),SUM(TAX_AMT),SUM(DOC_AMT),COUNT(DEBTOR_ACCT)
  FROM AR_INVOICE_DT
  WHERE
  DEBTOR_ACCT = :DEBTOR AND
  DOC_NO    = :DOC_NO AND
  DOC_DATE  = :DOC_DATE
  GROUP BY   DEBTOR_ACCT,DOC_NO,DOC_DATE
  INTO :AMOUNT,:TAX,:GRAND_TOTAL,:FOUND_RECORD ;

  IF(:FOUND_RECORD > 0) THEN
  BEGIN
    INSERT INTO AR_LEDGER (
    DEBT_ACCT,DOC_NO, DOC_DATE,DEBTOR_ACCT,REF_NO,FMONTH,DEBTOR_TYPE,TRX_TYPE,FYEAR,CURRENCY_CODE,CURRENCY_RATE ,MBASE_AMT,
    MTAX_AMT, MDOC_AMT,FBASE_AMT,FTAX_AMT, FDOC_AMT,MALLOC_AMT,FALLOC_AMT,MBAL_AMT, TAX_INV_NO ,CLASS,DR_CR_MODE,FBAL_AMT,
    BANK_CD, UPDATE_USER,UPDATE_DATE)
    VALUES(
    :DEBTOR,
    :DOC_NO,
    :DOC_DATE,
    :DEBTOR,
    :DOC_NO,
    :FMONTH,
    :DEBTOR_TYPE,
    'IV',
    :FYEAR,
    :CURRENCY_CODE,
    0 ,
    :AMOUNT,
    :TAX,
    :GRAND_TOTAL,
    :AMOUNT,
    :TAX,
    :GRAND_TOTAL,
    0,
    0,
    :GRAND_TOTAL,
    :DOC_NO,
    'I',
    'C',
    :GRAND_TOTAL,
    'NULL',
    'SYSTEM',
    CURRENT_TIMESTAMP
    );

    UPDATE AR_INVOICE_HD   SET STATUS = 'X'
    WHERE
        DEBTOR_ACCT = :DEBTOR AND
        DOC_NO    = :DOC_NO AND
        DOC_DATE  = :DOC_DATE  ;
  END

END;






