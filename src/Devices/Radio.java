package src.Devices;

public class Radio implements Device {
    private boolean on = false;
    private int volume = 10;

    @Override
    public boolean isEnabled() {
        return on;
    }

    @Override
    public void enable() {
        on = true;
        System.out.println("Rádio: Ligado");
    }

    @Override
    public void disable() {
        on = false;
        System.out.println("Rádio: Desligado");
    }

    @Override
    public int getVolume() {
        return volume;
    }

    @Override
    public void setVolume(int volume) {
        if (volume > 100) this.volume = 100;
        else if (volume < 0) this.volume = 0;
        else this.volume = volume;
        System.out.println("Rádio: Volume alterado para " + this.volume + "%");
    }
}
