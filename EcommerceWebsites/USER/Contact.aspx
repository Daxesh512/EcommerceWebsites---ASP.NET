<%@ Page Title="Contact" Language="C#" MasterPageFile="~/USER/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EcommerceWebsites.USER.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center>
    <br />
    <br />
    <br />

    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
				<li><a href="Home.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Contact</li>
			</ol>
		</div>
	</div>
<div class="contact">
			<div class="container">
				<h3>Contact</h3>
				
				<div class="contact-grids">
					<div class="contact-form">
							<form action="#" method="post">
								<div class="contact-bottom">
									<div class="col-md-4 in-contact">
										<span>Name</span>
										<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
										<%--<input type="text" name="name">--%>
									</div>
									<div class="col-md-4 in-contact">
										<span>Email</span>
										<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
									<%--	<input type="text" name="email" >--%>
									</div>
									<div class="col-md-4 in-contact">
										<span>Phone number</span>
										<asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
									<%--	<input type="text" name="phonenumber">--%>
									</div>
									<div class="clearfix"> </div>
								</div>
							
								<div class="contact-bottom-top">
									<span>Message</span>
									<asp:TextBox id-="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
								<%--	<textarea  name="message"> </textarea>	--%>							
									</div>
								<asp:Button id="btnSend" runat="server" Text="Send" BackColor="Red" ForeColor="White"/>
					<%--			<input type="submit" value="Send">--%>
							</form>
						</div>
				<div class="address">
					<div class=" address-more">
						<h2>Address</h2>
						<div class="col-md-4 address-grid">
							<i class="glyphicon glyphicon-map-marker"></i>
							<div class="address1">
								<p>Ahemadabad City, </p>
								<p>gujrat- INDIA</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-4 address-grid ">
							<i class="glyphicon glyphicon-phone"></i>
							<div class="address1">
								<p>+91 9687281768</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-4 address-grid ">
							<i class="glyphicon glyphicon-envelope"></i>
							<div class="address1">
								<p><a href="#"> avinashmayavanshi15@gmail.com</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>


    <br />
    <br />
    <br />
</center>



</asp:Content>
