package lt.ku.java.models;

public class Country {
	private Integer id;
	private String code;
	private String name;
	private String region;
	private Integer population;
	
	public Country() {
		
	}

	public Country(Integer id, String code, String name, String region, Integer population) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.region = region;
		this.population = population;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public Integer getPopulation() {
		return population;
	}

	public void setPopulation(Integer population) {
		this.population = population;
	}
	

}
