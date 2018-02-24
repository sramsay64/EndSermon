import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.util.concurrent.TimeUnit;

class EndSermon {
	
	static Robot r;
	
	public static void moddedPress(int modKeyCode, int keyCode) {
		System.out.print("ModdedPress: " + KeyEvent.getKeyModifiersText(modKeyCode) + " + " + KeyEvent.getKeyText(keyCode));
		r.keyPress(modKeyCode);
		r.keyPress(keyCode);
		r.keyRelease(keyCode);
		r.keyRelease(modKeyCode);
		System.out.println(" Done");
	}
	
	public static void main(String[] args) throws Exception {
		r = new Robot();
		r.setAutoDelay(50);
		
		for (int i = 0; i < 5; i++) {
			TimeUnit.SECONDS.sleep(1);
			System.out.println(i);
		}
		
		moddedPress(KeyEvent.VK_CONTROL, KeyEvent.VK_S);
		moddedPress(KeyEvent.VK_ALT, KeyEvent.VK_F4);
	}
}
