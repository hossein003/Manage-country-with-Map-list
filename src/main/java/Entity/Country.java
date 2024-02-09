package Entity;

public class Country {
    String id;
    String name;
    String population;
    String continent;
    String capital;

    public Country() {
    }

    public Country(String id, String name, String population, String continent, String capital) {
        this.id = id;
        this.name = name;
        this.population = population;
        this.continent = continent;
        this.capital = capital;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPopulation() {
        return population;
    }

    public void setPopulation(String population) {
        this.population = population;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }
}
