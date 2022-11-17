import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-chat"
export default class extends Controller {
  connect() {
    console.log("Connecting")
  }

  send(e) {
    e.preventDefault()
    console.log("switch")

  }


}
