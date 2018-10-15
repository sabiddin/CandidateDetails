using System.Collections.Generic;
using System.Web.Services;
using System.Web.Script.Services;

/// <summary>
/// Summary description for LookupAjaxService
/// </summary>
[System.Web.Script.Services.ScriptService]
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class LookupAjaxService : System.Web.Services.WebService
{

    [WebMethod]
    [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
    public List<LookupOption> GetCountries()
    {
        return LookupBusiness.GetCountries();
    }
    [WebMethod (EnableSession = true)]
    [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
    public List<State> GetStates(int countryID)
    {
        return LookupBusiness.GetStates(countryID);
    }

    [WebMethod(EnableSession = true)]
    [ScriptMethod(UseHttpGet = false, ResponseFormat = ResponseFormat.Json)]
    public bool ValidateOldPasswords(string newPassword)
    {
        bool isValid = true;
        //if(Session["Candidate"] !=null)
        //{
            List<string> oldPasswords = new List<string>();
            oldPasswords = Session["OldPasswords"] as List<string>;

            if (oldPasswords.Contains(newPassword))
            {
                isValid = false;
            }
        //}
        return isValid;

    }
}
