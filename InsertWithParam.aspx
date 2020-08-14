<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithParameters.aspx.cs" Inherits="ASSIGNMENTon_Connected.WithParameters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            Deptid:<asp:TextBox ID="txtDeptid" runat="server"></asp:TextBox>
            <br />
            DeptName:<asp:TextBox ID="txtDeptname" runat="server"></asp:TextBox>
            <br />
            DeptStatus:<asp:TextBox ID="txtDeptStatus" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="InsertWithPara" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdat" runat="server" OnClick="btnUpdat_Click" Text="updateWithSinle" />
            <asp:Button ID="txtDelete" runat="server" OnClick="txtDelete_Click" Text="Delete" />
            <br />
        </div>
    </form>
</body>
</html>
