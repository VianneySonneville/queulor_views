import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "content" ]
  static classes = [ "display" ]

  toggle () {
    if (this.hasContentTarget && this.hasDisplayClass) {
      this.contentTarget.classList.toggle(this.displayClass)
    }
  }
}