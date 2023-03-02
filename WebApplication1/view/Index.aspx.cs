using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.View
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            //if (Page.IsPostBack)
            //{
            //    var valor = Request.Form[0];

            //    Console.WriteLine(valor);
            //}
            //else 
            //{
            //    Carro carro01 = new Carro("Azul");
            //    Carro carro02 = new Carro("Azul");
            //    Carro carro03 = new Carro("Azul");

            //    Response.Write("Carro:" + carro01.Cor);


            //    Response.Write("Qtd de Instancia de carro: " + Carro.contadorObjeto);


            //}

        }
    }

    //public class Carro 
    //{

    //    public static int contadorObjeto = 0;
    //    public string Cor = "";

    //    public Carro()
    //    {
    //        contadorObjeto += 1;
    //    }
    
    //    public Carro(string Cor)
    //    {
    //        this.Cor = Cor;
    //        contadorObjeto += 1;
    //    }
    //}
}