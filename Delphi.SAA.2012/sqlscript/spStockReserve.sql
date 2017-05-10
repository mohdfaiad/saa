CREATE PROCEDURE X_UPD_STOCKRESERVE (
    ASTOCK_CD VARCHAR(15),
    ALOT_CD VARCHAR(15),
    APURCHAE_DATE TIMESTAMP,
    AREF_NO VARCHAR(15),
    AREF_DATE TIMESTAMP,
    ADOC_NO VARCHAR(15),
    ADOC_DATE TIMESTAMP,
    AUSER_ID VARCHAR(10),
    AQTY FLOAT,
    AMODE VARCHAR(10))
AS
declare variable RECORDFOUND SMALLINT;
declare variable PURCHASE_DATE TIMESTAMP;
declare variable GROUP_ID VARCHAR(10);
declare variable UOM_CD VARCHAR(4);
declare variable reservedDetailQty float;
declare variable reservedLinkQty float;


begin
  /* Procedure Text */
  select count(*)
  from ic_stock_reserved
  where stock_cd =:astock_cd
  and lot_cd =:alot_cd
  and ref_no =:aref_no
  and ref_date =:aref_date
  and doc_no =:adoc_no
  and doc_date =:adoc_date
  into :recordfound;
  if (recordfound >0) then
  begin
          update ic_stock_reserved
          set qty =:aqty
          where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and ref_no =:aref_no
          and ref_date =:aref_date
          and doc_no =:adoc_no
          and doc_date =:adoc_date;

  end
  else if (recordfound=0) then
  begin
    SELECT MAX(PURCHASE_DATE), MAX(GROUP_ID),
    MAX(UOM_CD)
    FROM IC_MAT_STK_DT_LINK
    WHERE STOCK_CD =:astock_cd
    AND LOT_CD =:alot_cd
    AND PURCHASE_DATE =:apurchae_date
    AND REF_NO =:aref_no
    AND REF_DATE =:aref_date
    INTO :PURCHASE_DATE,:GROUP_ID,:UOM_CD;

    INSERT INTO IC_STOCK_RESERVED (
    DOC_NO,
    DOC_DATE,
    LOT_CD,
    PURCHASE_DATE,
    REF_NO,
    REF_DATE,
    STOCK_CD,
    GROUP_ID,
    UOM_CD,
    QTY,
    UPDATE_USER,
    UPDATE_DATE)
    VALUES(:ADOC_NO,:ADOC_DATE,:alot_cd,:apurchae_date,:AREF_NO,
    :AREF_DATE,:astock_cd,:GROUP_ID,:UOM_CD,
    :aqty, :auser_id,current_timestamp);
  end
  if (AMODE ='D') then
  BEGIN
      DELETE
         from ic_stock_reserved
      where stock_cd =:astock_cd
      and lot_cd =:alot_cd
      and ref_no =:aref_no
      and ref_date =:aref_date
      and doc_no =:adoc_no
      and doc_date =:adoc_date;
  END

     select sum (qty)
     from  ic_stock_reserved
     where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          into :reservedDetailQty;

        if (reservedDetailQty >0) then
        begin
            update ic_mat_stk_dt
            set reserved_qty =: reservedDetailQty
             where stock_cd =:astock_cd
               and lot_cd =:alot_cd
               and purchase_date =:apurchae_date ;
        end

            select sum (qty)
     from ic_stock_reserved
     where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          and ref_no =:aref_no
           and ref_date =:aref_date
          into :reservedLinkQty;
          if (reservedLinkQty >0) then
          begin
            update ic_mat_stk_dt_link
            set reserved_qty =:reservedLinkQty
            where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          and ref_no =:aref_no
           and ref_date =:aref_date;

          end


  suspend;
end