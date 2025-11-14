<%@ Page Title="Order" Language="C#" MasterPageFile="~/USER/UserMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="EcommerceWebsites.USER.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center style="background-color:black">
    <br />
    <br />
    <br />


    <asp:Panel ID="Panel1" runat="server" HeaderText="Order">
        <center>
        <table style="width: 600px; height: 800px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><img src="images/search.png" id="" width="100px" style="height: 40px"/> </th>
            <tr>
                <td align="center">Order ID</td>
                <td align="center"><asp:Label ID="lbl_OrderId" runat="server" Text="ID"></asp:Label>
                   <%-- <asp:TextBox ID="txt_user_id" runat="server"></asp:TextBox>--%>
                </td>
            </tr>

            <tr>
                <td align="center">Name of Person</td>
                <td align="center"><asp:TextBox ID="txt_user_name" runat="server" placeholder="Enter Name"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validname" runat="server" ControlToValidate="txt_user_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Mobile</td>
                <td align="center"><asp:TextBox ID="txt_user_mobile" runat="server" placeholder="Enter Mobile No"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_user_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Email</td>
                <td align="center"><asp:TextBox ID="txt_user_email" runat="server" placeholder="Enter Email Id"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txt_user_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td align="center">Select Product</td>
                <td align="center">
                    <asp:DropDownList ID="DropDownListSelectProduct" runat="server">
                        <asp:ListItem>Trouser Men's</asp:ListItem>
                        <asp:ListItem>Pant Men's</asp:ListItem>
                         <asp:ListItem>Pant Woman's</asp:ListItem>
                        <asp:ListItem>Trouser Woman's</asp:ListItem>
                        <asp:ListItem>Palazoo Woman's</asp:ListItem>
                        <asp:ListItem>Jeans Men's</asp:ListItem>
                        <asp:ListItem>Jeans Woman's</asp:ListItem>

                    </asp:DropDownList>
                    <%-- <asp:RequiredFieldValidator ID="validpass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
              <tr>
                <td align="center">Order Date</td>
                <td align="center"><asp:TextBox ID="txtOrderDate" TextMode="Date" runat="server" ></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
               <tr>
                <td align="center">Postal Code</td>
                <td align="center"><asp:TextBox ID="txtPostalCode" runat="server" placeholder="Postal Code"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
                 <tr>
                <td align="center">Address</td>
                <td align="center"><asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" placeholder="Address"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_Confirm_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>
             <tr>
                <td align="center">Quantity</td>
                <td align="center"><asp:TextBox ID="txtQuantity"  runat="server" placeholder="Quantity"></asp:TextBox>
                   &nbsp;&nbsp;&nbsp;<asp:Button id="btnConfrim" OnClick="btnConfrim_Click" runat="server" Text="Confirm" BackColor="Orange" ForeColor="White"/>
                    <br /><br /><br /><asp:TextBox ID="txtTotal" runat="server" ></asp:TextBox>
                    </td>
            </tr>
           
           
          

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_submit_user" runat="server" Text="Submit" BackColor="Green" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_submit_user_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp <asp:Button ID="Button1_Logout" runat="server" Text="Logout" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="Button1_Logout_Click"  ></asp:Button>
                   </td>
            </tr>
             <tr>
                <td colspan="2" align="center"><asp:Button ID="btnMyOrder" runat="server" Text="My Order" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnMyOrder_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:Button ID="btnCancelOrder" runat="server" Text="Cancel Order" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnCancelOrder_Click"  ></asp:Button>
                </td>
            </tr>
        </table>
    </center>

    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" HeaderText="My Order">
             <center style="background-color:black">

     <asp:TextBox ID="SearchByTagTB" runat="server" Font-Bold="True" Width="338px" 
         BorderColor="#990000" Font-Size="Large"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SearchByTagButton" runat="server" Text="SEARCH"
            onclick="SearchByTagButton_Click" BackColor="Green" 
         BorderColor="#990000" Font-Bold="True" ForeColor="Black" /><br />
        <asp:GridView ID="gvPatients" runat="server"></asp:GridView>
                 <br />
                 <br />
                 <br />
                 <table>
                         <tr>
                <td colspan="2" align="center"><asp:Button ID="btnOrder1" runat="server" Text="Order Now" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnOrder1_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:Button ID="btnCancelOrder1" runat="server" Text="Cancel Order" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnCancelOrder1_Click"  ></asp:Button>
                </td>
            </tr>
                 </table>


</center>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" HeaderText="Cancel Order">
           <center style="background-color:black">

     <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Width="338px" 
         BorderColor="#990000" Font-Size="Large"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRemoveOrder" runat="server" Text="Cancel Order"
            onclick="btnRemoveOrder_Click" BackColor="Green" 
         BorderColor="#990000" Font-Bold="True" ForeColor="Black" /><br />
            <br />
                 <br />
                 <br />
                 <table>
                         <tr>
                <td colspan="2" align="center"><asp:Button ID="btnOrder2" runat="server" Text="Order Now" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnOrder2_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp<asp:Button ID="btnMyOrder2" runat="server" Text="My Order" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnMyOrder2_Click"  ></asp:Button>
                </td>
            </tr>
                 </table>


</center>
    </asp:Panel>



    <br />
    <br />
    <br />
</center>



</asp:Content>
