/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package product;

/**
 *
 * @author thaiq
 */
public class ProductDTO {
    private int productID;
    private String name;
    private int quantity;
    private String status;
    private String description;
    private String capacity;
    private String brand;
    private float price;
    private int categoryID;

    public ProductDTO() {
    }

    public ProductDTO(int productID, String name, int quantity, String status, String description, String capacity, String brand, float price, int categoryID) {
        this.productID = productID;
        this.name = name;
        this.quantity = quantity;
        this.status = status;
        this.description = description;
        this.capacity = capacity;
        this.brand = brand;
        this.price = price;
        this.categoryID = categoryID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "productID=" + productID + ", name=" + name + ", quantity=" + quantity + ", status=" + status + ", description=" + description + ", capacity=" + capacity + ", brand=" + brand + ", price=" + price + ", categoryID=" + categoryID + '}';
    }

    
}
