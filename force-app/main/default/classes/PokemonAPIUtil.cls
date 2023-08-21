public with sharing class PokemonAPIUtil {

    private final static Integer OK_STATUS_CODE = 200;
    

     //This method returns access token
     public static String getPokemonAPIResponse(Integer pokemonNumber){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://pokeapi.co/api/v2/pokemon/'+ pokemonNumber);
        req.setMethod('GET');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Accept', 'application/json');

        Http http = new Http();
        HTTPResponse res = http.send(req);

        if (res.getStatusCode() == OK_STATUS_CODE) {
            return res.getBody();
        }
        return null;
     }

     public static void getPokemonInformation(Integer pokemonNumber) {
        String pokemonAPIResponse = getPokemonAPIResponse(pokemonNumber);

        /* parse data to concrete class to be able to map information into object */
        /*
            PokemonObjectJSON2Apex poke = new PokemonObjectJSON2Apex();
		    PokemonObject info = poke.parse(pokemonAPIResponse);
        */

     }
}