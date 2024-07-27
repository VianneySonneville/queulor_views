import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "content" ]
  static classes = [ "show" ]

  toggle () {
    console.log("toggle");
    if (this.hasContentTarget) {
      this.contentTarget.toggle(this.hiddenClass)
    }
  }
}