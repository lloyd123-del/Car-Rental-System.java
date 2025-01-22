package Car_Rental;

public class Car {
    private int id;
    private String name;
    private String brand;
    private int price;
    private String transmission;
    private String fuel;
    private int seats;
    private String imagePath;

    public Car(int id, String name, String brand, int price, String transmission, String fuel, int seats, String imagePath) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.transmission = transmission;
        this.fuel = fuel;
        this.seats = seats;
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getBrand() {
        return brand;
    }

    public int getPrice() {
        return price;
    }

    public String getTransmission() {
        return transmission;
    }

    public String getFuel() {
        return fuel;
    }

    public int getSeats() {
        return seats;
    }

    public String getImagePath() {
        return imagePath;
    }
}
