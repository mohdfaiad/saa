package com.saa.ui.binding;

public interface JXDBEventModel {
	/*occured when date state = NEW could initialize some varialble here*/
	public void onNewRecord();
	/*occured when before commit to database can initialize some vairable here*/
	public void beforePost();
	/*occured when after commit to database can initialize some vairable here*/
	public void afterPost();
	/*occured can check when ever some field changed can do come filed calution*/
	public void onEditRecord();

	/*occured before delete */
	public void beforeDelete();
	/*occured before delete */
	public void afterDelete();

	

}
