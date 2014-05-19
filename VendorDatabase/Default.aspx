<%@ Page Title="Vendors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VendorDatabase._Default" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<script runat="server">
 
</script>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" Height="500px">
    <h3 dir="ltr" class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="A" OnClick="showVendorsByInitials" Font-Underline="False" Width="20px"  />
&nbsp;<asp:Button ID="Button3" runat="server" Text="B" OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="C" OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button5" runat="server" Text="D" OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button6" runat="server" Text="E"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button7" runat="server" Text="F"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button8" runat="server" Text="G"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button9" runat="server" Text="H"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button10" runat="server" Text="I"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button11" runat="server" Text="J"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button12" runat="server" Text="K"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button13" runat="server" Text="L"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button14" runat="server" Text="M" OnClick="showVendorsByInitials"  Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button15" runat="server" Text="N"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button16" runat="server" Text="O"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button17" runat="server" Text="P"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button18" runat="server" Text="Q"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button19" runat="server" Text="R"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button20" runat="server" Text="S" OnClick="showVendorsByInitials"  Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button21" runat="server" Text="T"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button22" runat="server" Text="U"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button23" runat="server" Text="V"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button24" runat="server" Text="W"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button25" runat="server" Text="Z"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button26" runat="server" Text="Y"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button27" runat="server" Text="Z"  OnClick="showVendorsByInitials" Font-Underline="False" Width="20px" />
&nbsp;<asp:Button ID="Button30" runat="server" Text="1" OnClick="showVendorsByInitials"  Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button31" runat="server" Text="2"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button32" runat="server" Text="3"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button33" runat="server" Text="4"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button34" runat="server" Text="5"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button35" runat="server" Text="6"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button36" runat="server" Text="7"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button37" runat="server" Text="8"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
&nbsp;<asp:Button ID="Button38" runat="server" Text="9"  OnClick="showVendorsByInitials" Font-Underline="False" Width="17px" />
        </h3>
    <p>
       
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vendor_id"  AllowSorting="True"  >
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
            <PagerSettings Mode="NextPreviousFirstLast" />
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
       
    </p>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>

