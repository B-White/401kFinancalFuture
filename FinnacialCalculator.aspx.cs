using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinnacialCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if(!IsPostBack)
        {
            for(int x = 50; x <= 500; x += 50)
            {
                ddlMonthlyInvestmnet.Items.Add(x.ToString());
            }
        }
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int monthlyInvestment = Convert.ToInt32(ddlMonthlyInvestmnet.SelectedValue);
        double yearlyInterestRate = Convert.ToDouble(txtInterestRAte.Text);
        int years = Convert.ToInt32(txtYears.Text);

        double futureValue = this.CalculateFutureValue(monthlyInvestment, yearlyInterestRate, years);

        lblFutureValue.Text = futureValue.ToString("c");
    }

    private double CalculateFutureValue(int monthlyInvestment, double yearlyInterestRate, int years)
    {
        int months = years * 12;
        double monthlyInterestRate = yearlyInterestRate / 12 / 100;
        double furtureValue = 0;

        for(int x = 0; x < months; x++)
        {
            furtureValue = (furtureValue + monthlyInvestment) * (1 + monthlyInterestRate);
        }

        return furtureValue;
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ddlMonthlyInvestmnet.SelectedIndex = 0;
        txtInterestRAte.Text = "";
        txtYears.Text = "";
        lblFutureValue.Text = "";
    }
}