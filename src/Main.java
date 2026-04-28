import Devices.*;
import Controllers.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("=== Testando com a TV e Controle Básico ===");
        Device tv = new TV();
        RemoteControl basicRemote = new RemoteControl(tv);
        basicRemote.togglePower();
        basicRemote.volumeUp();

        System.out.println("\n=== Testando com o Rádio e Controle Avançado ===");
        Device radio = new Radio();
        AdvancedRemoteControl advancedRemote = new AdvancedRemoteControl(radio);
        advancedRemote.togglePower();
        advancedRemote.volumeUp();
        advancedRemote.mute();
        advancedRemote.togglePower();
    }
}
