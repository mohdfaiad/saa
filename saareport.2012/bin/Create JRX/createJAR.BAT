cd e:\Development\saareport.2012\classes
jar -cvfm "e:\Development\saareport.2012\bin\Create JRX\saareport.jar"  "e:\Development\saareport.2012\bin\Create JRX\MANIFEST.MF" com
copy "e:\Development\saareport.2012\bin\Create JRX\saareport.jar"   "e:\Development\deploy\saareport" /y 
copy "e:\Development\saareport.2012\bin\Create JRX\saareport.jar"   "e:\Development\saareport.2012\bin\" /y 
rem xcopy "e:\Development\saareport.2012\version" "e:\Development\deploy\saareport\version" /y /s /i
rem copy "e:\Development\saareport.2012\report\templates\*.jasper" "e:\Development\deploy\saareport\report\templates"  /y	
copy "e:\Development\saareport.2012\report\templates\*.jrxml" "e:\Development\deploy\saareport\report\templates"  /y
copy "e:\Development\saareport.2012\report\templates\*.jrxml" "e:\Development\saareport.2012\bin\report\templates"  /y
copy "e:\Development\saareport.2012\version\*.*" "e:\Development\deploy\saareport\version" /y
xcopy "e:\Development\deploy\saareport\*.*" "e:\Development\saareport.2012\bin\" /y /s /i
copy "e:\Development\Delphi.SAA.2012\bin\*.exe" "e:\Development\deploy\saamrp2" /y
cd e:\Development\saareport.2012\bin