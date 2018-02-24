import java.awt.Robot;
import java.awt.AWTException;
import java.awt.event.KeyEvent;

//TimeUnit.MILLISECONDS.sleep(10);

//for (int i = 0; i < 64; i = i==0 ? 1 : i*2) {
//	System.out.println(i + " - " + KeyEvent.getKeyModifiersText(i));
//}
////1 - Shift
////2 - Ctrl
////4 - Meta
////8 - Alt
////16 - Button1
////32 - Alt Graph

public class SermonTools {
	private Robot robot;

	public SermonTools() throws AWTException {
		robot = new Robot();
		robot.setAutoDelay(50);
	}

	public void moddedPress(int keyCode, int... modKeyCodes) {
		System.out.print("ModdedPress: ");
		for (int modKeyCode : modKeyCodes) {
			System.out.print(KeyEvent.getKeyText(modKeyCode));
			System.out.print(" + ");
		}
		System.out.print(KeyEvent.getKeyText(keyCode));
		for (int modKeyCode : modKeyCodes) {
			robot.keyPress(modKeyCode);
		}
		robot.keyPress(keyCode);
		robot.keyRelease(keyCode);
		for (int modKeyCode : modKeyCodes) {
			robot.keyRelease(modKeyCode);
		}
		System.out.println(" Done");
	}
}
