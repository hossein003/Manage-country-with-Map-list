package DAO;

import Entity.Country;

import java.util.*;
import java.util.zip.CheckedOutputStream;

public class CountryDao {
    Map<String, Country> countries = new TreeMap<String, Country>();
    Random rnd = new Random();

    public Country save(Country country){
        country.setId(String.valueOf(rnd.nextInt()));
        countries.put(country.getId(), country);
        return country;
    }

    public Country update(Country country){
        countries.put(country.getId(),country);
        return country;
    }

    public Country delete(Country country){
        countries.remove(country.getId());
        return country;
    }

    public List<Country> findAll(){
        return new ArrayList<Country>(countries.values());
    }

    public List<Country> query(Country country){
        List<Country> result = new ArrayList<>();
        for(Country entity:findAll()){
            if(country.getName()!=null && !country.getName().isEmpty() && entity.getName().contains(country.getName())){
                result.add(entity);
            }else if(country.getCapital()!=null &&  !country.getCapital().isEmpty() && entity.getCapital().contains(country.getCapital())){
                result.add(entity);
            }else if(country.getContinent()!=null && !country.getContinent().isEmpty() && entity.getContinent().contains(country.getContinent())){
                result.add(entity);
            }
        }
        return result;
    }

    public Country findById(String id){
        return countries.get(id);
    }

}
