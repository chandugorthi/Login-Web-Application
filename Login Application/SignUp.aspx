<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Login_Application.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(https://png.pngtree.com/element_origin_min_pic/17/08/09/65db84e200d04abe28e9f1844bb233ba.jpg);background-size: 100%;">
    <form id="form1" runat="server">
    <div align="center">
    
        <h1 style="color:White" >CITI SignUp page</h1>
    
    </div>
        <div align="center">
            <table cellpadding="0" style="height:175px;width:341px;">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-size:0.9em;font-weight:bold;">SignUp</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" style="color:White" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName"  runat="server" Font-Size="0.8em" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" style="color:red;" ErrorMessage="User Name is required." ToolTip="User Name is required." >* </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" style="color:White"  runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" style="color:red;" ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                 <tr>
                                    <td align="right">
                                        <asp:Label ID="ReEnterPasswordLabel" style="color:White"  runat="server" AssociatedControlID="Password">Re-enter Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ReEnterPassword" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" style="color:red;" ErrorMessage="Password is required." ToolTip="Password is required." >*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                <tr>
                                    <td align="right">
                                        <asp:Label ID="AccountNumberLabel" style="color:White"  runat="server" AssociatedControlID="UserName">Account Number:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AccountNumber"  runat="server" Font-Size="0.8em" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AccountNumber" style="color:red;" ErrorMessage="AccountNumber is required." ToolTip="AccountNumber is required." >* </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="right" style="color:White" >
                                        <asp:Button ID="Button1" runat="server" Text="SignUp" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" OnClick="Button1_Click" style="height: 24px"  />  
                                    </td>
                                    <td align="center" style="color:White" >
                                        <asp:Button ID="Login" runat="server" Text="Login" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" OnClick="LogInButton_Click" Height="24px"  />  
                                    </td>
                                    
                                </tr>
                            </table>
        </div>
    </form>
</body>
</html>
