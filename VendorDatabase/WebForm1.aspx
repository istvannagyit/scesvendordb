<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VendorDatabase.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
    <title>WebForm1</title>
    <meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
</HEAD>
<body MS_POSITIONING="GridLayout" style="height: 294px">

    
    <p>


    </p>
    <p>


    </p>
    <form id="Form1" method="post" runat="server">
        <asp:Button id="Button1" style="Z-INDEX: 100; LEFT: 32px; POSITION: absolute; TOP: 236px" runat="server" Text="Submit" Height="27px" Width="100px"></asp:Button>
        <asp:Label id="Label4" style="Z-INDEX: 105; LEFT: 23px; POSITION: absolute; TOP: 197px" runat="server" Width="368px" EnableViewState="False"></asp:Label>
        <asp:Label id="Label3" style="Z-INDEX: 104; LEFT: 25px; POSITION: absolute; TOP: 138px" runat="server" Width="368px" EnableViewState="False"></asp:Label>
        <asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 23px; POSITION: absolute; TOP: 60px" runat="server" Width="86px" Height="19px"> TextBox2:</asp:Label>
        <asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 23px; POSITION: absolute; TOP: 28px" runat="server" Width="86" Height="19"> TextBox1:</asp:Label>
    </body>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString %>" SelectCommand="SELECT [vendor_name] FROM [Vendor]"></asp:SqlDataSource>
    
    </form>

    
    
</html>
