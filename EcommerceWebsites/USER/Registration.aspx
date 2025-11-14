<%@ Page Title="Registration" Language="C#" MasterPageFile="~/USER/UserMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EcommerceWebsites.USER.WebForm6" %>
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
				<li class="active">Register</li>
				
			</ol>
		</div>
	</div>

<div class="container">

	  <table style="width: 448px; height: 440px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><img src="images/snup2.png" id="" width="100px" style="height: 40px"/> </th>
            <tr>
                <td align="center">User ID</td>
                <td align="center"> <asp:Label ID="lbluserId" runat="server"></asp:Label> <%-- <asp:TextBox ID="txt_user_id" runat="server"></asp:TextBox>--%>
                </td>
            </tr>

            <tr>
                <td align="center">Firstname</td>
                <td align="center">	<asp:TextBox ID="txtFirstname" runat="server" placeholder="Firstname"></asp:TextBox>
					 <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
		      <tr>
                <td align="center">Lastname</td>
                <td align="center">	<asp:TextBox ID="txtLastname" runat="server" placeholder="Lastname"></asp:TextBox>
						 <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
		     <tr>
                <td align="center">Email</td>
                <td align="center"><asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
						 <%-- <asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txt_user_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
            <tr>
                <td align="center">Mobile</td>
                <td align="center"><asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile"></asp:TextBox>
						  <%--<asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_user_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

         

            <tr>
                <td align="center">Password</td>
                <td align="center"><asp:TextBox ID="txtPass" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
								   <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Confirm Password</td>
                <td align="center"><asp:TextBox ID="txtCPass" runat="server" placeholder="Confirm Password"></asp:TextBox>
						 <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_submit_user" runat="server" Text="Submit" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_submit_user_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton_login" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton_login_Click">Login</asp:LinkButton>
                </td>
            </tr>
        </table>


<%--	<div class="register">
		<h2>Register</h2>
		  	  <form action="#" method="post">
				 <div class="col-md-6  register-top-grid">
					
					<div class="mation">
						<span>User Id</span>
						<asp:Label ID="lbluserId" runat="server"></asp:Label><br />
				

						<span>First Name</span>
						<asp:TextBox ID="txtFirstname" runat="server" placeholder="Firstname"></asp:TextBox>
					
					
						<span>Last Name</span>
						<asp:TextBox ID="txtLastname" runat="server" placeholder="Lastname"></asp:TextBox>
						<br />
					
					 
						 <span>Email Address</span>
						<asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
						<br />
						<span>Mobile</span>
						<asp:TextBox ID="txtMobile" runat="server" placeholder="Mobile"></asp:TextBox>
						<br />
					
						 <span>Gender</span>
						<asp:RadioButtonList ID="RadioButtonList1" runat="server">
							<asp:ListItem>Male</asp:ListItem>
							<asp:ListItem>Female</asp:ListItem>
						</asp:RadioButtonList>
						<br />
						<span>Password</span>
								<asp:TextBox ID="txtPass" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
								<br />
								
								<span>Confirm Password</span>
								<asp:TextBox ID="txtCPass" runat="server" placeholder="Confirm Password"></asp:TextBox>
						
					</div>
					 <div class="clearfix"> </div>
					  
					 </div>
				     <div class=" col-md-6 register-bottom-grid">
						   
							<div class="mation">
								<img src="images/6.jpg" height="600px" width="400px"/>
								
							</div>
					 </div>
					 <div class="clearfix"> </div>
				</form>
				
				<div class="register-but">
				  <form action="#" method="post">
					  <asp:Button id="btnRegister"  OnClick="btnRegister_Click" runat="server" Text="Submit" BackColor="Red" ForeColor="White"/>
					&nbsp;&nbsp;&nbsp;
					  <asp:LinkButton ID="btnLinkLogin" OnClick="btnLinkLogin_Click" runat="server">Login</asp:LinkButton>
					   <div class="clearfix"> </div>
				   </form>
				</div>
		   </div>--%>
</div>



    <br />
    <br />
    <br />
    <br />
    <br />
</center>



</asp:Content>
