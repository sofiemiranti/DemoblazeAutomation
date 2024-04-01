package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.example.pageObject.LoginPage;
import org.example.pageObject.ProductPage;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

public class ProductPageStepDef {
    private final WebDriver driver = Hooks.driver;
    ProductPage productPage = new ProductPage(driver);
    LoginPage loginPage  = new LoginPage(driver);

    @Then("User will be redirected to the product page")
    public void userWillBeRedirectedToProductPage() {
        Assert.assertTrue(productPage.verifyProductPage());
    }

    @And("Verify that the product name is displayed correctly which is the product name is {string}")
    public void verifyThatTheProductNameIsDisplayedCorrectlyWhichIsTheProductNameIs(String productName) {
        Assert.assertTrue(productPage.verifyProductName(productName));
    }

    @And("Verify that the product price is displayed correctly which is the product price is {string}")
    public void verifyThatTheProductPriceIsDisplayedCorrectlyWhichIsTheProductPriceIs(String productPrice) {
        Assert.assertTrue(productPage.verifyProductPrice(productPrice));
    }

    @And("Verify that the product description is displayed correctly which is the product description is {string}")
    public void verifyThatTheProductDescriptionIsDisplayedCorrectlyWhichIsTheProductDescriptionIs(String productDesc) {
        Assert.assertTrue(productPage.verifyProductDesc(productDesc));
    }

    @And("Verify that the product image is displayed correctly which is the product image name is {string}")
    public void verifyThatTheProductImageIsDisplayedCorrectlyWhichIsTheProductImageNameIs(String productImageName) {
        Assert.assertTrue(productPage.verifyProductImage(productImageName));
    }

    @When("User click on add to cart button")
    public void userClickOnAddToCartButton() throws InterruptedException {
        productPage.clickAddCartButton();
        Thread.sleep(5000);
    }

    @Then("The product has been added to cart and user should see pop up with this message {string}")
    public void theProductHasBeenAddedToCartAndUserShouldSeePopUpWithThisMessage(String alertText) {
        String expectedAlertText = loginPage.alertMessage();
        assertEquals(expectedAlertText, alertText);
    }

    @Then("The product failed to be added to cart and shouldn't see pop up with this message {string}")
    public void theProductFailedToBeAddedToCartAndShouldnTSeePopUpWithThisMessage(String alertText) {
        String expectedAlertText = loginPage.alertMessage();
        assertNotEquals(expectedAlertText, alertText);
    }
}
