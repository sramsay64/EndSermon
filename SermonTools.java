import java.awt.Robot;
import java.awt.AWTException;
import java.awt.event.KeyEvent;

//TimeUnit.MILLISECONDS.sleep(10);

public class SermonTools {
	private Robot robot;

	public SermonTools() throws AWTException {
		robot = new Robot();
		robot.setAutoDelay(50);
	}

	public void moddedPress(int modKeyCode, int keyCode) {
		System.out.print("ModdedPress: " + KeyEvent.getKeyModifiersText(modKeyCode) + " + " + KeyEvent.getKeyText(keyCode));
		robot.keyPress(modKeyCode);
		robot.keyPress(keyCode);
		robot.keyRelease(keyCode);
		robot.keyRelease(modKeyCode);
		System.out.println(" Done");
	}
}
