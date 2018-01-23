<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Application.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(https://png.pngtree.com/element_origin_min_pic/17/08/09/65db84e200d04abe28e9f1844bb233ba.jpg);background-size: 100%;">
    <form id="form1" runat="server">
    <div align="center">
    <h1 style="align-content:center;color:white">CITI Login</h1>
        </div>
        <div align="center">
<asp:Label ID="SignUpMessageLabel" runat="server" ></asp:Label>
        </div>
        
        <div align="center">
        <asp:Login ID="Login1" runat="server" Height="175px" OnAuthenticate="Login1_Authenticate" Width="341px">
            <LayoutTemplate>
                <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;" align="center">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height:175px;width:341px;">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">Log In</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" style="color:white" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName"  runat="server" Font-Size="0.8em" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" style="color:red;" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">* </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" style="color:white" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" style="color:red;" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="color:white"  >
                                         <asp:Button ID="SignUp" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="SignUp" ValidationGroup="Login1" OnClick="SignUp_Click"  />
                                    </td>
                                    <td align="center" style="color:white" >
                                        <asp:Button ID="LoginButton"   runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Log In" ValidationGroup="Login1" />
                                    </td>
                                    
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
        </div>
    </form>
</body>
</html>
