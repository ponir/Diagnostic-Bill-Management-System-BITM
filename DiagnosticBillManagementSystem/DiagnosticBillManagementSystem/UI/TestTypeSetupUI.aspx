<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestTypeSetupUI.aspx.cs" Inherits="DiagnosticBillManagementSystem.UI.TestTypeSetupUI" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Type Name</title>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color:#00e673;">Test Type Setup</h1>
        <hr/>
        <br/>
        <asp:Label ID="Lable1" Text="Type Name" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="typeNameTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="requriedFieldValidator2" ControlToValidate="typeNameTextBox" CssClass="validatorText" ErrorMessage="*Requried" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
        <br/>
        <br/>
        <asp:Button ID="saveButton" style="background-color:greenyellow;" Text="Save" CssClass="button" runat="server" OnClick="saveButton_Click"/>
        <br/>
        <br/>
        <asp:GridView ID="TestTypeGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Test Type" ItemStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("TestTypeName") %>' runat="server"></asp:Label>
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
