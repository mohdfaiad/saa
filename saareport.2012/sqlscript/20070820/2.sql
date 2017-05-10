ALTER PROCEDURE X_GET_SALEITEM_COMPONENTS (
    ACUST_CODE VARCHAR(10),
    AITEM_CODE VARCHAR(25))
AS
DECLARE VARIABLE CLINE1 VARCHAR(150);
DECLARE VARIABLE CLINE2 VARCHAR(150);
DECLARE VARIABLE CLINE3 VARCHAR(150);
DECLARE VARIABLE MAX_D1 SMALLINT;
DECLARE VARIABLE MIN_D1 SMALLINT;
DECLARE VARIABLE MAX_D2 SMALLINT;
DECLARE VARIABLE MIN_D2 SMALLINT;
DECLARE VARIABLE MAX_D3 SMALLINT;
DECLARE VARIABLE MIN_D3 SMALLINT;
DECLARE VARIABLE MAX_D4 SMALLINT;
DECLARE VARIABLE MIN_D4 SMALLINT;
DECLARE VARIABLE MAX_D5 SMALLINT;
DECLARE VARIABLE MIN_D5 SMALLINT;
DECLARE VARIABLE MAX_D6 SMALLINT;
DECLARE VARIABLE MIN_D6 SMALLINT;
DECLARE VARIABLE MAX_D7 SMALLINT;
DECLARE VARIABLE MIN_D7 SMALLINT;
DECLARE VARIABLE MAX_D8 SMALLINT;
DECLARE VARIABLE MIN_D8 SMALLINT;
DECLARE VARIABLE MAX_D9 SMALLINT;
DECLARE VARIABLE MIN_D9 SMALLINT;
DECLARE VARIABLE MAX_D10 SMALLINT;
DECLARE VARIABLE MIN_D10 SMALLINT;
DECLARE VARIABLE MAX_D11 SMALLINT;
DECLARE VARIABLE MIN_D11 SMALLINT;
DECLARE VARIABLE MAX_D12 SMALLINT;
DECLARE VARIABLE MIN_D12 SMALLINT;
DECLARE VARIABLE MAX_V1 FLOAT;
DECLARE VARIABLE MIN_V1 FLOAT;
DECLARE VARIABLE MAX_V2 FLOAT;
DECLARE VARIABLE MIN_V2 FLOAT;
DECLARE VARIABLE MAX_V3 FLOAT;
DECLARE VARIABLE MIN_V3 FLOAT;
DECLARE VARIABLE MAX_V4 FLOAT;
DECLARE VARIABLE MIN_V4 FLOAT;
DECLARE VARIABLE MAX_V5 FLOAT;
DECLARE VARIABLE MIN_V5 FLOAT;
DECLARE VARIABLE MAX_V6 FLOAT;
DECLARE VARIABLE MIN_V6 FLOAT;
DECLARE VARIABLE MAX_V7 FLOAT;
DECLARE VARIABLE MIN_V7 FLOAT;
DECLARE VARIABLE MAX_V8 FLOAT;
DECLARE VARIABLE MIN_V8 FLOAT;
DECLARE VARIABLE MAX_V9 FLOAT;
DECLARE VARIABLE MIN_V9 FLOAT;
DECLARE VARIABLE MAX_V10 FLOAT;
DECLARE VARIABLE MIN_V10 FLOAT;
DECLARE VARIABLE MAX_V11 FLOAT;
DECLARE VARIABLE MIN_V11 FLOAT;
DECLARE VARIABLE MAX_V12 FLOAT;
DECLARE VARIABLE MIN_V12 FLOAT;
DECLARE VARIABLE MAX_F1 VARCHAR(10);
DECLARE VARIABLE MIN_F1 VARCHAR(10);
DECLARE VARIABLE MAX_F2 VARCHAR(10);
DECLARE VARIABLE MIN_F2 VARCHAR(10);
DECLARE VARIABLE MAX_F3 VARCHAR(10);
DECLARE VARIABLE MIN_F3 VARCHAR(10);
DECLARE VARIABLE MAX_F4 VARCHAR(10);
DECLARE VARIABLE MIN_F4 VARCHAR(10);
DECLARE VARIABLE MAX_F5 VARCHAR(10);
DECLARE VARIABLE MIN_F5 VARCHAR(10);
DECLARE VARIABLE MAX_F6 VARCHAR(10);
DECLARE VARIABLE MIN_F6 VARCHAR(10);
DECLARE VARIABLE MAX_F7 VARCHAR(10);
DECLARE VARIABLE MIN_F7 VARCHAR(10);
DECLARE VARIABLE MAX_F8 VARCHAR(10);
DECLARE VARIABLE MIN_F8 VARCHAR(10);
DECLARE VARIABLE MAX_F9 VARCHAR(10);
DECLARE VARIABLE MIN_F9 VARCHAR(10);
DECLARE VARIABLE MAX_F10 VARCHAR(10);
DECLARE VARIABLE MIN_F10 VARCHAR(10);
DECLARE VARIABLE MAX_F11 VARCHAR(10);
DECLARE VARIABLE MIN_F11 VARCHAR(10);
DECLARE VARIABLE MAX_F12 VARCHAR(10);
DECLARE VARIABLE MIN_F12 VARCHAR(10);
DECLARE VARIABLE E1 VARCHAR(4);
DECLARE VARIABLE E2 VARCHAR(4);
DECLARE VARIABLE E3 VARCHAR(4);
DECLARE VARIABLE E4 VARCHAR(4);
DECLARE VARIABLE E5 VARCHAR(4);
DECLARE VARIABLE E6 VARCHAR(4);
DECLARE VARIABLE E7 VARCHAR(4);
DECLARE VARIABLE E8 VARCHAR(4);
DECLARE VARIABLE E9 VARCHAR(4);
DECLARE VARIABLE E10 VARCHAR(4);
DECLARE VARIABLE E11 VARCHAR(4);
DECLARE VARIABLE E12 VARCHAR(4);
DECLARE VARIABLE EI1 VARCHAR(25);
DECLARE VARIABLE EI2 VARCHAR(25);
DECLARE VARIABLE EI3 VARCHAR(25);
DECLARE VARIABLE EI4 VARCHAR(25);
DECLARE VARIABLE EI5 VARCHAR(25);
DECLARE VARIABLE EI6 VARCHAR(25);
DECLARE VARIABLE EI7 VARCHAR(25);
DECLARE VARIABLE EI8 VARCHAR(25);
DECLARE VARIABLE EI9 VARCHAR(25);
DECLARE VARIABLE EI10 VARCHAR(25);
DECLARE VARIABLE EI11 VARCHAR(25);
DECLARE VARIABLE EI12 VARCHAR(25);
begin
  /*DELETE FROM TEMP TEABLE*/
    DELETE FROM so_components_detail WHERE CUST_CODE =:acust_code AND ITEM_CODE =:aitem_code;
  /*init paras*/
   EI1 ='';   EI2 =''; EI3 ='';EI4 ='';
   EI5 =''; EI6 ='';EI7 ='';EI8 ='';
   EI9 =''; EI10 ='';EI11 ='';EI12 ='';
  SELECT
  /**1*/
  MAX(so_sales_item_req_sheet.elabel1),
  MAX(so_sales_item_req_sheet.max_float_point1) ,
  MAX(so_sales_item_req_sheet.min_float_point1)  ,
  MAX(so_sales_item_req_sheet.max_ele1),
  MAX(so_sales_item_req_sheet.min_ele1) ,
  /*2*/
  MAX(so_sales_item_req_sheet.elabel2),
  MAX(so_sales_item_req_sheet.max_float_point2) ,
  MAX(so_sales_item_req_sheet.min_float_point2)  ,
  MAX(so_sales_item_req_sheet.max_ele2),
  MAX(so_sales_item_req_sheet.min_ele2),
  /*3*/
   MAX(so_sales_item_req_sheet.elabel3),
  MAX(so_sales_item_req_sheet.max_float_point3) ,
  MAX(so_sales_item_req_sheet.min_float_point3)  ,
  MAX(so_sales_item_req_sheet.max_ele3),
  MAX(so_sales_item_req_sheet.min_ele3),
  /*4*/
   MAX(so_sales_item_req_sheet.elabeL4),
  MAX(so_sales_item_req_sheet.max_float_point4) ,
  MAX(so_sales_item_req_sheet.min_float_point4)  ,
  MAX(so_sales_item_req_sheet.max_ele4),
  MAX(so_sales_item_req_sheet.min_ele4),
  /*5*/
  MAX(so_sales_item_req_sheet.elabel5),
  MAX(so_sales_item_req_sheet.max_float_point5) ,
  MAX(so_sales_item_req_sheet.min_float_point5)  ,
  MAX(so_sales_item_req_sheet.max_ele5),
  MAX(so_sales_item_req_sheet.min_ele5),
  /*6*/
   MAX(so_sales_item_req_sheet.elabel6),
  MAX(so_sales_item_req_sheet.max_float_point6) ,
  MAX(so_sales_item_req_sheet.min_float_point6)  ,
  MAX(so_sales_item_req_sheet.max_ele6),
  MAX(so_sales_item_req_sheet.min_ele6),
  /*7*/
  MAX(so_sales_item_req_sheet.elabel7),
  MAX(so_sales_item_req_sheet.max_float_point7) ,
  MAX(so_sales_item_req_sheet.min_float_point7)  ,
  MAX(so_sales_item_req_sheet.max_ele7),
  MAX(so_sales_item_req_sheet.min_ele7),
  /*8*/
   MAX(so_sales_item_req_sheet.elabel8),
  MAX(so_sales_item_req_sheet.max_float_point8) ,
  MAX(so_sales_item_req_sheet.min_float_point8)  ,
  MAX(so_sales_item_req_sheet.max_ele8),
  MAX(so_sales_item_req_sheet.min_ele8),
  /*9*/
   MAX(so_sales_item_req_sheet.elabel9),
  MAX(so_sales_item_req_sheet.max_float_point9) ,
  MAX(so_sales_item_req_sheet.min_float_point9)  ,
  MAX(so_sales_item_req_sheet.max_ele9),
  MAX(so_sales_item_req_sheet.min_ele9),
    /**10*/
   MAX(so_sales_item_req_sheet.elabel10),
  MAX(so_sales_item_req_sheet.max_float_point10) ,
  MAX(so_sales_item_req_sheet.min_float_point10)  ,
  MAX(so_sales_item_req_sheet.max_ele10),
  MAX(so_sales_item_req_sheet.min_ele10),
    /**11*/
   MAX(so_sales_item_req_sheet.elabel11),
  MAX(so_sales_item_req_sheet.max_float_point11) ,
  MAX(so_sales_item_req_sheet.min_float_point11)  ,
  MAX(so_sales_item_req_sheet.max_ele11),
  MAX(so_sales_item_req_sheet.min_ele11),
    /**12*/
   MAX(so_sales_item_req_sheet.elabel12),
  MAX(so_sales_item_req_sheet.max_float_point12) ,
  MAX(so_sales_item_req_sheet.min_float_point12)  ,
  MAX(so_sales_item_req_sheet.max_ele12),
  MAX(so_sales_item_req_sheet.min_ele12)
  FROM so_sales_item_req_sheet
  WHERE so_sales_item_req_sheet.cust_code =:ACUST_CODE
  AND so_sales_item_req_sheet.item_code =:aitem_code
  INTO
  :E1, :MAX_D1 , :MIN_D1 ,:max_v1,:min_v1,
  :E2, :MAX_D2 , :MIN_D2 ,:max_v2,:min_v2,
  :E3, :MAX_D3 , :MIN_D3 ,:max_v3,:min_v3,
  :E4, :MAX_D4 , :MIN_D4 ,:max_v4,:min_v4,
  :E5, :MAX_D5 , :MIN_D5 ,:max_v5,:min_v5,
  :E6, :MAX_D6 , :MIN_D6 ,:max_v6,:min_v6,
  :E7, :MAX_D7 , :MIN_D7 ,:max_v7,:min_v7,
  :E8, :MAX_D8 , :MIN_D8 ,:max_v8,:min_v8,
  :E9, :MAX_D9 , :MIN_D9 ,:max_v9,:min_v9,
  :E10, :MAX_D10 , :MIN_D10 ,:max_v10,:min_v10,
  :E11, :MAX_D11 , :MIN_D11 ,:max_v11,:min_v11,
  :E12, :MAX_D12 , :MIN_D12 ,:max_v12,:min_v12;
   /*CHECK1*/
    if (max_d1 = 1) then
    begin
      max_f1 = floattostr(max_v1,'%.1f')  ;
    end
    else if (max_d1 = 2) then
    begin
            max_f1 = floattostr(max_v1,'%.2f')  ;
    end
     else if (max_d1 = 3) then
    begin
          max_f1 = floattostr(max_v1,'%.3f')  ;
    end
     if (min_d1 = 1) then
    begin
         min_f1 = floattostr(min_v1,'%.1f')  ;
    end
    else if (min_d1 = 2) then
    begin
       min_f1 = floattostr(min_v1,'%.2f')  ;
    end
     else if (min_d1 = 3) then
    begin
       min_f1 = floattostr(min_v1,'%.3f')  ;
    end
    /*CHECK2*/
    if (max_d2 = 1) then
    begin
      max_f2 = floattostr(max_v2,'%.1f')  ;
    end
    else if (max_d2 = 2) then
    begin
            max_f2 = floattostr(max_v2,'%.2f')  ;
    end
     else if (max_d2 = 3) then
    begin
          max_f2 = floattostr(max_v2,'%.3f')  ;
    end
     if (min_d2 = 1) then
    begin
         min_f2 = floattostr(min_v2,'%.1f')  ;
    end
    else if (min_d2 = 2) then
    begin
       min_f2 = floattostr(min_v2,'%.2f')  ;
    end
     else if (min_d2 = 3) then
    begin
       min_f2 = floattostr(min_v2,'%.3f')  ;
    end
    /*SCHECK3*/
    if (max_d3 = 1) then
    begin
      max_f3 = floattostr(max_v3,'%.1f')  ;
    end
    else if (max_d3 = 2) then
    begin
            max_f3 = floattostr(max_v3,'%.2f')  ;
    end
     else if (max_D3 = 3) then
    begin
          max_f3 = floattostr(max_v3,'%.3f')  ;
    end
     if (min_d3 = 1) then
    begin
         min_f3 = floattostr(min_v3,'%.1f')  ;
    end
    else if (min_d3 = 2) then
    begin
       min_f3 = floattostr(min_v3,'%.2f')  ;
    end
     else if (min_d3 = 3) then
    begin
       min_f3 = floattostr(min_v3,'%.3f')  ;
    end
    /*check4*/
     if (max_d4 = 1) then
    begin
      max_f4 = floattostr(max_v4,'%.1f')  ;
    end
    else if (max_d4 = 2) then
    begin
            max_f4 = floattostr(max_v4,'%.2f')  ;
    end
     else if (max_D4 = 3) then
    begin
          max_f4 = floattostr(max_v4,'%.3f')  ;
    end
     if (min_d4 = 1) then
    begin
         min_f4 = floattostr(min_v4,'%.1f')  ;
    end
    else if (min_d4 = 2) then
    begin
       min_f4 = floattostr(min_v4,'%.2f')  ;
    end
     else if (min_d4 = 3) then
    begin
       min_f4 = floattostr(min_v4,'%.3f')  ;
    end
    /*check 5*/
     if (max_d5 = 1) then
    begin
      max_f5 = floattostr(max_v5,'%.1f')  ;
    end
    else if (max_d5 = 2) then
    begin
            max_f5 = floattostr(max_v5,'%.2f')  ;
    end
     else if (max_D5 = 3) then
    begin
          max_f5 = floattostr(max_v5,'%.3f')  ;
    end
     if (min_d5 = 1) then
    begin
         min_f5 = floattostr(min_v5,'%.1f')  ;
    end
    else if (min_d5 = 2) then
    begin
       min_f5 = floattostr(min_v5,'%.2f')  ;
    end
     else if (min_d5 = 3) then
    begin
       min_f5 = floattostr(min_v5,'%.3f')  ;
    end
     /*check 6*/
     if (max_d6 = 1) then
    begin
      max_f6 = floattostr(max_v6,'%.1f')  ;
    end
    else if (max_d6 = 2) then
    begin
            max_f6 = floattostr(max_v6,'%.2f')  ;
    end
     else if (max_D6 = 3) then
    begin
          max_f6 = floattostr(max_v6,'%.3f')  ;
    end
     if (min_d6 = 1) then
    begin
         min_f6 = floattostr(min_v6,'%.1f')  ;
    end
    else if (min_d6 = 2) then
    begin
       min_f6 = floattostr(min_v6,'%.2f')  ;
    end
     else if (min_d6 = 3) then
    begin
       min_f6 = floattostr(min_v6,'%.3f')  ;
    end
    /*check 7*/
     if (max_d7 = 1) then
    begin
      max_f7 = floattostr(max_v7,'%.1f')  ;
    end
    else if (max_d7 = 2) then
    begin
            max_f7 = floattostr(max_v7,'%.2f')  ;
    end
     else if (max_D7 = 3) then
    begin
          max_f7 = floattostr(max_v7,'%.3f')  ;
    end
     if (min_d7 = 1) then
    begin
         min_f7 = floattostr(min_v7,'%.1f')  ;
    end
    else if (min_d7 = 2) then
    begin
       min_f7 = floattostr(min_v7,'%.2f')  ;
    end
     else if (min_d7 = 3) then
    begin
       min_f7 = floattostr(min_v7,'%.3f')  ;
    end
    /*check 8*/
     if (max_d8 = 1) then
    begin
      max_f8 = floattostr(max_v8,'%.1f')  ;
    end
    else if (max_d8 = 2) then
    begin
            max_f8 = floattostr(max_v8,'%.2f')  ;
    end
     else if (max_D8 = 3) then
    begin
          max_f8 = floattostr(max_v8,'%.3f')  ;
    end
     if (min_d8 = 1) then
    begin
         min_f8 = floattostr(min_v8,'%.1f')  ;
    end
    else if (min_d8 = 2) then
    begin
       min_f8 = floattostr(min_v8,'%.2f')  ;
    end
     else if (min_d8 = 3) then
    begin
       min_f8 = floattostr(min_v8,'%.3f')  ;
    end
    /*check 9*/
      if (max_d9 = 1) then
    begin
      max_f9 = floattostr(max_v9,'%.1f')  ;
    end
    else if (max_d9 = 2) then
    begin
            max_f9 = floattostr(max_v9,'%.2f')  ;
    end
     else if (max_D9 = 3) then
    begin
          max_f9 = floattostr(max_v9,'%.3f')  ;
    end
     if (min_d9 = 1) then
    begin
         min_f9 = floattostr(min_v9,'%.1f')  ;
    end
    else if (min_d9 = 2) then
    begin
       min_f9 = floattostr(min_v9,'%.2f')  ;
    end
     else if (min_d9 = 3) then
    begin
       min_f9 = floattostr(min_v9,'%.3f')  ;
    end
    /*check 10*/
      if (max_d10 = 1) then
    begin
      max_f10 = floattostr(max_v10,'%.1f')  ;
    end
    else if (max_d10 = 2) then
    begin
            max_f10 = floattostr(max_v10,'%.2f')  ;
    end
     else if (max_D10 = 3) then
    begin
          max_f10 = floattostr(max_v10,'%.3f')  ;
    end
     if (min_d10 = 1) then
    begin
         min_f10 = floattostr(min_v10,'%.1f')  ;
    end
    else if (min_d10 = 2) then
    begin
       min_f10 = floattostr(min_v10,'%.2f')  ;
    end
     else if (min_d10 = 3) then
    begin
       min_f10 = floattostr(min_v10,'%.3f')  ;
    end
   
   /*check 11*/
      if (max_d11 = 1) then
    begin
      max_f11 = floattostr(max_v11,'%.1f')  ;
    end
    else if (max_d11 = 2) then
    begin
            max_f11 = floattostr(max_v11,'%.2f')  ;
    end
     else if (max_d11 = 3) then
    begin
          max_f11 = floattostr(max_v11,'%.3f')  ;
    end
     if (min_d11 = 1) then
    begin
         min_f11 = floattostr(min_v11,'%.1f')  ;
    end
    else if (min_d11 = 2) then
    begin
       min_f11 = floattostr(min_v11,'%.2f')  ;
    end
     else if (min_d11 = 3) then
    begin
       min_f11 = floattostr(min_v11,'%.3f')  ;
    end
    /*check 12*/
        if (max_d12 = 1) then
    begin
      max_f12 = floattostr(max_v12,'%.1f')  ;
    end
    else if (max_d12 = 2) then
    begin
            max_f12 = floattostr(max_v12,'%.2f')  ;
    end
     else if (max_d12 = 3) then
    begin
          max_f12 = floattostr(max_v12,'%.3f')  ;
    end
     if (min_d12 = 1) then
    begin
         min_f12 = floattostr(min_v12,'%.1f')  ;
    end
    else if (min_d12 = 2) then
    begin
       min_f12 = floattostr(min_v12,'%.2f')  ;
    end
     else if (min_d12 = 3) then
    begin
       min_f12 = floattostr(min_v12,'%.3f')  ;
    end
   

     /*element 1*/
    if ((max_v1 >0) and (min_v1 > 0)) then
    begin
       EI1 =TRIM(:E1 ||':'||:MIN_F1||'-'||:MAX_F1) ;
    end else if((max_v1 >0) and (min_v1 = 0))  then
    begin
      EI1= TRIM(:E1 ||':'||:MAX_F1||'(Max)') ;
    end
    /*element 2*/
     if ((max_v2 >0) and (min_v2 > 0)) then
    begin
       EI2 =TRIM(:E2 ||':'||:MIN_F2||'-'||:MAX_F2) ;
    end else if((max_v2 >0) and (min_v2 = 0))  then
    begin
      EI2= TRIM(:E2 ||':'||:MAX_F2||'(Max)') ;
    end

     /*element 3*/
     if ((max_v3 >0) and (min_v3 > 0)) then
    begin
       EI3 =TRIM(:E3 ||':'||:MIN_F3||'-'||:MAX_F3) ;
    end else if((max_v3 >0) and (min_v3 = 0))  then
    begin
      EI3= TRIM(:E3 ||':'||:MAX_F3||'(Max)') ;
    end

      /*element 4*/
     if ((max_v4 >0) and (min_v4 > 0)) then
    begin
       EI4 =TRIM(:E4 ||':'||:MIN_F4||'-'||:MAX_F4) ;
    end else if((max_v4 >0) and (min_v4 = 0))  then
    begin
      EI4= TRIM(:E4 ||':'||:MAX_F4||'(Max)') ;
    end
        /*element 5*/
     if ((max_v5 >0) and (min_v5 > 0)) then
    begin
       EI5 =TRIM(:E5 ||':'||:MIN_F5||'-'||:MAX_F5) ;
    end else if((max_v5 >0) and (min_v5 = 0))  then
    begin
      EI5= TRIM(:E5 ||':'||:MAX_F5||'(Max)') ;
    end
        /*element 6*/
     if ((max_v6 >0) and (min_v6 > 0)) then
    begin
       EI6 =TRIM(:E6 ||':'||:MIN_F6||'-'||:MAX_F6) ;
    end else if((max_v6 >0) and (min_v6 = 0))  then
    begin
      EI6= TRIM(:E6 ||':'||:MAX_F6||'(Max)') ;
    end
        /*element 7*/
     if ((max_v7 >0) and (min_v7 > 0)) then
    begin
       EI7 =TRIM(:E7 ||':'||:MIN_F7||'-'||:MAX_F7) ;
    end else if((max_v7 >0) and (min_v7 = 0))  then
    begin
      EI7= TRIM(:E7 ||':'||:MAX_F7||'(Max)') ;
    end
        /*element 8*/
     if ((max_v8 >0) and (min_v8 > 0)) then
    begin
       EI8 =TRIM(:E8 ||':'||:MIN_F8||'-'||:MAX_F8) ;
    end else if((max_v8 >0) and (min_v8 = 0))  then
    begin
      EI8= TRIM(:E8 ||':'||:MAX_F8||'(Max)') ;
    end
        /*element 9*/
     if ((max_v9 >0) and (min_v9 > 0)) then
    begin
       EI9 =TRIM(:E9 ||':'||:MIN_F9||'-'||:MAX_F9) ;
    end else if((max_v9 >0) and (min_v9 = 0))  then
    begin
      EI9= TRIM(:E9 ||':'||:MAX_F9||'(Max)') ;
    end
        /*element 10*/
     if ((max_v10 >0) and (min_v10 > 0)) then
    begin
       EI10 =TRIM(:E10 ||':'||:MIN_F10||'-'||:MAX_F10) ;
    end else if((max_v10 >0) and (min_v10 = 0))  then
    begin
      EI10= TRIM(:E10 ||':'||:MAX_F10||'(Max)') ;
    end
        /*element 11*/
     if ((max_v11 >0) and (min_v11 > 0)) then
    begin
       EI11 =TRIM(:E11 ||':'||:MIN_F11||'-'||:MAX_F11) ;
    end else if((max_v11 >0) and (min_v11 = 0))  then
    begin
      EI11= TRIM(:E11 ||':'||:MAX_F11||'(Max)') ;
    end
        /*element 12*/
     if ((max_v12 >0) and (min_v12 > 0)) then
    begin
       EI12 =TRIM(:E12 ||':'||:MIN_F12||'-'||:MAX_F12) ;
    end else if((max_v12 >0) and (min_v12 = 0))  then
    begin
      EI12= TRIM(:E12 ||':'||:MAX_F12||'(Max)') ;
    end

     CLINE1 =  EI1  ||','||  EI2||','||ei3||','||ei4||',';
     CLINE2 =  EI5  ||','|| EI6||','||ei7||','||ei8||',';
     CLINE3 =  EI9  ||','||ei10 ||','||ei11 ||','||ei12 ;

     --eliminated double comma
     CLINE1 = strReplace(CLINE1,',,',',');
     CLINE2 = strReplace(CLINE2,',,',',');
     CLINE3 = strReplace(CLINE3,',,',',');
     if (subStr( CLINE3,strLen(   CLINE3 ),strlen(   CLINE3 )-1 ) =',' )then
     begin
       CLINE3 = subStr(CLINE3,1,strlen(CLINE3) -1) ;
     end

     INSERT INTO   so_components_detail VALUES(:ACUST_CODE,:AITEM_CODE,:CLINE1,:cline2, :CLINE3);
  /*$$IBE$$ SELECT  TRIM( case  when SO_SALES_ITEM_REQ_SHEET.max_ELE1 > 0 and SO_SALES_ITEM_REQ_SHEET.min_ELE1 >0 then
   SO_SALES_ITEM_REQ_SHEET.ELABEL1 ||':' ||
   cast(CAST(SO_SALES_ITEM_REQ_SHEET.Min_ELE1 AS NUMERIC(6,3)) as varchar(6))||'-'||
   cast(CAST(SO_SALES_ITEM_REQ_SHEET.max_ELE1 AS NUMERIC(6,3)) as varchar(6))
   when SO_SALES_ITEM_REQ_SHEET.max_ELE1 > 0 and SO_SALES_ITEM_REQ_SHEET.min_ELE1 =0 then
     SO_SALES_ITEM_REQ_SHEET.ELABEL1 ||':' || cast(CAST(SO_SALES_ITEM_REQ_SHEET.Max_ELE1 AS NUMERIC(6,3)) as varchar(6))||'(Max)'
    END  )
    FROM SO_SALES_ITEM_REQ_SHEET
      WHERE so_sales_item_req_sheet.cust_code =:ACUST_CODE
  AND so_sales_item_req_sheet.item_code =:aitem_code
  INTO : CLINE1; $$IBE$$*/
   --round
  suspend;
end