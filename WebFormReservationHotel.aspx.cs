using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsumerReservationHotel
{
    public partial class WebFormReservationHotel : System.Web.UI.Page
    {
        RefWeb.ServiceWebHotel refWeb = new RefWeb.ServiceWebHotel();
        public RefWeb.ResponseOfHotel ListHotelsResp;
        protected void Page_Load(object sender, EventArgs e)
        {
     
            if (!IsPostBack)
            {
                RefWeb.ResponseOfHotel rep = refWeb.SearchHotel("", "", new DateTime(), new DateTime(), 0, 0, 0, 0);
                ListHotelsResp = rep;
                for (int i = 0; i < rep.adresses.Length; i++)
                {
                    ListItem item = new ListItem(rep.adresses[i].Pays + " - " + rep.adresses[i].Ville, rep.adresses[i].Ville);
                    dropDown.Items.Add(item);
                }
                for (int i = 1; i <=5; i++)
                {
                    ListItem item = new ListItem(i.ToString(), i.ToString());
                    DropDownEtoiles.Items.Add(item);
                }
                for (int i = 1; i <= 100; i++)
                {
                    ListItem item = new ListItem(i.ToString(), i.ToString());
                    DropDownNombrePersonnes.Items.Add(item);
                }
                for (int i = 1; i <= 20; i++)
                {
                    ListItem item = new ListItem(i.ToString(), i.ToString());
                    DropDownListPrixMin.Items.Add(item);
                }
                for (Int32 i = 1; i <= 2000; i++)
                {
                    ListItem item = new ListItem(i.ToString(), i.ToString());
                    DropDownListPrixMax.Items.Add(item);
                }
                {

                }
            }
           
        }

        protected void ddlTest_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedText = dropDown.SelectedItem.Text;
            string selectedValue = dropDown.SelectedItem.Value;

            ListHotelsResp = refWeb.SearchHotel(selectedValue, "", new DateTime(), new DateTime(), 0, 0, 0, 0);
            Response.Write(selectedValue);
        }

    }

    

}