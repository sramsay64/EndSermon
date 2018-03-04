import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.util.concurrent.TimeUnit;

class EndSermon {
	public static void main(String[] args) throws Exception {
		for (int i = 0; i < 2; i++) {
			TimeUnit.SECONDS.sleep(1);
			System.out.println(i);
		}
		SermonTools st = new SermonTools();
		
		st.moddedPress(KeyEvent.VK_F4, KeyEvent.VK_ALT);
	}
}
