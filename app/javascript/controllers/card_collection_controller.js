import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["select", "form", "cardId", "numberOfCards", "submitButton"];
  
  connect() {
    const url = new URL(window.location.href);
    url.search = "";
    window.history.replaceState({}, document.title, url.toString());

    this.updateFormState();
    $(this.selectTarget).on("change", this.updateFormState.bind(this));
  }

  updateFormState() {
    const collectionId = $(this.selectTarget).val();
    const cardId = $(this.cardIdTarget).val();
    const numberOfCards = $(this.numberOfCardsTarget).val();

    if (collectionId) {
      $(this.formTarget).attr("action", `/card_collections/${collectionId}/add_card?card_id=${cardId}&card_count=${numberOfCards}`);
      $(this.submitButtonTarget).prop("disabled", false);
      $(this.submitButtonTarget).removeClass("bg-gray-600").addClass("bg-blue-600 hover:bg-blue-500");
    } else {
      $(this.formTarget).attr("action", "");
      $(this.submitButtonTarget).prop("disabled", true);
      $(this.submitButtonTarget).removeClass("bg-blue-600 hover:bg-blue-500").addClass("bg-gray-600");
    }
  }
}
