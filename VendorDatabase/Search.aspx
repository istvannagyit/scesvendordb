<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="VendorDatabase.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Search vendors in the database</h2>
    </hgroup>

    <article>
        <p>        
            Use this area to provide additional information. Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString1 %>" ProviderName="<%$ ConnectionStrings:SCESPORTALConnectionString1.ProviderName %>" SelectCommand="SELECT [vendor_id], [vendor_name], [vendor_address1], [vendor_address2], [vendor_city], [vendor_state], [vendor_postalcode], [vendor_phone1], [vendor_phone2], [vendor_fax], [vendor_email], [vendor_note], [active] FROM [Vendor]"></asp:SqlDataSource>

</article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/Search">Search</a></li>
            <li><a runat="server" href="~/CreateNew">Create New</a></li>
        </ul>
    </aside>
</asp:Content>
