package Car_Rental;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/car_rental_system";
    private static final String USERNAME = "car_rental";
    private static final String PASSWORD = "lloyd123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static List<Car> fetchAllCars() throws SQLException {
        List<Car> cars = new ArrayList<>();
        String query = "SELECT * FROM cars";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                cars.add(new Car(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("brand"),
                    rs.getInt("price"),
                    rs.getString("transmission"),
                    rs.getString("fuel"),
                    rs.getInt("seats"),
                    rs.getString("imagePath") // Include image path here
                ));
            }
        } catch (SQLException e) {
            System.err.println("Error fetching cars from database: " + e.getMessage());
            throw e;
        }
        return cars;
    }
}
