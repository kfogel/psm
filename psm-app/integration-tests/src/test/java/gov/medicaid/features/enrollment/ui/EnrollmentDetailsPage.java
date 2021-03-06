package gov.medicaid.features.enrollment.ui;

import net.thucydides.core.pages.PageObject;

import static gov.medicaid.features.IntegrationTests.click;

import static org.assertj.core.api.Assertions.assertThat;

public class EnrollmentDetailsPage extends PageObject {
    public void verifySubmitModal() {
        assertThat($("#submitEnrollmentModal > div.inner > " +
                "div.modal-content > div.right > div.middle").getText())
                .contains("The enrollment has been successfully submitted");
    }

    public void closeSubmitModal() {
        click(this, $("#submitEnrollmentModal a.okBtn"));
    }
}
