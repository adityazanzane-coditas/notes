interface Hero {
    void usePower();
    void save();
}

class Superman implements Hero {
    @Override
    public void usePower() {
        System.out.println("Superman uses super strength to save people!");
    }

    @Override
    public void save() {
        System.out.println("Superman saves people from disasters!");
    }
}

class Spiderman implements Hero {
    @Override
    public void usePower() {
        System.out.println("Spiderman uses his web-ability to swing around");
    }

    @Override
    public void save() {
        System.out.println("Spiderman saves friends and people from enemies");
    }
}

public class Main {
    public static void main(String[] args) {
        Hero superman = new Superman();
        System.out.println("Superman:");
        superman.usePower();
        superman.save();
        
        System.out.println();
        
        Hero spiderman = new Spiderman();
        System.out.println("Spiderman:");
        spiderman.usePower();
        spiderman.save();
    }
}
