<%@ Page Title="Create New" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNew.aspx.cs" Inherits="VendorDatabase.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Create new vendor:</h2>
    </hgroup>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="294px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="vendor_id" DefaultMode="Insert" >
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#C6C0BA" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="Name" SortExpression="vendor_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vendor_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vendor_name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("vendor_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address1" SortExpression="vendor_address1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("vendor_address1") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("vendor_address1") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("vendor_address1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address2" SortExpression="vendor_address2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("vendor_address2") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("vendor_address2") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("vendor_address2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="vendor_city">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("vendor_city") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("vendor_city") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("vendor_city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="vendor_state">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("vendor_state") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("vendor_state") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("vendor_state") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postalcode" SortExpression="vendor_postalcode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("vendor_postalcode") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("vendor_postalcode") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("vendor_postalcode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Phone1" SortExpression="vendor_phone1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox91" runat="server" Text='<%# Bind("vendor_phone1") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox91" runat="server" Text='<%# Bind("vendor_phone1") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label91" runat="server" Text='<%# Bind("vendor_phone1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone2" SortExpression="vendor_phone2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("vendor_phone2") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("vendor_phone2") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("vendor_phone2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
         <asp:TemplateField HeaderText="Email" SortExpression="vendor_email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("vendor_email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("vendor_email") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("vendor_email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fax" SortExpression="vendor_fax">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("vendor_fax") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("vendor_fax") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("vendor_fax") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Note" SortExpression="vendor_note">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("vendor_note") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("vendor_note") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("vendor_note") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Active" SortExpression="active">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("active") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("active") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("active") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    
    <div>  
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="vendor_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" PageSize="5">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="vendor_name" HeaderText="Name" SortExpression="vendor_name" />
            <asp:BoundField DataField="vendor_city" HeaderText="City" SortExpression="vendor_city" />
            <asp:BoundField DataField="vendor_state" HeaderText="State" SortExpression="vendor_state" />
            <asp:BoundField DataField="vendor_phone1" HeaderText="Phone1" SortExpression="vendor_phone1" />
            <asp:BoundField DataField="vendor_email" HeaderText="Email" SortExpression="vendor_email" />
            <asp:BoundField DataField="vendor_address1" HeaderText="Address1" SortExpression="vendor_address1" />
            <asp:BoundField DataField="vendor_address2" HeaderText="Address2" SortExpression="vendor_address2" />
            <asp:BoundField DataField="vendor_postalcode" HeaderText="ZIP" SortExpression="vendor_postalcode" />
            <asp:BoundField DataField="vendor_phone2" HeaderText="Phone2" SortExpression="vendor_phone2" />
            <asp:BoundField DataField="vendor_fax" HeaderText="Fax" SortExpression="vendor_fax" />
            <asp:BoundField DataField="vendor_note" HeaderText="Note" SortExpression="vendor_note" />
            <asp:BoundField DataField="active" HeaderText="Active" SortExpression="active" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString %>" SelectCommand="SELECT [vendor_name], [vendor_city], [vendor_state], [vendor_phone1], [vendor_email], [vendor_address1], [vendor_address2], [vendor_postalcode], [vendor_phone2], [vendor_fax], [vendor_note], [active], [vendor_id] FROM [Vendor]" DeleteCommand="DELETE FROM [Vendor] WHERE [vendor_id] = @vendor_id" InsertCommand="INSERT INTO [Vendor] ([vendor_name], [vendor_city], [vendor_state], [vendor_phone1], [vendor_email], [vendor_address1], [vendor_address2], [vendor_postalcode], [vendor_phone2], [vendor_fax], [vendor_note], [active]) VALUES (@vendor_name, @vendor_city, @vendor_state, @vendor_phone1, @vendor_email, @vendor_address1, @vendor_address2, @vendor_postalcode, @vendor_phone2, @vendor_fax, @vendor_note, @active)" UpdateCommand="UPDATE [Vendor] SET [vendor_name] = @vendor_name, [vendor_city] = @vendor_city, [vendor_state] = @vendor_state, [vendor_phone1] = @vendor_phone1, [vendor_email] = @vendor_email, [vendor_address1] = @vendor_address1, [vendor_address2] = @vendor_address2, [vendor_postalcode] = @vendor_postalcode, [vendor_phone2] = @vendor_phone2, [vendor_fax] = @vendor_fax, [vendor_note] = @vendor_note, [active] = @active WHERE [vendor_id] = @vendor_id">
        <DeleteParameters>
            <asp:Parameter Name="vendor_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="vendor_name" Type="String" />
            <asp:Parameter Name="vendor_city" Type="String" />
            <asp:Parameter Name="vendor_state" Type="String" />
            <asp:Parameter Name="vendor_phone1" Type="String" />
            <asp:Parameter Name="vendor_email" Type="String" />
            <asp:Parameter Name="vendor_address1" Type="String" />
            <asp:Parameter Name="vendor_address2" Type="String" />
            <asp:Parameter Name="vendor_postalcode" Type="String" />
            <asp:Parameter Name="vendor_phone2" Type="String" />
            <asp:Parameter Name="vendor_fax" Type="String" />
            <asp:Parameter Name="vendor_note" Type="String" />
            <asp:Parameter Name="active" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="vendor_name" Type="String" />
            <asp:Parameter Name="vendor_city" Type="String" />
            <asp:Parameter Name="vendor_state" Type="String" />
            <asp:Parameter Name="vendor_phone1" Type="String" />
            <asp:Parameter Name="vendor_email" Type="String" />
            <asp:Parameter Name="vendor_address1" Type="String" />
            <asp:Parameter Name="vendor_address2" Type="String" />
            <asp:Parameter Name="vendor_postalcode" Type="String" />
            <asp:Parameter Name="vendor_phone2" Type="String" />
            <asp:Parameter Name="vendor_fax" Type="String" />
            <asp:Parameter Name="vendor_note" Type="String" />
            <asp:Parameter Name="active" Type="Int32" />
            <asp:Parameter Name="vendor_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>