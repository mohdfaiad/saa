update ic_stockcard set unit_cost =79,
stock_value =  case  when  (onhand_qty is null) then 0 else unit_cost*onhand_qty end ,
total_cost =  case  when  (onhand_qty is null) then 0 else unit_cost*onhand_qty end
where lot_cd ='PC221/06' ;

update ic_stockcard set unit_cost =63.51,
stock_value =  case  when  (onhand_qty is null) then 0 else unit_cost*onhand_qty end ,
total_cost =  case  when  (onhand_qty is null) then 0 else unit_cost*onhand_qty end
where lot_cd ='PC211/06' ;


