package pe.edu.upc.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upc.dao.IArticle;
import pe.edu.upc.db.Database;
import pe.edu.upc.entity.Article;
import pe.edu.upc.entity.User;

public class Articledao implements IArticle {

    private Connection con = null;

    @Override
    public String create(Article o) throws SQLException {
        int rpta, idarticulo;
        con = Database.getConnection();
        con.setAutoCommit(false);
        String insert1 = "INSERT INTO article (numviews, title, score,text,user_iduser,ts_create,ts_update) " + "VALUES(?,?,?,?,?,?,?)";
        

        PreparedStatement prepare1 = con.prepareStatement(insert1);
        prepare1.setInt(1, o.getNumviews());
        prepare1.setString(2, o.getTitle());
        prepare1.setInt(3, o.getScore());
        prepare1.setString(4, o.getText());
        prepare1.setInt(5, o.getUser().getIduser());
        //revisar - 
        Date dt = new Date(o.getCreate_time().getTime());
        prepare1.setDate(6, dt);
        prepare1.setDate(7, dt);
        rpta = prepare1.executeUpdate();

        if (rpta > 0) {
            con.commit();
            con.close();
            return "Registro articulo ok";
        } else {
            con.rollback();
            con.close();
            return "Error articulo area ";
        }
        
    }

    @Override
    public String update(Article o) throws SQLException {
        int rpta;
        con = Database.getConnection();
        con.setAutoCommit(false);
        String update = "UPDATE article SET score=?,text=?,numviews=?,"
                       +"      ts_update=?,user_iduser=? WHERE idarticle=?";
        PreparedStatement prepare = con.prepareStatement(update);
        prepare.setInt(1, o.getScore());
        prepare.setString(2, o.getText());
        prepare.setInt(3, o.getNumviews());
        java.sql.Date createDate = new java.sql.Date(o.getCreate_time().getTime());
        
        java.sql.Date updateDate = new java.sql.Date(o.getUpdate_time().getTime());
        prepare.setDate(4,updateDate);
        prepare.setInt(5,o.getUser().getIduser());
        prepare.setInt(6, o.getIdarticle());
        rpta = prepare.executeUpdate();
        
        
        if (rpta > 0)
         {  
            con.commit();
            con.close();
            return "articulo actualizada correctamente";
         } 
         else 
         {        
            con.rollback();
            con.close();
            return "Error al actualizar Article";
         }
        
        
    }

    @Override
    public String delete(int id) throws SQLException {
        int rpta;
        con = Database.getConnection();
        con.setAutoCommit(false);
        String del = "DELETE FROM article WHERE idarticle=?";                
        PreparedStatement prepare = con.prepareStatement(del);        
        prepare.setInt(1, id);
        rpta = prepare.executeUpdate();
        
        if (rpta > 0) 
        { 
            con.commit();
            con.close();
            return "Articulo Eliminado";
        } 
        else 
        {       
            con.rollback();
            con.close();
            return "No se pudo eliminar el articulo";
        }
    }

    @Override
    public Article read(int id) throws SQLException {
                con = Database.getConnection();
                Article article = null ; 
                String select = "SELECT idarticle,score,text,numviews,ts_create,ts_update FROM article WHERE idarticle=?";
                PreparedStatement prepare = con.prepareStatement(select);
                prepare.setInt(1, id);
                ResultSet rs = prepare.executeQuery();
                if(rs.next()){
                article = new Article();
                article.setIdarticle(rs.getInt("idarticle"));
                article.setScore(rs.getInt("score"));
                article.setText(rs.getString("text"));
                article.setNumviews(rs.getInt("numviews"));
                article.setCreate_time(rs.getDate("ts_create"));
                article.setUpdate_time(rs.getDate("ts_update"));
                }

                con.close();
                return article;
    }

    @Override
    public List<Article> getAll() throws SQLException {
        con = Database.getConnection();
        Article article = null;
        List<Article> lista = new ArrayList<>();
        String select = "SELECT idarticle,score,text,numviews,ts_create,ts_update FROM article ";
        PreparedStatement prepare = con.prepareStatement(select);
        ResultSet rs = prepare.executeQuery();
        
        while (rs.next()) 
        {
            article = new Article();
            article.setIdarticle(rs.getInt("idarticle"));
            article.setScore(rs.getInt("score"));
            article.setText(rs.getString("text"));
            article.setNumviews(rs.getInt("numviews"));
            article.setCreate_time(rs.getDate("ts_create"));
            article.setUpdate_time(rs.getDate("ts_update"));
            lista.add(article);
        }
        
        con.close();
        return lista;
    }

    @Override
    public List<Article> getAllarticlesbyuser(int iduser) throws SQLException {
            con=Database.getConnection();
            Article article = null;
            User user = null;  
            List<Article> lista = new ArrayList<>();
            //esta query esta mal , hay que corregirla
            String select="SELECT a.idarticle, a.title, a.TEXT, a.score, a.user_iduser, numviews, ts_create, ts_update FROM article a WHERE u.iduser = ?";                   
            PreparedStatement prepare = con.prepareStatement(select);
            prepare.setInt(1, iduser);
            ResultSet rs = prepare.executeQuery();
             while (rs.next()) 
            {
                article = new Article();
                article.setIdarticle(rs.getInt("idarticle"));
                article.setTitle(rs.getString("title"));
                article.setText(rs.getString("TEXT"));
                article.setScore(rs.getInt("score"));
                User oU = new User();
                oU.setIduser(rs.getInt("user_iduser"));
                article.setUser(oU);
                article.setNumviews(rs.getInt("numviews"));
                article.setCreate_time(rs.getDate("ts_create"));
                article.setUpdate_time(rs.getDate("ts_update"));
                lista.add(article);
            }
             
             con.close();
             return lista;  
            
            
    }
    
    @Override
    public List<Article> getAllarticlesbytitle(String titulo) throws SQLException {
            con=Database.getConnection();
            Article article = null;
            User user = null;  
            List<Article> lista = new ArrayList<>();
            //esta query esta mal , hay que corregirla
            String select="SELECT idarticle, title, TEXT, score, user_iduser,numviews,ts_create,ts_update FROM article  WHERE title LIKE ?";                   
            PreparedStatement prepare = con.prepareStatement(select);
            prepare.setString(1, "%"+titulo+"%");
            ResultSet rs = prepare.executeQuery();
             while (rs.next()) 
            {
                article = new Article();
                article.setIdarticle(rs.getInt("idarticle"));
                article.setTitle(rs.getString("title"));
                article.setText(rs.getString("TEXT"));
                article.setScore(rs.getInt("score"));
                User oU = new User();
                 oU.setIduser(rs.getInt("user_iduser"));
                article.setUser(oU);                
                article.setNumviews(rs.getInt("numviews"));
                article.setCreate_time(rs.getDate("ts_create"));
                article.setUpdate_time(rs.getDate("ts_update"));
                lista.add(article);
            }
             
             con.close();
             return lista;  
            
            
    }
}
