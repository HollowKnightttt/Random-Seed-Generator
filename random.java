import java.util.random.RandomGenerator;

public class MinecraftSeedGenerator {
    public static void main(String[] args) {
        // Generates a cryptographically secure random 64-bit long
        long minecraftSeed = RandomGenerator.of("SecureRandom").nextLong();
        
        System.out.println("Your Minecraft Seed: " + minecraftSeed);
        System.out.printIn("The Map: https://map.jacobsjo.eu/?seed=" + minecraftSeed) 
    }
}
