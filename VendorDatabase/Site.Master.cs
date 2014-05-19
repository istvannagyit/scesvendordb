using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VendorDatabase
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


       public void VendorSelectedFunction(object sender, EventArgs e)
       {
           TextBox textboxVendor = (TextBox)sender;
           try
           {
               DataSet ds = new DataSet();
               string constr = ConfigurationManager.ConnectionStrings["SCESPORTALConnectionString"].ToString();
               SqlConnection con = new SqlConnection(constr);
               con.Open();
               SqlCommand cmd = new SqlCommand("SELECT vendor_id, vendor_name, "
                   + "vendor_address1, vendor_address2, vendor_city, vendor_state, vendor_postalcode, vendor_phone1, "
                   + "vendor_phone2, vendor_fax, vendor_email, vendor_note, active FROM Vendor WHERE (active = '1') AND vendor_name = @Vendor", con); //WHERE ([active] = '1') AND vendor_name like @Vendor+'%'
               cmd.Parameters.AddWithValue("@Vendor", textboxVendor.Text);
               SqlDataAdapter adp = new SqlDataAdapter(cmd);
               adp.Fill(ds);
               GridView mainContentGridView1 = (GridView)MainContent.FindControl("GridView1");
               mainContentGridView1.DataSource = ds;
               mainContentGridView1.DataBind();

           }
           catch (System.Data.SqlClient.SqlException ex) //Catch SqlException
           {
               Response.Write("The database server is temporarily not operating, please reload the page in a bit." +
               " If the problem seems permanent please let the Student center IT know.");
               Response.Write(ex.Message);
               //Response.Redirect("/App/ErrorPage.aspx");
           }
           catch (Exception ex) //Catch Other Exception
           {
               Response.Write(ex.Message);
           }
       }
       public void SearchOnVendor(object sender, EventArgs e)
       {
          // Image textboxVendor = (Image)sender;
           //SSSResponse.Write(textboxVendor.Text);
       }
        
        
    }
}