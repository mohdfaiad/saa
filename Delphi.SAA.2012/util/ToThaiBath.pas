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
TNumber: Array[2..9] of String = ('�ͧ','���','���','���','ˡ','��','Ỵ','���');

implementation

function TBahtStang.Getthai(Value:String;CountAll,Position:Integer):String;
var BahtStang : String;
begin
If Value = '0' Then
begin
if Value = '0' Then
begin
If CountAll = 1 Then
BahtStang := 'x' // Flag ����ͧ��¹����� �ҷ
end
else
BahtStang := '';
end;

If Value = '1' Then
begin
Case Position Of
1,7,13,19,25 : begin
If (Position - CountAll <> 0 ) Or (Value[Position+1] = '0') Then
BahtStang :='���'
else
BahtStang := '˹��'
end;
2,8,14,20,26 : BahtStang :='';
else
begin
BahtStang := '˹��';
end;
end;
end;

If Value = '2' Then
Begin
if (Position = 2) Or (Position = 8)Or (Position = 14) Then
BahtStang := '���'
else
BahtStang :='�ͧ'
end;
If Value = '3' Then BahtStang :='���';
If Value = '4' Then BahtStang :='���';
If Value = '5' Then BahtStang :='���';
If Value = '6' Then BahtStang :='ˡ';
If Value = '7' Then BahtStang :='��';
If Value = '8' Then BahtStang :='Ỵ';
If Value = '9' Then BahtStang :='���';

// Check Unit of Position
If Value <> '0' Then
begin
Case Position Of
7,13,19,25 : BahtStang := BahtStang+'��ҹ';
6,12,18,24 : BahtStang := BahtStang+'�ʹ';
5,11,17,23 : BahtStang := BahtStang+'����';
4,10,16,22 : BahtStang := BahtStang+'�ѹ';
3,9,15,21 : BahtStang := BahtStang+'����';
2,8,14,20 : BahtStang := BahtStang+'�Ժ';
end
end
else
If (Position = 7) Or
(Position = 13)Or
(Position = 20) Then
xUnit := '��ҹ';


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
WordBaht := '�ҷ';
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
If DecimalCh1 = '2' Then ThaiStang := '���';
end
else
ThaiStang := TNUMBER[StrtoInt(DecimalCh1)];

ThaiStang := thaiStang+'�Ժ';
end;
//*******************************************
// Check Decimal II
//*******************************************
DecimalCh2 :=Copy(xDecimal,2,1);
If (DecimalCh2 = '0') Or (DecimalCh2 = '1') Or (DecimalCh2 = '2') Then
begin
// ���ʹ� 0
If DecimalCh2 = '1' Then
begin
if Copy(xDecimal,1,1) ='0' Then
ThaiStang := ThaiStang+'˹��'
else
ThaiStang := ThaiStang+'���'
end;

If DecimalCh2 = '2' Then ThaiStang := ThaiStang+'�ͧ';
end
else
ThaiStang := ThaiStang+TNUMBER[StrtoInt(DecimalCh2)];

ThaiStang := ThaiStang+'ʵҧ��';

//*******************************************
// Check Lakh
//*******************************************
if (Copy(xDecimal,1,1) <> '0') Or (Copy(xDecimal,2,1) <> '0') Then
Strthai := ThaiBaht+ThaiStang
else
If ThaiBaht <> '' Then
Strthai := ThaiBaht+'��ǹ'
else
Strthai := '�ٹ��ҷ';

Result := Strthai
// Return String Baht-Stang
end;

end.
 

