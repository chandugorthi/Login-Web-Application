<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionDeatils.aspx.cs" Inherits="Login_Application.TransactionDeatils" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-image:url(https://png.pngtree.com/element_origin_min_pic/17/08/09/65db84e200d04abe28e9f1844bb233ba.jpg);background-size: 100%;">
    <form id="form1" runat="server">
    <div>
    <h1 style="color:white"> Transaction Details</h1>
    </div >
        <div align="center" style="color:white">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TransactionId" DataSourceID="TransactionTable" BorderColor="Transparent">
            <Columns>
                <asp:BoundField DataField="TransactionId" HeaderText="TransactionId" ReadOnly="True" SortExpression="TransactionId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:CheckBoxField DataField="DebitOrCredit" HeaderText="DebitOrCredit" SortExpression="DebitOrCredit" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="TransactionDate" HeaderText="TransactionDate" SortExpression="TransactionDate" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="TransactionTable" runat="server" ConnectionString="<%$ ConnectionStrings:CITIConnectionString %>" SelectCommand="sp_getTransactionDetails" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="haritha" Name="Username" SessionField="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
        <div align="center" style="color:white"><a href="Home.aspx">Home</a></div>
    </form>
</body>
</html>
