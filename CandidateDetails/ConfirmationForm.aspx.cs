using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConfirmationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblConfirmMessage.Visible = false;
            rblConfirm.Visible = false;
            Initialize();
        }
        else
        {
            lblConfirmMessage.Visible = true;
            lblConfirmMessage.Text = "Are you sure you want to continue";
            rblConfirm.Visible = true;
        }
    }
    private void Initialize()
    {

        Candidate candidate = Session["Candidate"] as Candidate;

        if (candidate!=null)
        {
            lblFirstName.Text = candidate.FirstName;
            lblLastName.Text = candidate.LastName;
            lblEmailID.Text = candidate.EmailID;
            lblAlternateEmailID.Text = candidate.AlternateEmailID;
            lblCandidateStatus.Text = candidate.CandidateStatus;
            lblPhoneHome.Text = candidate.PhoneHome;
            lblPhoneCell.Text = candidate.PhoneCell;
            lblPhoneWork.Text = candidate.PhoneWork;
            lblAddress1.Text = candidate.Address1;
            lblAddress2.Text = candidate.Address2;
            lblCountry.Text = candidate.CountryValue;
            lblState.Text = candidate.StateName;
            lblCity.Text = candidate.City;
            lblZipCode.Text = candidate.ZipCode;  
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        if (rblConfirm.SelectedValue == "Yes")
        {
            Response.Redirect("Welcome.aspx");
        }
        else if (rblConfirm.SelectedValue == "No")
        {
            //Response.Redirect("RegistrationForm.aspx");
            //redirecting to the new form.
            Response.Redirect("RegistrationForm_v1.aspx");
        }
    }
}