<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #00FF00;
        }
        .style4
        {
            width: 276px;
            height: 50px;
        }
        .style5
        {
            width: 1025px;
            height: 50px;
        }
        .style6
        {
            height: 50px;
        }
        .style7
        {
            width: 276px;
            height: 35px;
        }
        .style8
        {
            width: 1025px;
            height: 35px;
            text-align: justify;
        }
        .style9
        {
            height: 35px;
        }
        .style10
        {
            width: 276px;
            height: 29px;
        }
        .style11
        {
            width: 1025px;
            height: 29px;
        }
        .style12
        {
            height: 29px;
        }
        .style13
        {
            width: 276px;
            height: 22px;
        }
        .style14
        {
            width: 1025px;
            height: 22px;
            text-align: justify;
        }
        .style15
        {
            height: 22px;
        }
        .style16
        {
            width: 276px;
            height: 33px;
        }
        .style17
        {
            width: 1025px;
            height: 33px;
            text-align: justify;
        }
        .style18
        {
            height: 33px;
        }
        .style19
        {
            width: 1025px;
            height: 29px;
            text-align: justify;
        }
         
             
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                </td>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="X-Large" Text="ADMIN REGISTRATION PAGE"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td class="style7">
                </td>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 218px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="You must enter valid Email ID" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style19">
                    <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 173px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Password is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style14">
                    <asp:Label ID="Label4" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
                    <asp:TextBox ID="txtCPassword" runat="server" style="margin-left: 79px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCPassword" ErrorMessage="Confirm password is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="password must be same" ControlToCompare="txtPassword" 
                        ControlToValidate="txtCPassword" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="style15">
                </td>
            </tr>
            <tr>
                <td class="style16">
                </td>
                <td class="style17">
                    <asp:Label ID="Label5" runat="server" Text="FIRST NAME"></asp:Label>
                    <asp:TextBox ID="txtFName" runat="server" style="margin-left: 166px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtFName" ErrorMessage="Confirm password is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style19">
                    <asp:Label ID="Label6" runat="server" Text="LAST NAME"></asp:Label>
                    <asp:TextBox ID="txtLName" runat="server" style="margin-left: 173px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtLName" ErrorMessage="Last name is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Label ID="Label7" runat="server" Text="PHONE NUMBER"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" style="margin-left: 130px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Enter valid phone no" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Label ID="Label8" runat="server" Text="COUNTRY"></asp:Label>
                    <asp:DropDownList ID="ddl" runat="server" style="margin-left: 187px" 
                        Width="180px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddl" ErrorMessage="Select a country name" ForeColor="Red" 
                        InitialValue="select country"></asp:RequiredFieldValidator>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Button ID="bt" runat="server" Text="SUBMIT" onclick="bt_Click" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    <asp:Button ID="Button1" runat="server" Text="CLICK HERE TO LOGIN" 
                        CausesValidation="false" onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_caption" runat="server"></asp:Label>
                </td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
