package src.Controllers;

import src.Devices.Device;

public class AdvancedRemoteControl extends RemoteControl {
    public AdvancedRemoteControl(Device device) {
        super(device);
    }

    public void mute() {
        System.out.println("Controle Avançado: Pressionou Mute.");
        device.setVolume(0);
    }
}
