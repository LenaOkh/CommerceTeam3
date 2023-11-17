package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.*;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class PredefinedStepDefinis {
    @When("message {string} is displayed")
    public void messageIsDisplayed(String emailError) {
        String actError = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println(actError);
        assertThat(actError.equals(emailError));
    }

    @Then("I verify that user is logged in")
    public void iVerifyThatUserIsLoggedIn() {
        String actualText=getDriver().findElement(By.xpath("//div[@class='result']")).getText();
        assertThat(actualText).isEqualToIgnoringCase("Your registration completed");
    }
    @Then("Error message should not be displayed next to Email field")
    public void errorMessageShouldNotBeDisplayedNextToEmailField() {
        assertThat(getDriver().findElement(By.xpath("//span[@data-valmsg-for='Email']")).getAttribute("class")).isEqualTo("field-validation-valid");
    }

    @Given("^I open url \"([^\"]*)\"$")
    public void iOpenUrl(String url) {
        getDriver().get(url);
    }

    @Then("^I should see page title as \"([^\"]*)\"$")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("^I click on element with xpath \"([^\"]*)\"$")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @When("^I type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^element with xpath \"([^\"]*)\" should have text as \"([^\"]*)\"$")
    public void elementWithXpathShouldHaveTextAs(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).isEqualTo(text);
    }

    @When("^I clear element with xpath \"([^\"]*)\"$")
    public void iClearElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).clear();
    }

    @Then("^element with xpath \"([^\"]*)\" should be present$")
    public void elementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("^element with xpath \"([^\"]*)\" should contain text \"([^\"]*)\"$")
    public void elementWithXpathShouldContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).containsIgnoringCase(text);
    }

    @Then("^I wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }
}

