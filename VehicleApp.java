// File: VehicleApp.java
interface Vehicle {
    void start();
    void stop();
    void accelerate(double speed);
    void decelerate(double speed);
}
// Abstract class for land vehicles
abstract class LandVehicle implements Vehicle {
    protected String make;
    protected String model;
    protected int year;
    protected double speed;
    protected boolean isMoving;

public static int numberOfVehicles = 0; // shared counter across all vehicles
// Constructor to initialize common properties of land vehicles
public LandVehicle(String make, String model, int year) {
    this.make = make;
    this.model = model;
    this.year = year;
    this.speed = 0;
    this.isMoving = false;
    numberOfVehicles++; // Increment the counter each time a new vehicle is created
}
// Method to start the vehicle
public void start() {
    isMoving = true;
    System.out.println(make + " " + model + " started.");
}
// Method to stop the vehicle
public void stop() {
    isMoving = false;
    speed = 0;
    System.out.println(make + " " + model + " stopped.");
}
// Method to accelerate the vehicle
public void accelerate(double value) {
    if (!isMoving) {
        System.out.println(make + " " + model + " is not moving. Start the vehicle first.");
        return;
    }
    speed += value;
    System.out.println(make + " " + model + " is accelerating to " + speed + " mph.");
}
// Method to decelerate the vehicle
public void decelerate(double value) {
    if (!isMoving) {
        System.out.println(make + " " + model + " is not moving. Start the vehicle first.");
        return;
    }
    speed -= value;
    if(speed < 0) speed = 0;
    System.out.println(make + " " + model + " is decelarating to " + speed + " mph");
    }
}    
// Car class extending LandVehicle
class Car extends LandVehicle {
    private int numberOfDoors;
    private boolean hasAirConditioner;

        public Car(String make, String model, int year, int numberOfDoors) {
            super(make, model, year);
            this.numberOfDoors = numberOfDoors;
        }
        // Method to set air conditioner property
        public void setAirConditioner(boolean hasAirConditioner) {
            this.hasAirConditioner = hasAirConditioner;
        }
    }
// Motorcycle class extending LandVehicle
class Motorcycle extends LandVehicle {
    private boolean hasHelmet;

    public Motorcycle(String make, String model, int year, boolean hasHelmet) {
        super(make, model, year);
        this.hasHelmet = hasHelmet;
    }
    // Method to set helmet propertyS
    public void setHelmet(boolean hasHelmet) {
        this.hasHelmet = hasHelmet;
    }
}
    // Main application class
    public class VehicleApp {
        public static void main(String[] args) {

            Car car1 = new Car("Myvi", "Perodua", 2020, 4);
            Car car2 = new Car("Maybach", "Mercedes-Benz", 2021, 4);
        
            Motorcycle m1 = new Motorcycle("Lembretta", "Yamaha", 2020, true);
            Motorcycle m2 = new Motorcycle("Hayabusa", "Suzuki", 2021, false);

            // Set specific properties for cars and motorcycles
            car1.setAirConditioner(true);
            car2.setAirConditioner(false);

            m1.setHelmet(true);
            m2.setHelmet(false);

            // Simulate actions for car1 and motorcycle m1
            car1.start();
            car1.accelerate(260);
            car1.decelerate(120);
            car1.stop();

            m1.start();
            m1.accelerate(150);
            m1.decelerate(60);
            m1.stop();

            // Display total number of vehicles created
            System.out.println("Total number of vehicles created: " + LandVehicle.numberOfVehicles);
    }
}