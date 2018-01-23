<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Login_Application.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body style="background-image:url(https://png.pngtree.com/element_origin_min_pic/17/08/09/65db84e200d04abe28e9f1844bb233ba.jpg);background-size: 100%;">
    <form id="form1" runat="server">
    <div>
    <h1 style="color:white; align-self:center"> User Profile</h1>
    </div>
        <div align="center">
            <table cellpadding="0" style="height:240px;width:530px;">
                                
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" style="color:White" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="UserName"  runat="server" Font-Size="0.8em" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" style="color:burlywood;" ErrorMessage="User Name is required." ToolTip="User Name is required." >* </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                <tr>
                                    <td align="right">
                                        <asp:Label ID="AccountNumberLabel" style="color:White"  runat="server" AssociatedControlID="AccountNumber">Account Number:</asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="AccountNumber"  runat="server" Font-Size="0.8em" AutoPostBack="false"  ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AccountNumber" style="color:burlywood;" ErrorMessage="AccountNumber is required." ToolTip="AccountNumber is required." >* </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="EmailIdLabel" style="color:White"  runat="server" AssociatedControlID="EmailId">Email Id:</asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="EmailId" runat="server" Font-Size="0.8em" AutoPostBack="false"  ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailIdValidator" runat="server" ControlToValidate="EmailId" style="color:burlywood;" ErrorMessage="Email is required." ToolTip="Email is required.">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                 <tr>
                                    <td align="right">
                                        <asp:Label ID="ContactNumberLabel" style="color:White"  runat="server" AssociatedControlID="ContactNumber">Contact Number:</asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="ContactNumber" runat="server" Font-Size="0.8em" AutoPostBack="false" TextMode="Number"   ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ContactNumber" style="color:burlywood;" ErrorMessage="ContactNumber is required." ToolTip="Contact Number is required." >*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                
                                <tr>
                                     
                                    <td align="right">
                                        <asp:Label ID="AddressLabel" style="color:White"  runat="server" AssociatedControlID="Address">Address:</asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="Address" runat="server" Font-Size="0.8em" AutoPostBack="false"  ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Address" style="color:burlywood;" ErrorMessage="Address is required." ToolTip="Address is required." >*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                
                                <tr>
                                    <td align="center" colspan="2" style="color:burlywood;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="right" style="color:White" class="auto-style1"  >
                                        <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"  style="height: 24px" OnClick="Button1_Click"  />  
                                    </td>
                                    <td align="center" style="color:White" class="auto-style1" colspan="0.5" >
                                        <asp:Button ID="Login" runat="server" Text="Save" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"  Height="24px" OnClick="Save_click"  />  
                                    </td>
                                    <td colspan="0.5" align="left">
<a href="Home.aspx" style="color:White"> Home</a>
                                    </td>

                                    
                                </tr>
                            </table>
        </div>
    </form>
</body>
</html>
