<%-- 
    Document   : Kalkulator
    Created on : Jun 10, 2020, 12:05:58 AM
    Author     : HP 14S-DK0007AU R3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> TUGAS RSBK </title>
    </head>
    <body>
    <center>
        <h1> KELOMPOK 07  </h1>        
        <h4>Fransiska Tebay /21120117100037</h4>
        <h4>Umi Khoiryatin MS /21120117120005</h4>
        <h4>Heni Nurul / 21120117120023</h4>
    </center>
    
    <center>
        
        <form name="Keypad" action>
     <table border="1"  bgcolor="#838383">
<tr>
<td colspan="5" bgcolor="#DFDFDF">
 <input name="ReadOut" type="Text" size="30" value="0">
</td>
</tr>
<tr>
<td bgcolor="#DFDFDF">
<input name="btnSeven" type="Button" value="  7  " onClick="NumPressed(7)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnEight" type="Button" value="  8  " onClick="NumPressed(8)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnNine" type="Button" value="  9  " onClick="NumPressed(9)">
</td>
<td bgcolor="#DFDFDF"><input name="btnNeg" type="Button" value=" +/- " onClick="Neg()"></td>
<td bgcolor="#DFDFDF"><input name="btnPercent" type="Button" value=" % " onClick="Percent()"></td>
</tr>
<tr>
<td bgcolor="#DFDFDF">
<input name="btnFour" type="Button" value="  4  " onClick="NumPressed(4)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnFive" type="Button" value="  5  " onClick="NumPressed(5)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnSix" type="Button" value="  6  " onClick="NumPressed(6)">
</td>
<td bgcolor="#DFDFDF"><input name="btnPlus" type="Button" value="  +  "
 onClick="Operation('+')"></td>
<td bgcolor="#DFDFDF"><input name="btnMultiply" type="Button" value="  *  "
 onClick="Operation('*')"></td>
</tr>
<tr>
<td bgcolor="#DFDFDF">
<input name="btnOne" type="Button" value="  1  " onClick="NumPressed(1)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnTwo" type="Button" value="  2  " onClick="NumPressed(2)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnThree" type="Button" value="  3  " onClick="NumPressed(3)">
</td>
<td bgcolor="#DFDFDF"><input name="btnMinus" type="Button" value="  -  "
 onClick="Operation('-')"></td>
<td bgcolor="#DFDFDF"><input name="btnDivide" type="Button" value="  /  "
 onClick="Operation('/')"></td>
</tr>
<tr>
<td bgcolor="#DFDFDF">
<input name="btnZero" type="Button" value="  0  " onClick="NumPressed(0)">
</td>
<td bgcolor="#DFDFDF">
<input name="btnDecimal" type="Button" value="  .  " onClick="Decimal()">
</td>
<td colspan="3"  bgcolor="#797979">
 <input name="btnClear" type="Button" value="  C  " onClick="Clear()">
 <input name="btnClearEntry" type="Button" value=" CE " onClick="ClearEntry()">
 <input name="btnEquals" type="Button" value="  =  " onClick="Operation('=')"></td>

</tr>
</table>
</form></center><script LANGUAGE="JavaScript"> 
var FKeyPad = document.Keypad;
var Accum = 0;
var FlagNewNum = false;
var PendingOp = "";
function NumPressed (Num) {
    if (FlagNewNum) {
        FKeyPad.ReadOut.value = Num;
        FlagNewNum = false;
    }
    else {
        if (FKeyPad.ReadOut.value == "0")
            FKeyPad.ReadOut.value = Num;
        else
            FKeyPad.ReadOut.value += Num;
    }
}

function Operation (Op) {
    var Readout = FKeyPad.ReadOut.value;
    if (FlagNewNum && PendingOp != "=");
else
{
FlagNewNum = true;
if ( '+' == PendingOp )
Accum += parseFloat(Readout);
else if ( '-' == PendingOp )
Accum -= parseFloat(Readout);
else if ( '/' == PendingOp )
Accum /= parseFloat(Readout);
else if ( '*' == PendingOp )
Accum *= parseFloat(Readout);
else
Accum = parseFloat(Readout);
FKeyPad.ReadOut.value = Accum;
PendingOp = Op;
}
}
function Decimal () {
var curReadOut = FKeyPad.ReadOut.value;
if (FlagNewNum) {
curReadOut = "0.";
FlagNewNum = false;
}
else
{
if (curReadOut.indexOf(".") == -1)
curReadOut += ".";
}
FKeyPad.ReadOut.value = curReadOut;
}
function ClearEntry () {
FKeyPad.ReadOut.value = "0";
FlagNewNum = true;
}
function Clear () {
Accum = 0;
PendingOp = "";
ClearEntry();
}
function Neg () {
    FKeyPad.ReadOut.value = parseFloat(FKeyPad.ReadOut.value) * -1;
}
function Percent () {
    FKeyPad.ReadOut.value = (parseFloat(FKeyPad.ReadOut.value) / 100) * parseFloat(Accum);
}

</script>     
</body>
</html>
