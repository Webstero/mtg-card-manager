class CardCollectionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @card_collections = current_user.card_collections.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
    card_collection = ::CardManagement::Models::CardCollection.find(params[:id])
    grouped_ids = card_collection.card_ids.tally

    @grouped_cards = grouped_ids.map do |card_id, count|
      {
        card: ::Mtg::Models::Card.includes(:card_identifier).find(card_id),
        count:
      }
    end
  end

  def create
    permitted_params = params.permit(:name)
    card_collection = ::CardManagement::Models::CardCollection.new(
      name: permitted_params[:name],
      user_id: current_user.id
    )

    if card_collection.save
      redirect_to card_collections_path, notice: "Collection created successfully."
    else
      flash[:error] = card_collection.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def add_card
    permitted_params = add_card_params
    card_collection = ::CardManagement::Models::CardCollection.find(permitted_params[:card_collection_id])
    card_id = permitted_params[:card_id]
    card_count = permitted_params[:card_count].to_i
    card_collection.card_ids += [card_id] * card_count

    if card_collection.save
      redirect_to card_collection_path(card_collection), notice: "Card added successfully."
    else
      flash[:error] = card_collection.errors.full_messages.to_sentence
    end
  end

  private

  def add_card_params
    params.permit(:card_collection_id, :card_id, :card_count)
  end
end
