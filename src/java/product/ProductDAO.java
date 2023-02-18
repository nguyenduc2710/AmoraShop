package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author thaiq
 */
public class ProductDAO {

    private static final String GET_ALL_PRODUCT = "SELECT [Product].*, [ProductImage].image\n"
            + "FROM [Product]\n"
            + "INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id;";

    private static final String GET_ALL_PRODUCT_BY_CATEGORYID = "SELECT [Product].*, [ProductImage].image FROM [Product] INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id where category_id = ?";

    private static final String GET_ALL_PRODUCT_BY_PAGGINGSIZE = "SELECT [Product].*, [ProductImage].image\n"
            + "FROM [Product]\n"
            + "INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id order by price offset (?-1)*? row fetch next ? rows only";

    private static final String COUNT_ALL_PRODUCT = "select count(product_id) from Product";

    private static final String GET_ALL_PRODUCT_BY_ID = "SELECT [Product].*, [ProductImage].image\n"
            + "FROM [Product]\n"
            + "INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id\n"
            + "where [Product].product_id = ?";

    private static final String DELETE = "DELETE FROM [dbo].[ProductImage] WHERE [product_id] = ?\n"
            + "DELETE FROM [dbo].[Hashtag] WHERE [product_id] = ?\n"
            + "DELETE FROM [dbo].[Product] WHERE [product_id] = ?";
    private static final String INSERT = "INSERT INTO [dbo].[Product]([product_name],[quantity] , [status],[description],[capacity],[brand],[price],[category_id]) VALUES(?,?,?,?,?,?,?,?)";

    private static final String GET_NEWEST_PRODUCT_INSERTED = "  SELECT TOP 1  [product_id] FROM [ShopNuocHoa].[dbo].[Product] ORDER BY [product_id] DESC";

    private static final String INSERT2 = "INSERT INTO [dbo].[ProductImage]([image],[product_id]) VALUES (?,?)";

    private static final String UPDATE = "UPDATE [dbo].[Product] SET [product_name] = ?,[quantity] =?, [status]=?,[description]=?, [capacity]=?, [brand]=?,[price]=?,[category_id]=? where [product_id] like ?";

    private static final String UPDATE2 = "UPDATE [dbo].[ProductImage] SET [image] = ? where [product_id] like ?";

    private static final String SEARCH = "SELECT [Product].product_id, [Product].product_name, Product.quantity, Product.status, Product.description, Product.capacity, Product.brand, Product.price, c.[category_name], i.image,[dbo].[Product].category_id\n"
            + "FROM ([dbo].[Product] Inner Join [dbo].[Category] As c\n"
            + "On  [Product].category_id= c.category_id)\n"
            + "Inner Join [dbo].[ProductImage] As i\n"
            + "On Product.product_id = i.product_id\n"
            + "Where product_name like ?";

    public List<ProductDTO> getAllProducts() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    int categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public List<ProductDTO> getAllProductByCategoryId(int categoryID) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT_BY_CATEGORYID);
                ptm.setInt(1, categoryID);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public List<ProductDTO> getProductsWithPagging(int page, int PAGE_SIZE) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT_BY_PAGGINGSIZE);
                ptm.setInt(1, page);
                ptm.setInt(2, PAGE_SIZE);
                ptm.setInt(3, PAGE_SIZE);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    int categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public int getTotalProducts() throws SQLException {

        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(COUNT_ALL_PRODUCT);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return 0;
    }

    public ProductDTO getProductById(int productID) throws SQLException {
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT_BY_ID);
                ptm.setInt(1, productID);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    String image = rs.getString("image");
                    int categoryID = rs.getInt("category_id");
//                    product = new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, name, image, categoryID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return product;
    }
//    public int getTotalProducts() throws SQLException {
//
//        ProductDTO product = null;
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        ResultSet rs = null;
//
//        try {
//            conn = DBUtils.getConnection();
//            if (conn != null) {
//                ptm = conn.prepareStatement(COUNT_ALL_PRODUCT);
//
//                rs = ptm.executeQuery();
//                while (rs.next()) {
//                    return rs.getInt(1);
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (rs != null) {
//                rs.close();
//            }
//            if (ptm != null) {
//                ptm.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        }
//
//        return 0;
//    }

    public boolean delete(String productID) throws SQLException {
        boolean checkDelete = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, productID);
                ptm.setString(2, productID);
                ptm.setString(3, productID);
                checkDelete = ptm.executeUpdate() > 0;
            }
        } catch (Exception e) {

        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkDelete;
    }

    public boolean insert(ProductDTO product, ProductImageDTO productImage) throws SQLException {
        boolean checkInsert = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                // Insert Product
                ptm = conn.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
                ptm.setString(1, product.getName());
                ptm.setInt(2, product.getQuantity());
                ptm.setString(3, product.getStatus());
                ptm.setString(4, product.getDescription());
                ptm.setString(5, product.getCapacity());
                ptm.setString(6, product.getBrand());
                ptm.setFloat(7, product.getPrice());
                ptm.setInt(8, product.getCategoryID());
                checkInsert = ptm.executeUpdate() > 0;
                if (checkInsert) {
                    //Lay ID cua cai product vua insert vo
                    PreparedStatement ptm2 = conn.prepareStatement(GET_NEWEST_PRODUCT_INSERTED);
                    ResultSet rs = ptm2.executeQuery();
                    if (rs.next()) {
                        // Insert ID vua lay + link image vo table ProductImage
                        int newestKey = rs.getInt("product_id");
                        PreparedStatement ptm3 = conn.prepareStatement(INSERT2);
                        ptm3.setString(1, productImage.getImage());
                        ptm3.setInt(2, newestKey);
                        checkInsert = ptm3.executeUpdate() > 0;
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkInsert;
    }

    public boolean update(ProductDTO product, ProductImageDTO productImage) throws SQLException {
        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                // Update Product
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, product.getName());
                ptm.setInt(2, product.getQuantity());
                ptm.setString(3, product.getStatus());
                ptm.setString(4, product.getDescription());
                ptm.setString(5, product.getCapacity());
                ptm.setString(6, product.getBrand());
                ptm.setFloat(7, product.getPrice());
                ptm.setInt(8, product.getCategoryID());
                ptm.setInt(9, product.getProductID());
                checkUpdate = ptm.executeUpdate() > 0;
                if (checkUpdate) {
                    PreparedStatement ptm2 = conn.prepareStatement(UPDATE2);
                    ptm2.setString(1, productImage.getImage());
                    ptm2.setInt(2, product.getProductID());
                    checkUpdate = ptm2.executeUpdate() > 0;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkUpdate;
    }

    public List<ProductDTO> getListProducts() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("Select P.*,I.image\n"
                        + "from dbo.Product P Inner join dbo.ProductImage I ON P.product_id = I.product_id");
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    String image = rs.getString("image");
                    int categoryID = rs.getInt("category_id");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

}
