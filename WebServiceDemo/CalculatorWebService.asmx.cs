using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServiceDemo
{
    /// <summary>
    /// Summary description for CalculatorWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CalculatorWebService : System.Web.Services.WebService
    {


        [WebMethod]
        public float SquareArea(float length, float width)
        {
            if (length > 0 && width > 0)
            {
                if (length != width)
                {
                    return 0;
                }
                else
                {
                    return length * length;
                }

            }

            else return 0;


        }


        [WebMethod]
        public float RectangleArea(float length, float width)
        {
            if (length > 0 && width > 0)
            {
                return length * width;
            }

            else return 0;
        }


        [WebMethod]
        public float TriangleArea(float Base, float Height)
        {
            if (Base > 0 && Height > 0)
            {
                return (Base * Height) / 2;
            }

            else return 0;
        }

        [WebMethod]
        public float CircleArea(float radius)
        {
            if (radius > 0)
            {
                return (float)(Math.PI * radius * radius);
            }

            else return 0;
        }
    }
}
