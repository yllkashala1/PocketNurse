import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="horizontal-scroll"
export default class extends Controller {
  static targets = ["day", "selectedDate"]

  connect() {
    const position = this.selectedDateTarget.dataset.index;
    const dayWidth = this.dayTarget.clientWidth;
    console.log(dayWidth * position);
    this.element.scrollTo((dayWidth * (position - 3)) + 16, 0);
  }
}
