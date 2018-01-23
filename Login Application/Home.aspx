<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Login_Application.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
       <style type="text/css">
    body
    {
        font-family: Arial;
        font-size: 12pt;
    }
    .main_menu
    {
        width: 170px;
        background-color: steelblue;
        color: white;
        text-align: center;
        height: 40px;
        line-height: 40px;
        margin-right: 5px;
    }
    .level_menu
    {
        width: 170px;
        background-color: steelblue;
        color: white;
        text-align: center;
        height: 40px;
        line-height: 40px;
        margin-top: 5px;
    }
    .selected
    {
        background-color:steelblue;
        color: white;
    }
</style>

    
</head>
<body style="background-image:url(https://png.pngtree.com/element_origin_min_pic/17/08/09/65db84e200d04abe28e9f1844bb233ba.jpg);background-size: 100%;">
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false" />
<asp:Menu ID="Menu" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal"
    OnMenuItemDataBound="OnMenuItemDataBound" StaticSubMenuIndent="16px">
    <LevelMenuItemStyles>
        <asp:MenuItemStyle CssClass="main_menu" />
        <asp:MenuItemStyle CssClass="level_menu" />
    </LevelMenuItemStyles>
</asp:Menu>
   <%-- <div style="color:white ; font-size:14px">
    <table>
        <tr>
            <td>
        <asp:Menu ID="Menu1" Style="color:white" font-size="14px" runat="server" StaticSubMenuIndent="16px">
           <items>
              

         <asp:menuitem  NavigateUrl="Home.aspx"   Text="Home" ></asp:menuitem>
               <asp:menuitem NavigateUrl="#" Text="User Profile"></asp:menuitem>
         <asp:menuitem NavigateUrl="Login.aspx" Text="Logout"></asp:menuitem>
       
     </items>
             </asp:Menu>
                </td>
            <td style="color:white" >
             <asp:Menu ID="Menu2"  style="color:white" runat="server" StaticSubMenuIndent="16px">
           <items>
         <asp:menuitem NavigateUrl="#" Text="User Details"></asp:menuitem>
         <asp:menuitem NavigateUrl="#" Text="Transaction Details"></asp:menuitem>
        
     </items>
                 
        </asp:Menu>
                </td>
                 </tr>
</table>
    </div>--%>
    </form>
</body>
</html>
