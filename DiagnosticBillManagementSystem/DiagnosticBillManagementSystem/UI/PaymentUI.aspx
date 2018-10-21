<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentUI.aspx.cs" Inherits="DiagnosticBillManagementSystem.UI.PaymentUI" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Information</title>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color:#00e673;">Payment</h1>
        <hr/>
        <br/>
        <asp:Label ID="billNoLabel" Text="Bill No" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="billNoTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="orLabel" Text="Or" CssClass="lable" runat="server"></asp:Label>
        <br/>
        <br/>
        <asp:Label ID="mobileNoLabel" Text="Mobile No" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="mobileNoTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="searchButton" style="background-color:greenyellow;" Text="Search" CssClass="button" runat="server" OnClick="searchButton_Click"/>
        <br/>
        <br/>
        <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
        <br/>
        <br/>
        <asp:Label ID="amountLabel" Text="Amount" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="amountTextBox" CssClass="textBox" ReadOnly="True" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="dueDateLabel" Text="Due Date" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="dueDateTextBox" CssClass="textBox" ReadOnly="True" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="payButton" style="background-color:greenyellow;" Text="Pay" CssClass="button" runat="server" OnClick="payButton_Click"/>
    </form>
    <div align ="center">
        <br/>
        <br/>
        <br/>
        &nbsp; <a href="IndexUI.aspx" style="font-size:20px;background-color:#66ffff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G o To Home Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>&nbsp;&nbsp;
    </div>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright
        <span style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; background-color: rgb(255, 255, 255)">&nbsp;</span><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">©</b> 2018 Siddikponir. All right reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
</body>
</html>
