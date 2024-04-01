package org.example.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ProductPage {
    public static WebDriver webDriver;

    public ProductPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        webDriver = driver;
    }
    @FindBy(xpath = "//div[@class='product-content product-wrap clearfix product-deatil']")
    private WebElement productPage;
    @FindBy(xpath = "//a[.='Add to cart']")
    private WebElement addCartButton;

    public boolean verifyProductPage(){
        return productPage.isDisplayed();
    }
    public boolean verifyProductImage(String productImageName){
        String locatorProductImage = "//img[@src='imgs/" + productImageName + ".jpg']";
        return webDriver.findElement(By.xpath(locatorProductImage)).isDisplayed();
    }
    public boolean verifyProductName(String productName){
        String locatorProductName = "//h2[@class='name' and contains(text(), '" + productName + "')]";
        return webDriver.findElement(By.xpath(locatorProductName)).isDisplayed();
    }
    public boolean verifyProductPrice(String productPrice){
        String locatorProductPrice = "//h3[@class='price-container' and contains(text(), '" + productPrice + "')]";
        return webDriver.findElement(By.xpath(locatorProductPrice)).isDisplayed();
    }
    public boolean verifyProductDesc(String productDescription){
        String locatorProductDesc = "//p[contains(.,'" + productDescription + "')]";
        return webDriver.findElement(By.xpath(locatorProductDesc)).isDisplayed();
    }
    public void clickAddCartButton(){
        addCartButton.click();
    }
}
