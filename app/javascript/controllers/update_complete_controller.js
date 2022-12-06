import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-complete"
export default class extends Controller {
  swapCard(event) {
    const csrf_token = document.querySelector("meta[name=csrf-token]").content
    event.preventDefault();
    const url = event.currentTarget.href
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrf_token }
    }).then(response => response.text())
      .then(data => {
        this.element.outerHTML = data;
      })
  }
}
