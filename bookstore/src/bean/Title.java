package bean;
//1
public class Title {
    private String isbn;
    private String title;
    private String copyright;
    private String imagefile;
    private int editionNumber;
    private int publisherId;
    private float price;

    public String getIsbn() {
        return isbn;
    }

    public String getTitle() {
        return title;
    }

    public String getCopyright() {
        return copyright;
    }

    public String getImagefile() {
        return imagefile;
    }

    public int getEditionNumber() {
        return editionNumber;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public float getPrice() {
        return price;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public void setImagefile(String imagefile) {
        this.imagefile = imagefile;
    }

    public void setEditionNumber(int editionNumber) {
        this.editionNumber = editionNumber;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
