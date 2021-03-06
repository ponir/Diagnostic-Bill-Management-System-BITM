﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestSetupUI.aspx.cs" Inherits="DiagnosticBillManagementSystem.UI.TestSetupUI" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Name</title>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color:#00e673;">Test Setup</h1>
        <hr/>
        <br/>
        <asp:Label ID="testNameLable" Text="Test Name" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="testNameTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="testNameValidator" ControlToValidate="testNameTextBox" 
            ErrorMessage="Required" CssClass="validatorText" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <br/>
        <asp:Label ID="feeLabel" Text="Fee(BDT)" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="feeTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="feeRequriedValidator" ControlToValidate="feeTextBox" 
            ErrorMessage="Required" CssClass="validatorText" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <asp:RegularExpressionValidator ID="feeTextBoxValidator" ControlToValidate="feeTextBox" 
            CssClass="validatorText" ErrorMessage="Not a valid Fee!" ValidationExpression="^[1-9]\d*(\.\d+)?$" runat="server"></asp:RegularExpressionValidator>
        <br/>
        <asp:Label ID="testTypeLabel" Text="Test Type" CssClass="lable" runat="server"></asp:Label>
        <asp:DropDownList ID="testTypeDropDownList" CssClass="textBox" runat="server"></asp:DropDownList>
        <br/>
        <asp:RequiredFieldValidator ID="testTypeDropDownRequriedValidator" CssClass="validatorText" runat="server" ControlToValidate="testTypeDropDownList" InitialValue="0" ErrorMessage="Requried" />
        <br/>
        <br/>
        <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
        <br/>
        <br/>
        <asp:Button ID="saveButton" Text="Save" style="background-color:greenyellow;" CssClass="button" runat="server" OnClick="saveButton_Click"/>
        <br/>
        <br/>
        <asp:GridView ID="testSetupGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Test Name" ItemStyle-Width="250px">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("TestName") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Fee" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("Fee") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Test Type" ItemStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("TestType") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
    <div align="center">
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
</body>
</html>
