import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form", "cardName", "submitButton", "clearButton"];

  connect() {
    this.setupEventListeners();
  }

  setupEventListeners() {
    $(this.cardNameTarget).on("input", () => this.updateForm());
    $(this.clearButtonTarget).on("click", () => this.clearInput());
    $(this.formTarget).find('input[type="checkbox"]').on("change", () => this.updateForm());
  }

  async updateForm() {
    const params = this.getFormParams();

    try {
      const response = await fetch(`/?${params}`, {
        method: "GET",
        headers: {
          "X-Requested-With": "XMLHttpRequest",
          "Accept": "text/javascript",
        }
      });

      if (response.ok) {
        const html = await response.text();
        $("#cards-container").html(html);
      }
    } catch (error) {
      console.error("Error:", error);
    }
  }

  getFormParams() {
    const formData = new FormData(this.formTarget);
    return new URLSearchParams(formData).toString();
  }

  clearInput() {
    $(this.cardNameTarget).val("");
    this.updateForm();
  }

  showMessage(selector, message) {
    $(selector).text(message).fadeIn().delay(3000).fadeOut();
  }
}
