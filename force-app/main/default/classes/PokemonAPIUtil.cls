public with sharing class PokemonAPIUtil {

    private final static Integer OK_STATUS_CODE = 200;
    


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

    public static Pokemon__c getPokemonInformation(Integer pokemonNumber) {
        String pokemonAPIResponse = getPokemonAPIResponse(pokemonNumber);

        PokemonObjectJSON2Apex poke = new PokemonObjectJSON2Apex();
		PokemonObjectJSON2Apex pokemonInfo = poke.parse(pokemonAPIResponse);
  
        // new pokemon to be upserted into salesforce
        Pokemon__c pokemon = new Pokemon__c();
        pokemon.Id__c = pokemonInfo.id;
        pokemon.Name = pokemonInfo.name.toUpperCase();
        pokemon.Weight__c = pokemonInfo.weight;
        pokemon.Height__c = pokemonInfo.height;
        pokemon.Order__c = pokemonInfo.order;
        // sprites contain pokemon images
        System.debug('sprites: ' + pokemonInfo.sprites);
        pokemon.FrontDefaultDWURL__c = pokemonInfo.sprites.other.dream_world.front_default;
        
        // loop each stats, type, move and ability to create a new field or object
        System.debug('stats: ' + pokemonInfo.stats);
        System.debug('types: ' + pokemonInfo.types);
        System.debug('moves: ' + pokemonInfo.moves);
        System.debug('abilities: ' + pokemonInfo.abilities);

        return pokemon;

    }

    @AuraEnabled 
    public static void updatePokemonInformation(Integer pokemonNumber) {
        try {
            Pokemon__c pokemon = getPokemonInformation(pokemonNumber);
            if(Schema.sObjectType.Pokemon__c.isCreateable() && Schema.SObjectType.Pokemon__c.isUpdateable()) {
                Schema.SObjectType objectType = Schema.getGlobalDescribe().get('Pokemon__c');
                SObjectField field = objectType.getDescribe().fields.getMap().get('Id__c');
                Database.upsert(pokemon, field, true);
            }
        }catch(Exception e) {
            System.debug('** Cause: ' + e.getCause());
            System.debug('** StackTraceString: ' + e.getStackTraceString());
        }
    }
}