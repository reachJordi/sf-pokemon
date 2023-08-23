import { LightningElement } from 'lwc';
import updatePokemonInformation from '@salesforce/apex/PokemonAPIUtil.updatePokemonInformation';
import { reduceErrors } from 'c/ldsUtils';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RetrievePokemonInformation extends LightningElement {
    pokemonNumber = 1;
    pokemonNumberHandler(event) {
        this.pokemonNumber = event.target.value;
    }

    handleClick() {
        updatePokemonInformation({pokemonNumber : this.pokemonNumber})
        .then(result => {
            const event = new ShowToastEvent({
                title: "Success!",
                message: "Pokemon upserted!",
                variant: 'success'
            });
            this.dispatchEvent(event);
        })
        .catch(error => {
            const eventA = new ShowToastEvent({
                title: "Error!",
                message: reduceErrors(error)[0],
                variant: 'error'
            });
            this.dispatchEvent(eventA);
        });
    }
}