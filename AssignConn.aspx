<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignConn.aspx.cs" Inherits="ASSIGNMENTon_Connected.AssignConn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <br />
            Studid&nbsp; :<asp:TextBox ID="txtStudid" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            StudNAme:<asp:TextBox ID="txtStudName" runat="server"></asp:TextBox>
            <br />
            StudMarks:<asp:TextBox ID="txtStudMArks" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btninsertStored" runat="server" OnClick="btninsertStored_Click" Text="InsertUsingStored" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnStoredProc" runat="server" OnClick="btnStoredProc_Click" Text="UpdateStoredProc" />
            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="DeleteNormal" />
            <br />
        </div>
    </form>
</body>
</html>
