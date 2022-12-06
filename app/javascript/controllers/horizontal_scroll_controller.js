import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="horizontal-scroll"
export default class extends Controller {
  static targets = ["day"]

  connect() {
    this.element.scrollTo((this.dayTarget.clientWidth * 14) - 75, 0);
  }
}

