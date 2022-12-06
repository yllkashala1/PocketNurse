import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="sweet-alert"
export default class extends Controller {
  static targets = ["link"]

  static values = {
    medicationName: String,
  }

  popUp(event) {
    event.preventDefault();

    const options = {
      title: "Are you sure?",
      text: `This will remove ${this.medicationNameValue}`,
      icon: "warning",
      dangerMode: true,
      buttons: ["Cancel", "Remove"],
    }

    swal(options).then((value) => {
      if (value) {
        this.linkTarget.click();
      }
    })
  }
}
