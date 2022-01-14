package bean;
//3
import java.util.List;

public interface TitleDao
{
    public List<Title> getTitles();//获得图书列表的方法声明
    public int add(Title titlebean); //添加图书的方法声明
    public int delete(String isbn); //删除图书的方法声明
    public int update(Title titlebean); //修改图书的方法声明
    public Title findByIsbn(String isbn); //根据书号查找图书的方法声明
}
