package lt.ku.java.orm;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import lt.ku.java.database.MySQLDatabase;
import lt.ku.java.models.Country;

public class CountryORM {

	public ArrayList<Country> getCountryList() {
		ArrayList<Country> countries=new ArrayList<>();
		try {
			MySQLDatabase db=MySQLDatabase.getDatabase();
			Statement statement=db.getConnection().createStatement();
			ResultSet result= statement.executeQuery("SELECT * FROM countries ORDER BY name ASC");
			while (result.next()) {
				int id=result.getInt("id");
				String name=result.getString("name");
				String code =result.getString("code");
				String region=result.getString("region");
				int population=result.getInt("population"); 
				countries.add(new Country(id, code, name, region, population));
			}
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
		return countries;
	}
	
	public Country addCountry(Country country) {
		try {
			MySQLDatabase db=MySQLDatabase.getDatabase();
			
			String sql="INSERT INTO countries (code, name, region, population ) VALUES (?, ?, ?, ?)";
			PreparedStatement statement=db.getConnection().prepareStatement(sql);
			statement.setString(1, country.getCode());
			statement.setString(2, country.getName());
			statement.setString(3, country.getRegion());
			statement.setInt   (4, country.getPopulation());
			System.out.println("Vykdoma užklausa: "+sql);
			statement.execute();
			return country;
			
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
		
		
		return country;
	}
	
	public Country getCountry(int id) {
		try {
			MySQLDatabase db=MySQLDatabase.getDatabase();
			String sql="SELECT * FROM countries WHERE id=?";
			PreparedStatement statement=db.getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet result= statement.executeQuery();
			result.next();
			String name=result.getString("name");
			String code =result.getString("code");
			String region=result.getString("region");
			int population=result.getInt("population"); 
			Country country=new Country(id, code, name, region, population);
			return country;
			
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
		return null;
	}
	
	public Country updateCountry(Country country) {
		try {
			MySQLDatabase db=MySQLDatabase.getDatabase();
			
			String sql="UPDATE countries SET code=?, name=?, region=?, population=? WHERE id=? ";
			PreparedStatement statement=db.getConnection().prepareStatement(sql);
			statement.setString(1, country.getCode());
			statement.setString(2, country.getName());
			statement.setString(3, country.getRegion());
			statement.setInt   (4, country.getPopulation());
			statement.setInt   (5, country.getId());
			System.out.println("Vykdoma užklausa: "+sql);
			statement.execute();
			return country;
			
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
		
		
		return country;
	}
	
	public void deleteCountry(int id) {
		try {
			MySQLDatabase db=MySQLDatabase.getDatabase();
			
			String sql="DELETE FROM countries  WHERE id=? ";
			PreparedStatement statement=db.getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			
			System.out.println("Vykdoma užklausa: "+sql);
			statement.execute();
			
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
		
	}

}
