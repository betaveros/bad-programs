// inspired by an AP Computer Science problem from way back when
// (yes, there is an easier way to make a != a)
public class Irreflexive {
	static volatile int a;

	public static void main(String[] args) {
		new Thread(new Runnable(){
			public void run(){
				while (true){ a = -42; a = 1337; }
			}
		}).start();
		for (int i = 0; i < 1000000; i++){
			if (a != a) {
				System.out.println("!");
				System.exit(1);
			}
		}
		System.exit(0);
	}
}
