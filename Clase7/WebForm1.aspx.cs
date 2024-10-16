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
            if (int.TryParse(args.Value, out int number))
            {
                args.IsValid = number >= 1 && number <= DateTime.Now.Year;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}