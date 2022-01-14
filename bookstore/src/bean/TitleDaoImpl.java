package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TitleDaoImpl implements TitleDao { //implement TitleDao interface
    private Connection connection;
    private PreparedStatement titlesQuery;
    private ResultSet results;

    // getTitles()
    public List<Title> getTitles() {
        //create titlesList to store all the books
        List<Title> titlesList = new ArrayList<Title>();
        // connect to the db to get result
        try {
            connection = DBcon.getConnction();
            System.out.println("连接成功!");
            titlesQuery = connection.prepareStatement(
                    "select isbn,title, editionNumber,copyright,publisherID,price from titles order by title");
            ResultSet results = titlesQuery.executeQuery();
            //encapsulate it as a book bean, and add it to the titlesList collection
            while (results.next()) {
                Title book = new Title(); // Create an instance of the Title class for each row of data
                book.setIsbn(results.getString("isbn"));
                book.setTitle(results.getString("title"));
                book.setEditionNumber(results.getInt("editionNumber"));
                book.setCopyright(results.getString("copyright"));
                book.setPublisherId(results.getInt("publisherID"));
//				book.setImageFile(results.getString("imageFile"));
                book.setPrice(results.getFloat("price"));
                // Add the book bean (book) to the List collection class (titlesList)
                titlesList.add(book);
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        } finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(titlesQuery);
            DBcon.closeConnection(connection);
        }
        return titlesList;
    }

    //add book to db
    public int add(Title titlebean) { // use bean instance insert into titles table
        int result = 0;
        try {
            connection = DBcon.getConnction();
            String sql = "insert into titles(isbn, title, editionNumber, ";
            sql += "copyright, publisherID, price) values(?,?,?,?,?,?)";
//            sql += "copyright, publisherID, imageFile, price) values(?,?,?,?,?,?,?)";
            titlesQuery = connection.prepareStatement(sql);
            titlesQuery.setString(1, titlebean.getIsbn());
            titlesQuery.setString(2, titlebean.getTitle());
            titlesQuery.setInt(3, titlebean.getEditionNumber());
            titlesQuery.setString(4, titlebean.getCopyright());
            titlesQuery.setInt(5, titlebean.getPublisherId());
//			titlesQuery.setString(6, titlebean.getImageFile());
            titlesQuery.setFloat(6, titlebean.getPrice());
            result = titlesQuery.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(titlesQuery);
            DBcon.closeConnection(connection);
        }
        return result;
        // if return 0, it means the insert is failed. Otherwise, is successful.
    }

    //delete
    public int delete(String isbn) { // delete in db according to its ISBN
        int result = 0;
        try {
            connection = DBcon.getConnction();
            String sql = "delete from titles where isbn='" + isbn + "'";
            titlesQuery = connection.prepareStatement(sql);
            result = titlesQuery.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(titlesQuery);
            DBcon.closeConnection(connection);
        }
        return result;
    }

    //update
    public int update(Title titlebean) { // use bean instance to update titles table
        int result = 0;
        try {
            connection = DBcon.getConnction();
            String sql = "update titles set title=?, editionNumber=?, ";
            sql += "copyright=?,publisherID=?,price=? where isbn=?";
            titlesQuery = connection.prepareStatement(sql);
            titlesQuery.setString(1, titlebean.getTitle());
            titlesQuery.setInt(2, titlebean.getEditionNumber());
            titlesQuery.setString(3, titlebean.getCopyright());
            titlesQuery.setInt(4, titlebean.getPublisherId());
//			titlesQuery.setString(5, titlebean.getImageFile());
            titlesQuery.setFloat(5, titlebean.getPrice());
            titlesQuery.setString(6, titlebean.getIsbn());
            result = titlesQuery.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(titlesQuery);
            DBcon.closeConnection(connection);
        }
        return result;
    }

    //findByIsbn(): find a book according to its ISBN and return bean

    public Title findByIsbn(String isbn) {
        Title book = null;
        try {
            connection = DBcon.getConnction();
            String sql = "SELECT * FROM titles where isbn='" + isbn + "'";
            titlesQuery = connection.prepareStatement(sql);
            results = titlesQuery.executeQuery();
            if (results.next()) {
                //Create an instance of the Book Bean (book) to encapsulate book information
                book = new Title();
                book.setIsbn(results.getString("isbn"));
                book.setTitle(results.getString("title"));
                book.setEditionNumber(results.getInt("editionNumber"));
                book.setCopyright(results.getString("copyright"));
                book.setPublisherId(results.getInt("publisherID"));
//				book.setImageFile(results.getString("imageFile"));
                book.setPrice(results.getFloat("price"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(titlesQuery);
            DBcon.closeConnection(connection);
        }
        return book; // return Title bean(book)
    }
}
