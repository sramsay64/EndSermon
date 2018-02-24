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
		
		st.moddedPress(KeyEvent.VK_CONTROL, KeyEvent.VK_S);
		st.moddedPress(KeyEvent.VK_CONTROL, KeyEvent.VK_S);
		//st.moddedPress(KeyEvent.VK_ALT, KeyEvent.VK_F4);
	}
}
