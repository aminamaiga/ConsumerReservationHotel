using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsumerReservationHotel
{
    public class Hotel
    {
        public int IdHotel;
        public int GetIdHotel()
        {
            return IdHotel;
        }
        public void SetIdHotel(int value)
        {
            IdHotel = value;
        }

        public string nomHotel;

        public string GetNomHotel()
        {
            return nomHotel;
        }

        public void SetNomHotel(string value)
        {
            nomHotel = value;
        }

        public int nombreChambre;

        public int GetNombreChambre()
        {
            return nombreChambre;
        }

        public void SetNombreChambre(int value)
        {
            nombreChambre = value;
        }

        public int nombreLit;

        public int GetNombreLit()
        {
            return nombreLit;
        }

        public void SetNombreLit(int value)
        {
            nombreLit = value;
        }

        public string lieuDit;

        public string GetLieuDit()
        {
            return lieuDit;
        }

        public void SetLieuDit(string value)
        {
            lieuDit = value;
        }

        public int idCategorie;

        public int GetIdCategorie()
        {
            return idCategorie;
        }

        public void SetIdCategorie(int value)
        {
            idCategorie = value;
        }

        public Hotel()
        {

        }
        public Hotel(int idHotel, string nomHotel, int nombreChambre, int nombreLit, string lieuDit, int idCategorie)
        {
            this.SetIdHotel(idHotel);
            this.SetNomHotel(nomHotel);
            this.SetNombreChambre(nombreChambre);
            this.SetNombreLit(nombreLit);
            this.SetLieuDit(lieuDit);
            this.SetIdCategorie(idCategorie);
        }


    }
}