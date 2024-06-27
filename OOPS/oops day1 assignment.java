public class Main {
    public static void main(String[] args) {
        // Instantiate a FlyingSuperhero object
        FlyingSuperhero hero = new FlyingSuperhero();
        
        // Demonstrate the functionality
        System.out.println("Name: " + hero.getName());
        System.out.println("Superpower: " + hero.getPowers());
        hero.fly();
    }
}

// Define the abstract superclass superhero
abstract class superhero {
    // Data members
    public String name = "Captain America";
    public String superpower = "Shield";
    public boolean inUniverse = true;
    public boolean ownsHammer = false;
    public int movies = 5;
    public int ownSeries = 3;
    public String realName = "Steve Rogers";
    private String secretIdentity = "Code-Red";
    protected String weakness = "Human";

    // Getter method for name
    public String getName() {
        return name;
    }

    // Setter method for superpower
    public void setPower(String newSuperpower) {
        this.superpower = newSuperpower;
    }

    // Abstract method to be implemented by subclasses
    public abstract String getPowers();
}

// Define the FlyingSuperhero subclass extending superhero
class FlyingSuperhero extends superhero {
    // Constructor for FlyingSuperhero
    public FlyingSuperhero() {
        // Call the constructor of the superclass (superhero)
        super();
    }

    // Implementing the abstract method from superhero
    @Override
    public String getPowers() {
        return superpower; // Return the superpower of the FlyingSuperhero
    }

    // Implementing the abstract method fly
    public void fly() {
        System.out.println("Flying Superhero is flying!");
    }
}
