import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.util.concurrent.TimeUnit;

public class SaveSermon {
	public static void main(String[] args) throws Exception {
		for (int i = 0; i < 5; i++) {
			TimeUnit.SECONDS.sleep(1);
			System.out.println(i);
		}
		SermonTools st = new SermonTools();
		
		st.moddedPress(KeyEvent.VK_S, KeyEvent.VK_CONTROL);
		TimeUnit.SECONDS.sleep(1);
		st.moddedPress(KeyEvent.VK_E, KeyEvent.VK_CONTROL, KeyEvent.VK_SHIFT);
		TimeUnit.SECONDS.sleep(1);
		st.moddedPress(KeyEvent.VK_ENTER);
		TimeUnit.SECONDS.sleep(1);
		st.moddedPress(KeyEvent.VK_ENTER);
		TimeUnit.SECONDS.sleep(1);
		st.moddedPress(KeyEvent.VK_ENTER);
		//st.moddedPress(KeyEvent.VK_F4, KeyEvent.VK_ALT);
	}
}
