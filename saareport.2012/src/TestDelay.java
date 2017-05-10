import java.sql.Timestamp;


public class TestDelay implements Runnable {

	/**
	 * @param args
	 */
	public void  run(){
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int i =1; i<=3; i++){
		
			try{
			Thread.sleep(i*1000);
			System.out.println("Delay for "+i+" seconds"+ new Timestamp(System.currentTimeMillis()));
			}catch(Exception e){
				e.printStackTrace();
			}
		}

	}

}
