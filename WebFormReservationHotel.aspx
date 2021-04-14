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
        <div class="container" style="width: 100%; align-content: center">
            <label for="ville"><b>Ville</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="dropDown">
                <asp:ListItem Text="Tous" Value=""></asp:ListItem>
            </asp:DropDownList>

            <label for="date1"><b>Date de début</b></label>
            <asp:TextBox ID="date1" runat="server" ></asp:TextBox>
            <label for="date1"><b>Date de fin</b></label>
            <asp:TextBox ID="date2" runat="server" ></asp:TextBox>

             <label for="prixMin"><b>Prix Min</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="DropDownListPrixMin">
                <asp:ListItem Text="Tous" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <label for="prixMax"><b>Prix Max</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="DropDownListPrixMax">
                <asp:ListItem Text="Tous" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <label for="nombreEtoile"><b>Nombre Etoile</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="DropDownEtoiles">
                <asp:ListItem Text="Tous" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <label for="nombre"><b>Nombre de personnes</b></label>
            <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged" ID="DropDownNombrePersonnes">
            </asp:DropDownList>

        </div>
        <div class="Row">
            <div class="Column" style="overflow: auto">
                <%if (ListHotelsResp != null)
                    { %>
                <% foreach (var hotel in ListHotelsResp.Responses)
                    { %>
                <div style="border: solid; padding: 20px; margin: 5px">
                    <img src="https://via.placeholder.com/468x60" alt="Avatar" style="width: 100%">
                    <div class="container-acrd">
                        <%= hotel.nomHotel %>
                     
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


