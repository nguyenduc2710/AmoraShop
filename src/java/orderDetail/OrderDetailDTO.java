/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package orderDetail;

/**
 *
 * @author long
 */
public class OrderDetailDTO {

    private int orderID;
    private int productID;
    private float price;
    private int quantity;
    private float totalPrice;
    private String name;
    private String capacity;
    private String brand;
    private String image;

    public OrderDetailDTO() {
    }

    public OrderDetailDTO(int orderID, int productID, float price, int quantity, float totalPrice, String name, String capacity, String brand, String image) {
        this.orderID = orderID;
        this.productID = productID;
        this.price = price;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.name = name;
        this.capacity = capacity;
        this.brand = brand;
        this.image = image;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "OrderDetailDTO{" + "orderID=" + orderID + ", productID=" + productID + ", price=" + price + ", quantity=" + quantity + ", totalPrice=" + totalPrice + ", name=" + name + ", capacity=" + capacity + ", brand=" + brand + ", image=" + image + '}';
    }

 
}
