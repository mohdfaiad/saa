ALTER PROCEDURE X_IS_PREV_MELT_POSTED (
    APLAN_DOC VARCHAR(15),
    APLAN_DATE TIMESTAMP,
    AMELT_NO VARCHAR(10))
RETURNS (
    RESULT VARCHAR(3))
AS
DECLARE VARIABLE CURRENT_MELT_LINE SMALLINT;
DECLARE VARIABLE PREV_MELT_NO VARCHAR(10);
DECLARE VARIABLE ROWS SMALLINT;
declare variable MIN_LINE SMALLINT;
begin
  /* Procedure Text */
    RESULT ='NO';
    prev_melt_no ='';
    ROWS = 0;
    SELECT MIN(LINE_NO)
    FROM PL_PRO_PLAN_DT
    WHERE PLAN_DOC =:APLAN_DOC
    AND PLAN_DATE =:APLAN_DATE
    INTO :MIN_LINE;

   SELECT MAX(LINE_NO)
   FROM PL_PRO_PLAN_DT
   WHERE PLAN_DOC =:APLAN_DOC
   AND PLAN_DATE =:APLAN_DATE
   AND MELT_NO = :AMELT_NO
   INTO :current_melt_line ;
   /**Check if is the fist line of the plan*/
   if (MIN_LINE =current_melt_line ) then
   BEGIN
    RESULT = 'YES';

   END
   if (current_melt_line <=0) then
   BEGIN
     result = 'NO'  ;
   END
   if (current_melt_line =1) then
   BEGIN
      result = 'YES'  ;

   END
   if (current_melt_line >1) then
   BEGIN
         select max(melt_no)
         FROM PL_PRO_PLAN_DT
         WHERE PLAN_DOC =:APLAN_DOC
         AND PLAN_DATE =:APLAN_DATE
         and line_no < :current_melt_line
         into :prev_melt_no;
         if (prev_melt_no IS NOT NULL) then
         begin
           select count(*) from
           ic_stockcard where melt_no = :prev_melt_no
           into :rows;
          if ( rows > 0) then
            begin
                result = 'YES';
            end
         end

   END

   suspend;

end

