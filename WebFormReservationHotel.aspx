<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormReservationHotel.aspx.cs" Inherits="ConsumerReservationHotel.WebFormReservationHotel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/Style.css" rel="stylesheet" type="text/css">
</head>
<body style="text-align: center">
    <h3>Bienvenu sur la plateforme de Réservation </h3>
    <form id="form1" runat="server" class="frmalg">
        <div class="container" style="width: 50%; align-content: center">
            <label for="uname"><b>Ville</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="dropDown">
                <asp:ListItem Text="Tous" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:Button runat="server" ID="ButtonSearch" Text="Rechercher" BackColor="Olive" ForeColor="White" />
        </div>
        <div class="Row">
            <div class="Column" style="overflow: auto">
               <%if (ListHotelsResp != null) { %>
                 <% foreach (var hotel in ListHotelsResp.Responses)
                    { %>
                <div style="border: solid; padding: 20px; margin: 5px">
                    <img src="https://via.placeholder.com/468x60" alt="Avatar" style="width: 100%">
                    <div class="container-acrd">
                        <%= hotel.nomHotel %>
                        <h4><b>John Doe</b></h4>
                        <p>Architect & Engineer</p>
                    </div>
                </div>
                <% } %>
                <%} %>
                <center>
            </center>

            </div>
            <div class="container" style="width: 50%; align-content: center">
                <label for="uname"><b>Prenom</b></label>
                <asp:TextBox runat="server" ID="txt_Username" placeholder="Votre prenom" CssClass="input-style"></asp:TextBox>
                <label for="uname"><b>Nom</b></label>
                <asp:TextBox runat="server" ID="TextBox1" placeholder="Votre nom" CssClass="input-style"></asp:TextBox>
                <div>
                    <asp:Button runat="server" ID="btn_Order" CssClass="lgnbtn" Text="Réserver" />
                    <asp:Button runat="server" ID="btn_cancel" Text="Annuler" class="cnbtn" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>


