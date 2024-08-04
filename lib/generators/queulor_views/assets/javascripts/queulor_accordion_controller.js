import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "content" ]
  static classes = [ "active", "display" ]

  toggle (event) {
    event.target.classList.toggle(this.activeClass)
    if (this.hasContentTarget && this.hasDisplayClass) {
      this.contentTarget.classList.toggle(this.displayClass)
    }
  }
}