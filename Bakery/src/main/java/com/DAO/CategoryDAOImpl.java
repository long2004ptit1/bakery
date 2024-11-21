package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.entity.Category;

public class CategoryDAOImpl implements CategoryDAO {
	private Connection conn;
	 public CategoryDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	 public boolean addCategory(Category category) {
	        boolean f = false;
	        try {
	            String sql = "INSERT INTO category (id, name, thumbnail, description, created_at, updated_at) VALUES (?, ?, ?, ?, NOW(), NOW())";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, category.getId());
	            ps.setString(2, category.getName());
	            ps.setString(3, category.getThumbnail());
	            ps.setString(4, category.getDescription());
	            

	            int i = ps.executeUpdate();
	            if (i == 1) {
	                f = true;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return f;
	    }
	 
	 @Override
	 public boolean isCategoryExists(String id) {
	     boolean exists = false;
	     try {
	         String sql = "SELECT id FROM category WHERE id = ?";
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ps.setString(1, id);
	         ResultSet rs = ps.executeQuery();

	         // Nếu có kết quả trả về, nghĩa là mã danh mục đã tồn tại
	         if (rs.next()) {
	             exists = true;
	         }

	     } catch (Exception e) {
	         e.printStackTrace();
	     }

	     return exists;
	 }

	@Override
	public boolean updateCategory(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteCategory(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Category getCategoryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
