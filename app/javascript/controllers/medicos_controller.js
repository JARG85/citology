import { Controller } from "@hotwired/stimulus"
import { get } from '@rails/request.js'

// Connects to data-controller="medicos"
export default class extends Controller {
  static targets = ['medicoSelect']
  change(event) {
    let hora = event.target.selectedOptions[0].value;
    let target = this.medicoSelectTarget.id
    console.log(hora);
    
    get(`asignacion/get_medicos?target=${target}&hour=${hora}`, {
      responseKind: "turbo-stream"
    })
  }
}
