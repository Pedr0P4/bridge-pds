package src.Controllers;

import src.Devices.Device;

public class RemoteControl {

    protected Device device;

    public RemoteControl(Device device) {
        this.device = device;
    }

    public void togglePower() {
        System.out.println("Controle: Pressionou o botão de energia.");
        if(device.isEnabled()) {
            device.disable();
        } else {
            device.enable();
        }
    }

    public void volumeDown() {
        System.out.println("Controle: Diminuindo o volume.");
        device.setVolume(device.getVolume() - 5);
    }

    public void volumeUp() {
        System.out.println("Controle: Diminuindo o volume.");
        device.setVolume(device.getVolume() + 5);
    }
}
