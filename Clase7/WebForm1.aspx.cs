using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int anio = int.Parse(args.Value);
            args.IsValid = anio >= 1 && anio <= DateTime.Now.Year;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int edad;
            args.IsValid = int.TryParse(args.Value, out edad);
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string mail = args.Value;
            args.IsValid = mail.EndsWith("@gmail.com");
           
        }
    }
}