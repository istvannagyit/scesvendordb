<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterDetails2.aspx.cs" Inherits="VendorDatabase.MasterDetails2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Master/detail page</h1>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vendor_id" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True" />
                <asp:BoundField DataField="vendor_id" HeaderText="vendor_id" InsertVisible="False" ReadOnly="True" SortExpression="vendor_id" Visible="False" />
                <asp:BoundField DataField="vendor_name" HeaderText="Name" SortExpression="vendor_name" />
                <asp:BoundField DataField="vendor_address1" HeaderText="Address1" SortExpression="vendor_address1" />
                <asp:BoundField DataField="vendor_address2" HeaderText="Address2" SortExpression="vendor_address2" />
                <asp:BoundField DataField="vendor_city" HeaderText="City" SortExpression="vendor_city" />
                <asp:BoundField DataField="vendor_state" HeaderText="State" SortExpression="vendor_state" />
                <asp:BoundField DataField="vendor_postalcode" HeaderText="Zip" SortExpression="vendor_postalcode" />
                <asp:BoundField DataField="vendor_phone1" HeaderText="Phone1" SortExpression="vendor_phone1" />
                <asp:BoundField DataField="vendor_phone2" HeaderText="Phone2" SortExpression="vendor_phone2" />
                <asp:BoundField DataField="vendor_fax" HeaderText="Fax" SortExpression="vendor_fax" />
                <asp:BoundField DataField="vendor_email" HeaderText="Email" SortExpression="vendor_email" />
                <asp:BoundField DataField="vendor_note" HeaderText="Note" SortExpression="vendor_note" />
                <asp:BoundField DataField="active" HeaderText="active" SortExpression="active" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString %>" SelectCommand="SELECT [vendor_id], [vendor_name], [vendor_address1], [vendor_address2], [vendor_city], [vendor_state], [vendor_postalcode], [vendor_phone1], [vendor_phone2], [vendor_fax], [vendor_email], [vendor_note], [active] FROM [Vendor] WHERE ([active] = @active)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="active" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="vendor_contact_honorific" HeaderText="Mr/Ms/Mrs" SortExpression="vendor_contact_honorific" />
                <asp:BoundField DataField="vendor_contact_fname" HeaderText="First Name" SortExpression="vendor_contact_fname" />
                <asp:BoundField DataField="vendor_contact_lname" HeaderText="Last Name" SortExpression="vendor_contact_lname" />
                <asp:BoundField DataField="vendor_contact_position" HeaderText="Position" SortExpression="vendor_contact_position" />
                <asp:BoundField DataField="vendor_contact_address1" HeaderText="Address1" SortExpression="vendor_contact_address1" />
                <asp:BoundField DataField="vendor_contact_address2" HeaderText="Address2" SortExpression="vendor_contact_address2" />
                <asp:BoundField DataField="vendor_contact_city" HeaderText="City" SortExpression="vendor_contact_city" />
                <asp:BoundField DataField="vendor_contact_state" HeaderText="State" SortExpression="vendor_contact_state" />
                <asp:BoundField DataField="vendor_contact_postalcode" HeaderText="Zip" SortExpression="vendor_contact_postalcode" />
                <asp:BoundField DataField="vendor_contact_phone1" HeaderText="Phone1" SortExpression="vendor_contact_phone1" />
                <asp:BoundField DataField="vendor_contact_phone2" HeaderText="Phone2" SortExpression="vendor_contact_phone2" />
                <asp:BoundField DataField="vendor_contact_fax" HeaderText="Fax" SortExpression="vendor_contact_fax" />
                <asp:BoundField DataField="vendor_contact_email" HeaderText="Email" SortExpression="vendor_contact_email" />
                <asp:BoundField DataField="vendor_contact_note" HeaderText="Note" SortExpression="vendor_contact_note" />
                <asp:BoundField DataField="vendor_id" HeaderText="vendor_id" SortExpression="vendor_id" Visible="False" />
                <asp:BoundField DataField="vendor_contact_id" HeaderText="vendor_contact_id" InsertVisible="False" ReadOnly="True" SortExpression="vendor_contact_id" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString %>" SelectCommand="SELECT [vendor_contact_honorific], [vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], [vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], [vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], [vendor_id], [vendor_contact_id] FROM [Vendor_Contact] WHERE ([vendor_id] = @vendor_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="vendor_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
