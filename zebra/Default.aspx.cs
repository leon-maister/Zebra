﻿using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection thisConnection = new SqlConnection(@"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Demo;Data Source=.\sqlexpress");
        thisConnection.Open();
        SqlCommand thisCommand = thisConnection.CreateCommand();
        string t = Request["D1"];
        thisCommand.CommandText = "SELECT dress, image from zebra where day ='" + t + "'";
        SqlDataReader thisReader = thisCommand.ExecuteReader();
        if (thisReader.Read())
        {
            string s = (string)thisReader[0];
            Label1.Text = s;
            // string m = Server.MapPath(@"~\casual.jpg");
            Image1.ImageUrl = (string)thisReader[1];
        }
        thisReader.Close();
        thisConnection.Close();
    
    }
   
}
