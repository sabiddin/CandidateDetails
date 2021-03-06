﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!Page.IsPostBack)
        {
            Initialize();
        }
    }
    protected void Page_Init(object sender, EventArgs e) {       
    }

    private void Initialize()
    {
        ddlCountry.DataSource = LookupBusiness.GetCountries();
        ddlCountry.DataValueField = "Code";
        ddlCountry.DataTextField = "Value";
        ddlCountry.DataBind();

        Candidate candidate = Session["Candidate"] as Candidate;
        if (candidate!=null)
        {         
            txtFirstName.Text = candidate.FirstName;
            txtLastName.Text = candidate.LastName;
            txtEmailID.Text = candidate.EmailID;
            txtAlternateEmailID.Text = candidate.AlternateEmailID;
            ddlCandidateStatus.SelectedValue = candidate.CandidateStatus;
            txtPhoneHome.Text = candidate.PhoneHome;
            txtPhoneCell.Text = candidate.PhoneCell;
            txtPhoneWork.Text = candidate.PhoneWork;
            txtAddress1.Text = candidate.Address1;
            txtAddress2.Text = candidate.Address2;
            txtCity.Text = candidate.City;
            txtZipCode.Text = candidate.ZipCode;

          
            ddlCountry.SelectedValue = candidate.CountryCode.ToString();            
            hdnCountryCode.Value = candidate.CountryCode.ToString();
            hdnCountryValue.Value = candidate.CountryValue;


            ddlState.DataSource = LookupBusiness.GetStates(candidate.CountryCode);
            ddlState.DataValueField = "StateID";
            ddlState.DataTextField = "StateName";
            ddlState.DataBind();        
            ddlState.SelectedValue = candidate.StateID.ToString();
            hdnStateID.Value = candidate.StateID.ToString();
            hdnStateName.Value = candidate.StateName.ToString();
            
            
        }
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Candidate candidate = new Candidate();

           candidate.FirstName = txtFirstName.Text;
           candidate.LastName = txtLastName.Text;
           candidate.FullName = txtFirstName.Text + " " + txtLastName.Text;
           candidate.EmailID = txtEmailID.Text;
           candidate.AlternateEmailID = txtAlternateEmailID.Text;
           candidate.CandidateStatus = ddlCandidateStatus.SelectedValue;
           candidate.PhoneHome = txtPhoneHome.Text;
           candidate.PhoneCell = txtPhoneCell.Text;
           candidate.PhoneWork = txtPhoneWork.Text;
           candidate.Address1 = txtAddress1.Text;
           candidate.Address2 = txtAddress2.Text;
           candidate.CountryCode = Convert.ToInt32(hdnCountryCode.Value);
            candidate.CountryValue = hdnCountryValue.Value;
            candidate.StateID = Convert.ToInt32(hdnStateID.Value);
            candidate.StateName = hdnStateName.Value;
            candidate.City = txtCity.Text;
           candidate.ZipCode = txtZipCode.Text;
            Session["Candidate"] = candidate;
            Response.Redirect("ConfirmationForm.aspx");
        }        
    }
}