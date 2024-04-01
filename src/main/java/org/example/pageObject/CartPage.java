package org.example.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CartPage {
    public static WebDriver webDriver;
    public CartPage(WebDriver driver){
        PageFactory.initElements(driver, this);
        webDriver = driver;
    }
    @FindBy(xpath = "//a[.='Cart']")
    private WebElement cartNavigation;
    @FindBy(xpath = "//h2[.='Products']")
    private WebElement cartPage;
    @FindBy(xpath = "//a[.='Delete']")
    private WebElement deleteButton;
    @FindBy(css = "#tbodyid > tr > td:nth-child(2)")
    private WebElement productNameList;
    @FindBy(xpath = "//button[@class='btn btn-success']")
    private WebElement placeOrderButton;
    @FindBy(xpath = "//input[@id='name']")
    private WebElement nameField;
    @FindBy(xpath = "//input[@id='country']")
    private WebElement countryField;
    @FindBy(xpath = "//input[@id='city']")
    private WebElement cityField;
    @FindBy(xpath = "//input[@id='card']")
    private WebElement creditCardField;
    @FindBy(xpath = "//input[@id='month']")
    private WebElement monthField;
    @FindBy(xpath = "//input[@id='year']")
    private WebElement yearField;
    @FindBy(xpath = "//button[.='Purchase']")
    private WebElement purchaseButton;
    @FindBy(xpath = "//h2[.='Thank you for your purchase!']")
    private WebElement thankYouNotification;

    public void clickCartNavigation(){
        cartNavigation.click();
    }
    public boolean verifyCartPage(){
        return cartPage.isDisplayed();
    }
    public boolean verifyImageProduct(String productImageName){
        String locatorProductImage = "//img[@src='imgs/" + productImageName + ".jpg']";
        return webDriver.findElement(By.xpath(locatorProductImage)).isDisplayed();
    }
    public boolean verifyNameProduct(String productName){
        String locatorProductName = "//td[.='" + productName + "']";
        return webDriver.findElement(By.xpath(locatorProductName)).isDisplayed();
    }
    public boolean verifyPriceProduct(String productPrice){
        String locatorProductPrice = "//td[.='" + productPrice + "']";
        return webDriver.findElement(By.xpath(locatorProductPrice)).isDisplayed();
    }
    public boolean verifyTotalPriceProduct(String totalPrice){
        String locatorTotalPrice = "//h3[@id='totalp' and contains(text(), '" + totalPrice + "')]";
        return webDriver.findElement(By.xpath(locatorTotalPrice)).isDisplayed();
    }
    public void clickDeleteButton(){
        deleteButton.click();
    }
    public boolean verifyProductNameList() {
        return productNameList.isDisplayed();
    }
    public void clickPlaceOrderButton(){
        placeOrderButton.click();
    }
    public boolean verifyPurchaseForm() {
        return nameField.isDisplayed();
    }
    public void inputNameField(String name){
        nameField.sendKeys(name);
    }
    public void inputCountryField(String country){
        countryField.sendKeys(country);
    }
    public void inputCityField(String city){
        cityField.sendKeys(city);
    }
    public void inputCreditCardField(String creditCard){
        creditCardField.sendKeys(creditCard);
    }
    public void inputMonthField(String month){
        monthField.sendKeys(month);
    }
    public void inputYearField(String year){
        yearField.sendKeys(year);
    }
    public void clickPurchaseButton(){
        purchaseButton.click();
    }
    public boolean verifyPurchaseButton() {
        return purchaseButton.isDisplayed();
    }
    public boolean verifyThankYouNotification(){
        return thankYouNotification.isDisplayed();
    }

}
