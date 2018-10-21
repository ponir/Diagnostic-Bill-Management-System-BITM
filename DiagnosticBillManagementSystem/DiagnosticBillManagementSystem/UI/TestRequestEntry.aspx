<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestRequestEntry.aspx.cs" Inherits="DiagnosticBillManagementSystem.UI.TestRequestEntry" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Information</title>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
    <script src="../Styles/PageRefresher.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="background-color:#00e673;">Test Request Entry</h1>
        <hr/>
        <br/>
        <asp:Label CssClass="largeLable" ID="patientNameLabel" Text="Name of the Patient" runat="server"></asp:Label>
        <asp:TextBox ID="patientNameTextBox" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="patientNameValidator" ControlToValidate="patientNameTextBox" 
            CssClass="validatorText" ErrorMessage="Required" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <br/>
        <asp:Label ID="dateOfBirthLabel" Text="Date of Birth" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="dateOfBirthTextBox" placeholder="yyyy-mm-dd" CssClass="textBox" runat="server" TextMode="Date"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="dateOfBirthRequriedValidator" ControlToValidate="dateOfBirthTextBox" 
            CssClass="validatorText" ErrorMessage="Required" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <asp:RegularExpressionValidator ID="dateOfBirthValidator" ControlToValidate="dateOfBirthTextBox" 
            ErrorMessage="Not a valid date!" CssClass="validatorText" ValidationExpression="^(19|20)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])$" runat="server"></asp:RegularExpressionValidator>
        <br/>
        <asp:Label ID="mobileNoLabel" Text="Mobile No" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="mobileNoTextBox" placeholder="01XXXXXXXXX" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="mobileNoRequriedValidator" ControlToValidate="mobileNoTextBox" 
            CssClass="validatorText" ErrorMessage="Required" runat="server"></asp:RequiredFieldValidator>
        <br/>
        <asp:RegularExpressionValidator ID="mobileNoValidator" CssClass="validatorText" ControlToValidate="mobileNoTextBox" 
            ErrorMessage="Not a valid No!" ValidationExpression="^\d{11}$" runat="server"></asp:RegularExpressionValidator>
        <br/>
        <asp:Label ID="selectTextLabel" Text="Select Test" CssClass="lable" runat="server"></asp:Label>
        <asp:DropDownList ID="testTypeDropDown" AutoPostBack="True" CssClass="textBox" runat="server" OnSelectedIndexChanged="testTypeDropDown_SelectedIndexChanged"/>
        <br/>
        <asp:RequiredFieldValidator ID="testTypeDropDownRequriedValidator" CssClass="validatorText" runat="server" ControlToValidate="testTypeDropDown" InitialValue="0" ErrorMessage="Requried" />
        <br/>
        <asp:Label ID="feeLabel" Text="Fee(BDT)" CssClass="lable" runat="server"></asp:Label>
        <asp:TextBox ID="feeTextBox" ReadOnly="True" CssClass="textBox" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
        <br/>
        <br/>
        <asp:Button ID="addButton" style="background-color:greenyellow;"  Text="Add" CssClass="button" runat="server" OnClick="addButton_Click"/>
        <br/>
        <br/>
        <asp:GridView ID="testRequestGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField ItemStyle-Width="150px" DataField="TestName" HeaderText="Test Name"/>
                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Fee" HeaderText="Fee"/>
            </Columns>
        </asp:GridView>
        <br/>
        <br/>
        <asp:Label ID="totalLabel" CssClass="lable" Text="Total(BDT)" runat="server"></asp:Label>
        <asp:TextBox ID="totalTextBox" ForeColor="red" CssClass="textBox" ReadOnly="True" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="saveButton" style="background-color:greenyellow;" Text="Save" CssClass="button" runat="server" OnClick="saveButton_Click"/>
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
