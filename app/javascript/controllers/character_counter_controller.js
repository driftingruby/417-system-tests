import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="character-counter"
export default class extends Controller {
  static targets = ['input', 'counter'];

  initialize() {
    this.update = this.update.bind(this);
  }

  connect() {
    this.update();
    this.inputTarget.addEventListener('input', this.update);
  }

  disconnect() {
    this.inputTarget.removeEventListener('input', this.update);
  }

  update() {
    this.counterTarget.innerHTML = this.count.toString();
  }

  get count() {
    return Math.max(this.maxLength - this.inputTarget.value.length, 0);
  }

  get maxLength() {
    return this.inputTarget.maxLength;
  }
}
