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

END
