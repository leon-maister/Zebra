<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #Select1
        {
            width: 184px;
        }
    </style>
</head>
<body>
    <form id="form1"  runat="server" enableviewstate="False">
    <center>
        <img src="zebra.jpg" /><div style="background-image: url('images/loginbgrd.gif');background-repeat:no-repeat;width:594px;height:302px;">
        <center>
        <table border="0" cellpadding="2" cellspacing="2" style="padding:25px;" >
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <select id="Select1" name="D1">
                        <option>Sunday</option>
                        <option>Monday</option>
                        <option>Tuesday</option>
                    </select>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" width="450" Height="200"/>
                </td>
            </tr>
        </table>
    </center>
       
       
    
    </div>
    </center>

   
    </form>
    
</body>
</html>
