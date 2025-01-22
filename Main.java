package Car_Rental;

public class Main {
    public static void main(String[] args) {
        try {
            
            Car[] cars = {
                new Car(1, "Honda Civic", "Honda", 1000, "Automatic", "Gasoline", 5, "carA.jpg"),
                new Car(2, "Toyota Hilux", "Toyota", 1500, "Manual", "Diesel", 5, "carB.jpg"),
                new Car(3, "Ford Van", "Ford", 1800, "Manual", "Diesel", 12, "carC.jpg"),
                new Car(4, "Ford Ranger Raptor", "Ford", 2000, "Automatic", "Diesel", 5, "carD.jpg"),
                new Car(5, "Mitsubishi Montero", "Mitsubishi", 2500, "Automatic", "Diesel", 7, "carE.jpg"),
                new Car(6, "Nissan Navarra 4x4", "Nissan", 3000, "Manual", "Diesel", 5, "carF.jpg")
            };

            // Initialize niya ug e show ang GUI with the Car array
            new CarRentalSystemGUI(cars);
        } catch (Exception e) {
            System.out.println("Error initializing the Car Rental System: " + e.getMessage());
        }
    }
}
