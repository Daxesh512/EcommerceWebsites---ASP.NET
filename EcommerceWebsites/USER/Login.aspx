<%@ Page Title="Login" Language="C#" MasterPageFile="~/USER/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcommerceWebsites.USER.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color:black">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
				<li><a href="Home1.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Account</li>
			</ol>
		</div>
	</div>
	<table style="width: 433px; height: 370px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><img src="images/search.png" id="" width="100px" style="height: 40px" align="center"/> </th>
            <tr>
                <td colspan="2" align="center" style="height: 42px">Select&nbsp&nbsp
                    <asp:DropDownList ID="DropDownList_login" runat="server">
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList></td>
           </tr>

            <tr>
                <td align="center">Username</td>
                <td align="center"><asp:TextBox ID="txt_username" runat="server" placeholder=" Enter Email ID"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td style="height: 72px" align="center">Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

           

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_login" runat="server" Text="Login" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_login_Click" ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>&nbsp&nbsp&nbsp
                       </td>
            </tr>
        </table>

<%--    
<div class="account">
	<div class="container">
		<h2>Account</h2>
		<div class="account_grid">
			   <div class="col-md-6 login-right">
				<form action="#" method="post">

					<span>Email Address</span>
					<asp:TextBox ID="txtUsername" runat="server" placeholder="Email"></asp:TextBox>
				
				
					<span>Password</span>
					<asp:TextBox ID="txtPass" runat="server" placeholder="Password"></asp:TextBox>
				
					<div class="word-in">
				  		<a class="forgot" href="#">please fill up details...!</a>
						<asp:Button id="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Login" BackColor="Red" ForeColor="White"/>
				 	
				  	</div>
			    </form>
			   </div>	
			    <div class="col-md-6 login-left">
			  	 <h4>NEW CUSTOMERS</h4>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
				 <a class="acount-btn" href="Registration.aspx">Create an Account</a>
			   </div>
			   <div class="clearfix"> </div>
			 </div>
	</div>
</div>
--%>

    <br />
    <br />
    <br />
    <br />
    <br />
</center>


</asp:Content>
