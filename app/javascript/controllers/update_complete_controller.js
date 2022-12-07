import { Controller } from "@hotwired/stimulus"

const flash = "<div class=\"alert alert-info alert-dismissible fade show m-1\" role=\"alert\">Medication successfully taken!<button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button></div>"
const alert_timeout_in_ms = 2000

// Connects to data-controller="update-complete"
export default class extends Controller {
  swapCard(event) {
    const csrf_token = document.querySelector("meta[name=csrf-token]").content
    const navbar = document.querySelector(".navbar")
    event.preventDefault();
    const url = event.currentTarget.href
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrf_token }
    }).then(response => response.text())
      .then(data => {
        console.log(data);
        this.element.outerHTML = data;
        navbar.insertAdjacentHTML("afterend", flash);
        setTimeout(() => {
          document.querySelector(".alert").remove();
        }, alert_timeout_in_ms);
      })
  }
}
