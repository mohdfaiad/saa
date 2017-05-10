unit ToThaiBath;

interface

uses
Windows, Messages, SysUtils, Classes;

Type
TBahtStang = Class
private
xUnit : String;
public
function Getthai(Value: String; CountAll, Position: Integer): String;
function NumericToBahtStang(Money: Double): String;
end;

var
BS : TBahtStang;
TNumber: Array[2..9] of String = ('สอง','สาม','สี่','ห้า','หก','เจ็ด','แปด','เก้า');

implementation

function TBahtStang.Getthai(Value:String;CountAll,Position:Integer):String;
var BahtStang : String;
begin
If Value = '0' Then
begin
if Value = '0' Then
begin
If CountAll = 1 Then
BahtStang := 'x' // Flag ไม่ต้องเขียนคำว่า บาท
end
else
BahtStang := '';
end;

If Value = '1' Then
begin
Case Position Of
1,7,13,19,25 : begin
If (Position - CountAll <> 0 ) Or (Value[Position+1] = '0') Then
BahtStang :='เอ็ด'
else
BahtStang := 'หนึ่ง'
end;
2,8,14,20,26 : BahtStang :='';
else
begin
BahtStang := 'หนึ่ง';
end;
end;
end;

If Value = '2' Then
Begin
if (Position = 2) Or (Position = 8)Or (Position = 14) Then
BahtStang := 'ยี่'
else
BahtStang :='สอง'
end;
If Value = '3' Then BahtStang :='สาม';
If Value = '4' Then BahtStang :='สี่';
If Value = '5' Then BahtStang :='ห้า';
If Value = '6' Then BahtStang :='หก';
If Value = '7' Then BahtStang :='เจ็ด';
If Value = '8' Then BahtStang :='แปด';
If Value = '9' Then BahtStang :='เก้า';

// Check Unit of Position
If Value <> '0' Then
begin
Case Position Of
7,13,19,25 : BahtStang := BahtStang+'ล้าน';
6,12,18,24 : BahtStang := BahtStang+'แสน';
5,11,17,23 : BahtStang := BahtStang+'หมื่น';
4,10,16,22 : BahtStang := BahtStang+'พัน';
3,9,15,21 : BahtStang := BahtStang+'ร้อย';
2,8,14,20 : BahtStang := BahtStang+'สิบ';
end
end
else
If (Position = 7) Or
(Position = 13)Or
(Position = 20) Then
xUnit := 'ล้าน';


Result := BahtStang

end;

function TBahtStang.NumericToBahtStang(Money : Double):String;
var I : integer;
DecimalCh1,DecimalCh2,String2Process,
Strthai,xReal : String;
xDecimal : String;
CountReal,CountAll : Integer;
Thaibaht,Thaistang : String;
IsCreadit : Boolean;
curBahtstang,
WordBaht : String;
begin
//Change Numeric to String
Str(Money:15:2,String2Process);
//Count String ->> CountAll
CountAll := length(Trim(String2Process));
xReal := Copy(Trim(String2Process),1,CountAll-3);
xDecimal := Copy(Trim(String2Process),CountAll-1,CountAll);

I := 0;
CountReal := length(xReal);

ThaiBaht := '';
ThaiStang := '';

//*******************************************
// Main Working
//*******************************************
For I := 1 to CountReal Do // Loop = Real
begin
curBahtstang := Getthai(xReal[I],CountReal,CountReal+1-I);
If curBahtstang = 'x' Then
begin
WordBaht := '';
curBahtstang :='';
end
else
WordBaht := 'บาท';
ThaiBaht := ThaiBaht+curBahtStang;
end;
ThaiBaht:=ThaiBaht+WordBaht;

//*******************************************
// Check Decimal I
//*******************************************
DecimalCh1 := Copy(xDecimal,1,1);
if DecimalCh1 <> '0' Then
begin
If (DecimalCh1 = '0') Or (DecimalCh1 = '1') Or (DecimalCh1 = '2') Then
begin
If DecimalCh1 = '1' Then ThaiStang := '';
If DecimalCh1 = '2' Then ThaiStang := 'ยี่';
end
else
ThaiStang := TNUMBER[StrtoInt(DecimalCh1)];

ThaiStang := thaiStang+'สิบ';
end;
//*******************************************
// Check Decimal II
//*******************************************
DecimalCh2 :=Copy(xDecimal,2,1);
If (DecimalCh2 = '0') Or (DecimalCh2 = '1') Or (DecimalCh2 = '2') Then
begin
// ไม่สนใจ 0
If DecimalCh2 = '1' Then
begin
if Copy(xDecimal,1,1) ='0' Then
ThaiStang := ThaiStang+'หนึ่ง'
else
ThaiStang := ThaiStang+'เอ็ด'
end;

If DecimalCh2 = '2' Then ThaiStang := ThaiStang+'สอง';
end
else
ThaiStang := ThaiStang+TNUMBER[StrtoInt(DecimalCh2)];

ThaiStang := ThaiStang+'สตางค์';

//*******************************************
// Check Lakh
//*******************************************
if (Copy(xDecimal,1,1) <> '0') Or (Copy(xDecimal,2,1) <> '0') Then
Strthai := ThaiBaht+ThaiStang
else
If ThaiBaht <> '' Then
Strthai := ThaiBaht+'ถ้วน'
else
Strthai := 'ศูนย์บาท';

Result := Strthai
// Return String Baht-Stang
end;

end.
 

