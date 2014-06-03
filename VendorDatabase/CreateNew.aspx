<%@ Page Title="Create New" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNew.aspx.cs" Inherits="VendorDatabase.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style type="text/css">
        .BackColorTab
        {
            font-family:Verdana, Arial, Courier New;
            font-size: 11px;
            color:#EFEEEF;
            background-color:#EFEEEF;
        }
        .DropDown
        {
            font-family:Verdana, Arial, Courier New;
            font-size: 11px;
            color:black;
            background-color:#EFEEEF;
        }

    </style>    

    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="100%"  VerticalStripWidth="" style="margin-right: 3px" >
        <ajaxToolkit:TabPanel runat="server" HeaderText="Create/Edit Vendor" ID="TabPanel1" CssClass="BackColorTab">
            <ContentTemplate>
    <p dir="ltr">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="vendor_id" DefaultMode="Insert" CellSpacing="1" OnItemInserted="DetailsView1_ItemInserted">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="False" />
        <EditRowStyle BackColor="#C6C0BA" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="False" />
        <Fields>
            <asp:TemplateField HeaderText="Name" SortExpression="vendor_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vendor_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vendor_name") %>' ValidationGroup="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" 
                        ControlToValidate="TextBox1" Text="* Required" Display="Dynamic" EnableClientScript="true" ToolTip="* Required" SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("vendor_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address1" SortExpression="vendor_address1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("vendor_address1") %>' ></asp:TextBox>                
                 </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("vendor_address1") %>' ValidationGroup="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox6" Text="* Required" Display="Dynamic" EnableClientScript="true"  SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>
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
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("vendor_address2") %>' ValidationGroup="1"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("vendor_city") %>' ValidationGroup="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox2" Text="* Required"  Display="Dynamic" EnableClientScript="true"  SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>  
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
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("vendor_state") %>' MaxLength="2" ValidationGroup="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox3" Text="* Required"  Display="Dynamic" EnableClientScript="true"  SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>  
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("vendor_state") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ZIP" SortExpression="vendor_postalcode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("vendor_postalcode") %>'></asp:TextBox>               
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("vendor_postalcode") %>'  ValidationGroup="1"></asp:TextBox>
                    <asp:RegularExpressionValidator id="RegularExpressionValidator118"
                   ControlToValidate="TextBox8"
                   ValidationExpression="\d+"
                   Display="Dynamic" EnableClientScript="true" 
                   ErrorMessage="Only numbers are allowed"
                   runat="server"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox8" Text="* Required"  Display="Dynamic" EnableClientScript="true"  SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator> 
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
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("vendor_email") %>' ValidationGroup="1"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="" ControlToValidate="TextBox5" Display="Static" EnableClientScript="true"   SetFocusOnError="True"
                        Text="*" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
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
             <asp:CommandField ShowInsertButton="True" ValidationGroup="1" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    </p>
    <p dir="ltr"></p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" PageSize="5" DataSourceID="SqlDataSource41" DataKeyNames="vendor_id">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True" CausesValidation="False"></asp:CommandField>
                        <asp:TemplateField HeaderText="Name" SortExpression="vendor_name">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_name") %>' ID="TextBox91"></asp:TextBox>
                                
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox91" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_name") %>' ID="Label91"></asp:Label>
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address1" SortExpression="vendor_address1">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_address1") %>' ID="TextBox92"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox92" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_address1") %>' ID="Label92"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address2" SortExpression="vendor_address2">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_address2") %>' ID="TextBox93"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox93" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_address2") %>' ID="Label93"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="vendor_city">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_city") %>' ID="TextBox94"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox94" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_city") %>' ID="Label94"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" SortExpression="vendor_state">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_state") %>' ID="TextBox95"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator95" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox95" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_state") %>' ID="Label95"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Postalcode" SortExpression="vendor_postalcode">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_postalcode") %>' ID="TextBox96"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator96" runat="server" ErrorMessage=""
                        ControlToValidate="TextBox96" Text="* Required" Display="Static" EnableClientScript="true" ></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_postalcode") %>' ID="Label96"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone1" SortExpression="vendor_phone1">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_phone1") %>' ID="TextBox97"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_phone1") %>' ID="Label97"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone2" SortExpression="vendor_phone2">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_phone2") %>' ID="TextBox98"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_phone2") %>' ID="Label98"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fax" SortExpression="vendor_fax">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_fax") %>' ID="TextBox99"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_fax") %>' ID="Label99"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="vendor_email">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_email") %>' ID="TextBox910"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_email") %>' ID="Label910"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Note" SortExpression="vendor_note">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("vendor_note") %>' ID="TextBox911"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("vendor_note") %>' ID="Label911"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>

                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>


                <asp:SqlDataSource runat="server" ID="SqlDataSource41" ConnectionString='<%$ ConnectionStrings:SCESPORTALConnectionString %>' DeleteCommand="DELETE FROM [Vendor] WHERE [vendor_id] = @vendor_id" InsertCommand="INSERT INTO [Vendor] ([vendor_name], [vendor_address1], [vendor_address2], [vendor_city], [vendor_state], [vendor_postalcode], [vendor_phone1], [vendor_phone2], [vendor_fax], [vendor_email], [vendor_note], [active]) VALUES (@vendor_name, @vendor_address1, @vendor_address2, @vendor_city, @vendor_state, @vendor_postalcode, @vendor_phone1, @vendor_phone2, @vendor_fax, @vendor_email, @vendor_note, @active)" SelectCommand="SELECT * FROM [Vendor] ORDER BY [vendor_name]" UpdateCommand="UPDATE [Vendor] SET [vendor_name] = @vendor_name, [vendor_address1] = @vendor_address1, [vendor_address2] = @vendor_address2, [vendor_city] = @vendor_city, [vendor_state] = @vendor_state, [vendor_postalcode] = @vendor_postalcode, [vendor_phone1] = @vendor_phone1, [vendor_phone2] = @vendor_phone2, [vendor_fax] = @vendor_fax, [vendor_email] = @vendor_email, [vendor_note] = @vendor_note, [active] = @active WHERE [vendor_id] = @vendor_id">
                    <DeleteParameters>
                        <asp:Parameter Name="vendor_id" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="vendor_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_address1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_address2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_state" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_postalcode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_phone1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_phone2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_fax" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_note" Type="String"></asp:Parameter>
                        <asp:Parameter Name="active" Type="Int32"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="vendor_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_address1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_address2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_city" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_state" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_postalcode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_phone1" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_phone2" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_fax" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_note" Type="String"></asp:Parameter>
                        <asp:Parameter Name="active" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="vendor_id" Type="Int32"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCESPORTALConnectionString %>" SelectCommand="SELECT [vendor_name], [vendor_city], [vendor_state], [vendor_phone1], [vendor_email], [vendor_address1], [vendor_address2], [vendor_postalcode], [vendor_phone2], [vendor_fax], [vendor_note], [active], [vendor_id] FROM [Vendor] ORDER BY vendor_name" DeleteCommand="(DELETE FROM [Vendor] WHERE [vendor_id] = @vendor_id) AND (DELETE FROM [Vendor_contact] WHERE [vendor_id] = @vendor_id)" InsertCommand="INSERT INTO [Vendor] ([vendor_name], [vendor_city], [vendor_state], [vendor_phone1], [vendor_email], [vendor_address1], [vendor_address2], [vendor_postalcode], [vendor_phone2], [vendor_fax], [vendor_note], [active]) VALUES (@vendor_name, @vendor_city, @vendor_state, @vendor_phone1, @vendor_email, @vendor_address1, @vendor_address2, @vendor_postalcode, @vendor_phone2, @vendor_fax, @vendor_note, '1')" UpdateCommand="UPDATE [Vendor] SET [vendor_name] = @vendor_name, [vendor_city] = @vendor_city, [vendor_state] = @vendor_state, [vendor_phone1] = @vendor_phone1, [vendor_email] = @vendor_email, [vendor_address1] = @vendor_address1, [vendor_address2] = @vendor_address2, [vendor_postalcode] = @vendor_postalcode, [vendor_phone2] = @vendor_phone2, [vendor_fax] = @vendor_fax, [vendor_note] = @vendor_note, [active] = @active WHERE [vendor_id] = @vendor_id">
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

 <!---------------------->   
 <!---- SECOND TAB ------>   
 <!---------------------->   

            </ContentTemplate>  
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Create/Edit Vendor Contact" CssClass="BackColorTab" >
        <ContentTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="vendor_name" DataValueField="vendor_id"  AutoPostBack="True" CssClass="DropDown" ></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:SCESPORTALConnectionString %>' SelectCommand="SELECT [vendor_name], [vendor_id] FROM [Vendor] ORDER BY vendor_name"></asp:SqlDataSource>
            <p dir="ltr"></p>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" AllowPaging="True" DefaultMode="Insert" CellPadding="1" CellSpacing="1" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView2_ItemInserted">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="False" />
                <EditRowStyle BackColor="#C6C0BA" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="False" />
                <Fields>
                    <asp:TemplateField HeaderText="Title" SortExpression="vendor_contact_honorific">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_honorific") %>' ID="TextBox1"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_honorific") %>' ID="TextBox1" ValidationGroup="2"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox1" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_honorific") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First name" SortExpression="vendor_contact_fname">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_fname") %>' ID="TextBox2"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_fname") %>' ID="TextBox2" ValidationGroup="2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox2" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_fname") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last name" SortExpression="vendor_contact_lname">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_lname") %>' ID="TextBox3"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_lname") %>' ID="TextBox3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox3" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_lname") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="vendor_contact_position" HeaderText="Position" SortExpression="vendor_contact_position"></asp:BoundField>
                    <asp:TemplateField HeaderText="Address1" SortExpression="vendor_contact_address1">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_address1") %>' ID="TextBox4"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_address1") %>' ID="TextBox4"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox4" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_address1") %>' ID="Label4"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:BoundField DataField="vendor_contact_address2" HeaderText="Address2" SortExpression="vendor_contact_address2"></asp:BoundField>
                     <asp:TemplateField HeaderText="City" SortExpression="vendor_contact_city">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_city") %>' ID="TextBox5"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_city") %>' ID="TextBox5"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox5" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_city") %>' ID="Label5"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State" SortExpression="vendor_contact_state">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_state") %>' ID="TextBox6"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_state") %>' ID="TextBox6"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox6" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_state") %>' ID="Label6"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ZIP" SortExpression="vendor_contact_postalcode">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_postalcode") %>' ID="TextBox7"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_postalcode") %>' ID="TextBox7"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox7" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_postalcode") %>' ID="Label7"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone1" SortExpression="vendor_contact_phone1">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_phone1") %>' ID="TextBox8"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("vendor_contact_phone1") %>' ID="TextBox8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Required" 
                        ControlToValidate="TextBox8" Text="* Required" Display="Dynamic" EnableClientScript="true" SetFocusOnError="True" ValidationGroup="2"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("vendor_contact_phone1") %>' ID="Label8"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="vendor_contact_phone2" HeaderText="Phone2" SortExpression="vendor_contact_phone2"></asp:BoundField>
                    <asp:BoundField DataField="vendor_contact_fax" HeaderText="Fax" SortExpression="vendor_contact_fax"></asp:BoundField>
                    <asp:BoundField DataField="vendor_contact_email" HeaderText="Email" SortExpression="vendor_contact_email"></asp:BoundField>
                    <asp:BoundField DataField="vendor_contact_note" HeaderText="Note" SortExpression="vendor_contact_note"></asp:BoundField>
                   
                    <asp:CommandField ShowInsertButton="True" ValidationGroup="2" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerSettings Mode="NumericFirstLast" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:SCESPORTALConnectionString %>' SelectCommand="SELECT [vendor_id], [vendor_contact_id], [vendor_contact_fname], [vendor_contact_honorific], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], [vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], [vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], [active] FROM [Vendor_Contact]" InsertCommand="INSERT INTO Vendor_Contact(vendor_id, vendor_contact_honorific, vendor_contact_fname, vendor_contact_lname, vendor_contact_position, vendor_contact_address1, vendor_contact_address2, vendor_contact_city, vendor_contact_state, vendor_contact_postalcode, vendor_contact_phone1, vendor_contact_phone2, vendor_contact_fax, vendor_contact_email, vendor_contact_note, active) VALUES (@vendor_id,@vendor_contact_honorific, @vendor_contact_fname, @vendor_contact_lname, @vendor_contact_position, @vendor_contact_address1, @vendor_contact_address2, @vendor_contact_city, @vendor_contact_state, @vendor_contact_postalcode, @vendor_contact_phone1, @vendor_contact_phone2, @vendor_contact_fax, @vendor_contact_email, @vendor_contact_note, '1')">
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="vendor_id" PropertyName="SelectedValue" />
                    <asp:Parameter Name="vendor_contact_id" Type="String" />
                    <asp:Parameter Name="vendor_contact_fname" Type="String" />
                    <asp:Parameter Name="vendor_contact_honorific" Type="String" />
                    <asp:Parameter Name="vendor_contact_lname" Type="String" />
                    <asp:Parameter Name="vendor_contact_city" Type="String" />
                    <asp:Parameter Name="vendor_contact_state" Type="String" />
                    <asp:Parameter Name="vendor_contact_phone1" Type="String" />
                    <asp:Parameter Name="vendor_contact_email" Type="String" />
                    <asp:Parameter Name="vendor_contact_address1" Type="String" />
                    <asp:Parameter Name="vendor_contact_address2" Type="String" />
                    <asp:Parameter Name="vendor_contact_postalcode" Type="String" />
                    <asp:Parameter Name="vendor_contact_phone2" Type="String" />
                    <asp:Parameter Name="vendor_contact_fax" Type="String" />
                    <asp:Parameter Name="vendor_contact_note" Type="String" />
                    <asp:Parameter Name="active" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
        <p dir="ltr"></p>
            <asp:GridView ID="GridView2" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="vendor_contact_id" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" PageSize="3" DataSourceID="SqlDataSourceGridView2">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="vendor_contact_honorific" HeaderText="Title" SortExpression="vendor_contact_honorific"></asp:BoundField>

                    <asp:BoundField DataField="vendor_contact_fname" HeaderText="First name" SortExpression="vendor_contact_fname" />
                    <asp:BoundField DataField="vendor_contact_lname" HeaderText="Last name" SortExpression="vendor_contact_lname" />
                    <asp:BoundField DataField="vendor_contact_position" HeaderText="Position" SortExpression="vendor_contact_position" />
                    <asp:BoundField DataField="vendor_contact_address1" HeaderText="Address1" SortExpression="vendor_contact_address1" />
                    <asp:BoundField DataField="vendor_contact_address2" HeaderText="Address2" SortExpression="vendor_contact_address2" />
                    <asp:BoundField DataField="vendor_contact_city" HeaderText="City" SortExpression="vendor_contact_city" />
                    <asp:BoundField DataField="vendor_contact_state" HeaderText="State" SortExpression="vendor_contact_state" />
                    <asp:BoundField DataField="vendor_contact_postalcode" HeaderText="ZIP" SortExpression="vendor_contact_postalcode" />
                    <asp:BoundField DataField="vendor_contact_phone1" HeaderText="Phone1" SortExpression="vendor_contact_phone1" />
                    <asp:BoundField DataField="vendor_contact_phone2" HeaderText="Phone2" SortExpression="vendor_contact_phone2" />
                    <asp:BoundField DataField="vendor_contact_fax" HeaderText="Fax" SortExpression="vendor_contact_fax" />
                    <asp:BoundField DataField="vendor_contact_email" HeaderText="Email" SortExpression="vendor_contact_email" />
                    <asp:BoundField DataField="vendor_contact_note" HeaderText="Note" SortExpression="vendor_contact_note" />
                    <asp:BoundField DataField="active" HeaderText="active" SortExpression="Active" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerSettings LastPageImageUrl="First" LastPageText="Last" Mode="NumericFirstLast" NextPageText="Next" PreviousPageText="Previous" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>



            <asp:SqlDataSource runat="server" ID="SqlDataSourceGridView2" ConnectionString='<%$ ConnectionStrings:SCESPORTALConnectionString %>' DeleteCommand="DELETE FROM [Vendor_Contact] WHERE [vendor_contact_id] = @vendor_contact_id" InsertCommand="INSERT INTO [Vendor_Contact] ([vendor_id], [vendor_contact_honorific], [vendor_contact_fname], [vendor_contact_lname], [vendor_contact_position], [vendor_contact_address1], [vendor_contact_address2], [vendor_contact_city], [vendor_contact_state], [vendor_contact_postalcode], [vendor_contact_phone1], [vendor_contact_phone2], [vendor_contact_fax], [vendor_contact_email], [vendor_contact_note], [active]) VALUES (@vendor_id, @vendor_contact_honorific, @vendor_contact_fname, @vendor_contact_lname, @vendor_contact_position, @vendor_contact_address1, @vendor_contact_address2, @vendor_contact_city, @vendor_contact_state, @vendor_contact_postalcode, @vendor_contact_phone1, @vendor_contact_phone2, @vendor_contact_fax, @vendor_contact_email, @vendor_contact_note, @active)" SelectCommand="SELECT * FROM [Vendor_Contact] WHERE ([vendor_id] = @vendor_id) ORDER BY [vendor_contact_fname]" UpdateCommand="UPDATE [Vendor_Contact] SET [vendor_id] = @vendor_id, [vendor_contact_honorific] = @vendor_contact_honorific, [vendor_contact_fname] = @vendor_contact_fname, [vendor_contact_lname] = @vendor_contact_lname, [vendor_contact_position] = @vendor_contact_position, [vendor_contact_address1] = @vendor_contact_address1, [vendor_contact_address2] = @vendor_contact_address2, [vendor_contact_city] = @vendor_contact_city, [vendor_contact_state] = @vendor_contact_state, [vendor_contact_postalcode] = @vendor_contact_postalcode, [vendor_contact_phone1] = @vendor_contact_phone1, [vendor_contact_phone2] = @vendor_contact_phone2, [vendor_contact_fax] = @vendor_contact_fax, [vendor_contact_email] = @vendor_contact_email, [vendor_contact_note] = @vendor_contact_note, [active] = @active WHERE [vendor_contact_id] = @vendor_contact_id">
                <DeleteParameters>
                    <asp:Parameter Name="vendor_contact_id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="vendor_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_honorific" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_fname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_lname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_address1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_address2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_postalcode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_phone1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_phone2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_fax" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_note" Type="String"></asp:Parameter>
                    <asp:Parameter Name="active" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="vendor_id" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="vendor_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_honorific" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_fname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_lname" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_position" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_address1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_address2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_postalcode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_phone1" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_phone2" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_fax" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_note" Type="String"></asp:Parameter>
                    <asp:Parameter Name="active" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="vendor_contact_id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </ContentTemplate> 
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>

</asp:Content>