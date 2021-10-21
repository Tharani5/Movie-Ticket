
public class Moviedetails {
	int endSeatNumber;
	int collectionAmount;
	int requiredSeat;
	String moviename;
	String time;
	String moviedate;
	public Moviedetails(int endSeatNumber, int collectionAmount, int requiredSeat, String moviename, String time,
			String moviedate) {
		super();
		this.endSeatNumber = endSeatNumber;
		this.collectionAmount = collectionAmount;
		this.requiredSeat = requiredSeat;
		this.moviename = moviename;
		this.time = time;
		this.moviedate = moviedate;
	}
	public int getEndSeatNumber() {
		return endSeatNumber;
	}
	public int getCollectionAmount() {
		return collectionAmount;
	}
	
	public int getRequiredSeat() {
		return requiredSeat;
	}
	public String getMoviename() {
		return moviename;
	}
	public String getTime() {
		return time;
	}
	public String getMoviedate() {
		return moviedate;
	}	
}
