package gov.medicaid.features.general.ui;

import net.thucydides.core.pages.PageObject;
import net.thucydides.core.annotations.DefaultUrl;

import static gov.medicaid.features.IntegrationTests.click;
import static org.assertj.core.api.Assertions.assertThat;

@DefaultUrl("http://localhost:8080/cms")
public class LoginPage extends PageObject {

    public void enterProviderCredentials() {
        $("#username").sendKeys("p1");
        $("#password").sendKeys("p1");
    }

    public void login() {
        click(this, $("#btnLogin"));
    }

    public void checkUserLoggedIn(String username) {
        String welcomeText = $("#header > div > div.userSection").getText();
        assertThat(welcomeText).contains("Welcome, " + username);
    }

    public void checkUserLoggedOut() {
        // TODO: check that this works as expected
        String registerText = $("div.buttons > a").getText();
        assertThat(registerText).contains("Register New Account");
    }
}
