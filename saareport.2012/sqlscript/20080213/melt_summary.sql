delete    from pl_fn_receive_dt
where melt_no ='01N01R'
AND remelt_item_flag ='N'  ;


delete    from pl_fn_receive_dt
where melt_no ='02N01R'
AND remelt_item_flag ='N'  ;


DELETE FROM so_ledger
where melt_no ='01N01R' ;

DELETE FROM so_ledger
where melt_no ='02N01R'  ;

