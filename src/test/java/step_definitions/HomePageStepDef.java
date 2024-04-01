package step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.example.pageObject.HomePage;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

public class HomePageStepDef {
    private final WebDriver driver = Hooks.driver;
    HomePage homePage  = new HomePage(driver);

    @And("Verify that the carousel image is displayed in home page")
    public void verifyThatTheCarouselImageIsDisplayedInHomePage() {
        Assert.assertTrue(homePage.verifyCarouselImage());
    }

    @When("User click on the carousel control next icon")
    public void userClickOnTheCarouselControlNextIcon() {
        homePage.clickNextButtonCarousel();
    }

    @Then("Carousel image will be changed to next image")
    public void carouselImageWillBeChangedToNextImage() {
        Assert.assertTrue(homePage.verifyNextButtonCarousel());
    }

    @When("User click on the carousel control previous icon")
    public void userClickOnTheCarouselControlPreviousIcon() {
        homePage.clickPrevButtonCarousel();
    }

    @Then("Carousel image will be changed to previous image")
    public void carouselImageWillBeChangedToPreviousImage() {
        Assert.assertTrue(homePage.verifyPrevButtonCarousel());
    }

    @When("User click on phones button in categories")
    public void userClickOnPhonesButtonInCategories() throws InterruptedException {
        homePage.clickPhoneCategories();
        Thread.sleep(1000);
    }

    @Then("Phones products will be displayed")
    public void phonesProductsWillBeDisplayed() {
        Assert.assertTrue(homePage.verifyRelevantItemPhone());
    }

    @When("User click on monitors button in categories")
    public void userClickOnMonitorsButtonInCategories() throws InterruptedException {
        homePage.clickMonitorCategories();
        Thread.sleep(1000);
    }

    @Then("Monitors products will be displayed")
    public void monitorsProductsWillBeDisplayed() {
        Assert.assertTrue(homePage.verifyRelevantItemMonitor());
    }

    @When("User click on laptops button in categories")
    public void userClickOnLaptopsButtonInCategories() throws InterruptedException {
        homePage.clickLaptopCategories();
        Thread.sleep(1000);
    }

    @Then("Laptops products will be displayed")
    public void laptopsProductsWillBeDisplayed() {
        Assert.assertTrue(homePage.verifyRelevantItemLaptop());
    }

    @And("Validate the product card displays the image, name, price, and description of the product correctly")
    public void validateTheProductCardDisplaysTheImageNamePriceAndDescriptionOfTheProductCorrectly() {
        Assert.assertTrue(homePage.verifyImageProductCard());
        Assert.assertTrue(homePage.verifyNameProductCard());
        Assert.assertTrue(homePage.verifyPriceProductCard());
        Assert.assertTrue(homePage.verifyDescProductCard());
    }

    @When("User click on the next button")
    public void userClickOnTheNextButton() throws InterruptedException {
        homePage.clickNextProductButton();
        Thread.sleep(1000);
    }


    @Then("The next products will be displayed")
    public void theNextProductsWillBeDisplayed() {
        Assert.assertTrue(homePage.verifyRelevantItemMonitor());
    }

    @When("User click on the previous button")
    public void userClickOnThePreviousButton() throws InterruptedException {
        homePage.clickPrevProductButton();
        Thread.sleep(1000);
    }

    @Then("The previous products will be displayed")
    public void thePreviousProductsWillBeDisplayed() {
        Assert.assertTrue(homePage.verifyRelevantItemPhone2());
    }

    @And("User click on {string}")
    public void userClickOn(String productName) throws InterruptedException {
        homePage.clickProductName(productName);
        Thread.sleep(5000);
    }
}
