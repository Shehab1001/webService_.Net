using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSquare_Click(object sender, EventArgs e)
        {
            CalculatorService.CalculatorWebServiceSoapClient sqre = new CalculatorService.CalculatorWebServiceSoapClient();
            float result = sqre.SquareArea(Convert.ToSingle(txtLen.Text), Convert.ToSingle(txtWid.Text));
            lblresult.Text = result.ToString();
        }

        protected void btnRectangle_Click(object sender, EventArgs e)
        {
            CalculatorService.CalculatorWebServiceSoapClient rec = new CalculatorService.CalculatorWebServiceSoapClient();
            float result = rec.RectangleArea(Convert.ToSingle(txtLen.Text), Convert.ToSingle(txtWid.Text));
            lblresult.Text = result.ToString();
        }

        protected void btnTriangle_Click(object sender, EventArgs e)
        {
            CalculatorService.CalculatorWebServiceSoapClient tri = new CalculatorService.CalculatorWebServiceSoapClient();
            float result = tri.TriangleArea(Convert.ToSingle(txtLen.Text), Convert.ToSingle(txtWid.Text));
            lblresult.Text = result.ToString();
        }

        protected void btnCircle_Click(object sender, EventArgs e)
        {
            CalculatorService.CalculatorWebServiceSoapClient cir = new CalculatorService.CalculatorWebServiceSoapClient();
            float result = cir.CircleArea(Convert.ToSingle(txtRad.Text));
            lblresult.Text = result.ToString();
        }

        protected void txtLen_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cls_Click(object sender, EventArgs e)
        {
            Clear();
        }
        void Clear()
        {
            txtLen.Text = " ";
            txtWid.Text = " ";
            txtRad.Text = " ";
            lblresult.Text = "_";


        }
    }
}