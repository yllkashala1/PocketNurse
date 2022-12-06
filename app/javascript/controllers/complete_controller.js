import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="complete"
export default class extends Controller {

  connect(){
    // console.log("connected")
  }

  taken(event){
    console.log(event.currentTarget)
    event.currentTarget.classList.toggle("active")
    document.querySelector(".fa-solid.fa-check").classList.toggle("active")
  }
}
