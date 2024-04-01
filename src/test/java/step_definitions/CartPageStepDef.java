package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.example.pageObject.CartPage;
import org.example.pageObject.LoginPage;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.assertEquals;

public class CartPageStepDef {
    private final WebDriver driver = Hooks.driver;
    CartPage cartPage  = new CartPage(driver);
    LoginPage loginPage = new LoginPage(driver);


    @Then("User should be redirected to cart page")
    public void userShouldBeRedirectedToCartPage() throws InterruptedException {
        Assert.assertTrue(cartPage.verifyCartPage());
        Thread.sleep(5000);
    }

    @When("User click on delete button")
    public void userClickOnDeleteButton() throws InterruptedException {
        cartPage.clickDeleteButton();
        Thread.sleep(5000);
    }

    @When("User click on Place Order button")
    public void userClickOnPlaceOrderButton() throws InterruptedException {
        cartPage.clickPlaceOrderButton();
        Thread.sleep(3000);
    }

    @Then("User should see purchase form")
    public void userShouldSeePurchaseForm() {
        Assert.assertTrue(cartPage.verifyPurchaseForm());
    }

    @And("User click on purchase button")
    public void userClickOnPurchaseButton() throws InterruptedException {
        cartPage.clickPurchaseButton();
        Thread.sleep(3000);
    }

    @Then("Thank you message for purchasing will showing")
    public void thankYouMessageForPurchasingWillShowing() {
        Assert.assertTrue(cartPage.verifyThankYouNotification());
    }

    @Then("Thank you message for purchasing shouldn't be showing")
    public void thankYouMessageForPurchasingShouldnTBeShowing() {
        Assert.assertFalse(cartPage.verifyThankYouNotification());
    }

    @Then("User click on the cart button in navigation bar")
    public void userClickOnTheCartButtonInNavigationBar() throws InterruptedException {
        cartPage.clickCartNavigation();
        Thread.sleep(5000);
    }


    @And("Verify that the product image is displayed correctly in cart page which is the product image name is {string}")
    public void verifyThatTheProductImageIsDisplayedCorrectlyInCartPageWhichIsTheProductImageNameIs(String productImageName) {
        Assert.assertTrue(cartPage.verifyImageProduct(productImageName));
    }

    @And("Verify that the product name is displayed correctly in cart page which is the product name is {string}")
    public void verifyThatTheProductNameIsDisplayedCorrectlyInCartPageWhichIsTheProductNameIs(String productName) {
        Assert.assertTrue(cartPage.verifyNameProduct(productName));
    }

    @And("Verify the total prices matches the sum of product prices displayed in the cart, which is the total is {string}")
    public void verifyTheTotalPricesMatchesTheSumOfProductPricesDisplayedInTheCartWhichIsTheTotalIs(String totalPrice) {
        Assert.assertTrue(cartPage.verifyTotalPriceProduct(totalPrice));
    }

    @And("Verify that the product price is displayed correctly in cart page which is the product price is {string}")
    public void verifyThatTheProductPriceIsDisplayedCorrectlyInCartPageWhichIsTheProductPriceIs(String productPrice) {
        Assert.assertTrue(cartPage.verifyPriceProduct(productPrice));
    }

    @When("User input {string} in name field, {string} in country field, {string} in city field, {string} in credit card field, {string} in month field, and {string} in year field")
    public void userInputInNameFieldInCountryFieldInCityFieldInCreditCardFieldInMonthFieldAndInYearField(String name, String country, String city, String creditCard, String month, String year) {
        cartPage.inputNameField(name);
        cartPage.inputCountryField(country);
        cartPage.inputCityField(city);
        cartPage.inputCreditCardField(creditCard);
        cartPage.inputMonthField(month);
        cartPage.inputYearField(year);
    }

    @Then("User should see pop up with this message Thank you for your purchase!")
    public void userShouldSeePopUpWithThisMessage() {
        Assert.assertTrue(cartPage.verifyThankYouNotification());
    }

    @And("The purchase button is not enabled")
    public void thePurchaseButtonIsNotEnabled() {
        Assert.assertFalse(cartPage.verifyPurchaseButton());
    }

    @Then("User failed to purchase and should see pop up with this message {string}")
    public void userFailedToPurchaseAndShouldSeePopUpWithThisMessage(String alertText) {
        String expectedAlertText = loginPage.alertMessage();
        assertEquals(expectedAlertText, alertText);
    }

    @Then("User failed to purchase")
    public void userFailedToPurchase() {
        Assert.assertFalse(cartPage.verifyThankYouNotification());
    }
}
