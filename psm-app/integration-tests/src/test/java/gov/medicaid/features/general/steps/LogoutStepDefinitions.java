package gov.medicaid.features.general.steps;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gov.medicaid.features.general.ui.LoginPage;
import gov.medicaid.features.general.ui.DashboardPage;

public class LogoutStepDefinitions {
    // This property is set by serenity at test time.
    private LoginPage loginPage;
    private DashboardPage dashboardPage;

    @Given("^I am on the the dashboard page$")
    public void i_have_the_dashboard_page_open() {
        loginPage.open();
        loginPage.enterProviderCredentials();
        loginPage.login();
        loginPage.checkUserLoggedIn("p1");
    }

    @When("^I click on Logout$")
    public void clickLogout()  {
        dashboardPage.logout();
    }

    @Then("^I should see the login page$")
    public void checkLogout() {
        loginPage.checkUserLoggedOut();
    }
}
