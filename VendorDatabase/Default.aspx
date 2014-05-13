<%@ Page Title="Vendors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VendorDatabase._Default" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

       
    }

    protected void getVendors(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        var NameInitial = btn.Text;
        //this.VendorName.Text = "";
        using (System.Data.SqlClient.SqlConnection thisConn = new
            System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ConnectionString))
        try
        {
            System.Data.SqlClient.SqlDataReader reader;
            
            System.Data.SqlClient.SqlCommand thisCommand = new System.Data.SqlClient.SqlCommand("read_vendor_by_name_initials", thisConn);
            thisCommand.CommandType = System.Data.CommandType.StoredProcedure;
            thisCommand.Parameters.Add("@INITIAL",System.Data.SqlDbType.VarChar, 1).Value= NameInitial;
            thisConn.Open();
            reader = thisCommand.ExecuteReader();
            while (reader.Read())
            {
                int i = 0;
                string  VendorName = (string)reader["Vendor_name"];
                Int32 VendorID = (Int32)reader["Vendor_id"];
                //this.VendorName.Text = this.VendorName.Text + " " + VendorName;
                LinkButton myVendorLink = new LinkButton();
                myVendorLink.ID = "" + VendorID;
                myVendorLink.Text = VendorName;
                myVendorLink.   OnClientClick = "LinkButton1_Click";
                //myVendorLink.CommandArgument = myVendorLink.ID;
                PlaceHolder1.Controls.Add(myVendorLink);
                PlaceHolder1.Controls.Add(new LiteralControl("<br />"));
                i = i + 1;
            }
            
            
        }
        finally
        {
            if (thisConn != null)
                thisConn.Close();
        }
        
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]


    public static string[] loadVendors(string prefixText, int count, string contextKey)
    {
        System.Data.DataTable dt = new System.Data.DataTable();
        string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr);
        con.Open();
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select vendor_name from Vendor where vendor_name like @Vendor+'%'", con);
        cmd.Parameters.AddWithValue("@Vendor", prefixText);
        System.Data.SqlClient.SqlDataAdapter adp = new System.Data.SqlClient.SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> VendorNames = new List<string>();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            VendorNames.Add(dt.Rows[i][0].ToString());
        }


        return VendorNames.ToArray();

    }
   
    
</script>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" Height="500px">
    <h3 dir="ltr" class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="A" OnClick="getVendors" Font-Underline="False" Width="40px"  />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="B" OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="C" OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="D" OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="E"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="F"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Text="G"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" Text="H"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button10" runat="server" Text="I"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button11" runat="server" Text="J"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button12" runat="server" Text="K"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" Text="L"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button14" runat="server" Text="M" OnClick="getVendors"  Font-Underline="False" Width="40px" />
    </h3>
    <h3 dir="ltr" class="auto-style1">
        <asp:Button ID="Button15" runat="server" Text="N"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button16" runat="server" Text="O"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button17" runat="server" Text="P"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button18" runat="server" Text="Q"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button19" runat="server" Text="R"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button20" runat="server" Text="S" OnClick="getVendors"  Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button21" runat="server" Text="T"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button22" runat="server" Text="U"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button23" runat="server" Text="V"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button24" runat="server" Text="W"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button25" runat="server" Text="Z"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button26" runat="server" Text="Y"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button27" runat="server" Text="Z"  OnClick="getVendors" Font-Underline="False" Width="40px" />
    </h3>
    <h3 dir="ltr" class="auto-style1">
        <asp:Button ID="Button30" runat="server" Text="1" OnClick="getVendors"  Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button31" runat="server" Text="2"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button32" runat="server" Text="3"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button33" runat="server" Text="4"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button34" runat="server" Text="5"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button35" runat="server" Text="6"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button36" runat="server" Text="7"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button37" runat="server" Text="8"  OnClick="getVendors" Font-Underline="False" Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button38" runat="server" Text="9"  OnClick="getVendors" Font-Underline="False" Width="40px" />
        </h3>
    <asp:Panel ID="Panel1" runat="server" style="text-align: center">
    </asp:Panel>
    <p>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Click" >LinkButton</asp:LinkButton>
        <asp:Label ID="Label1" runat="server">default</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="263px" >
                        </asp:TextBox>
                        <asp:AutoCompleteExtender 
                            ID="AutoCompleteExtender1" 
                            runat="server"
                            TargetControlID="TextBox1" 
                            UseContextKey="True"
                            ServiceMethod="loadVendors">
                        </asp:AutoCompleteExtender>
    </p>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>

