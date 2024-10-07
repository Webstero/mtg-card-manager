class CardsController < ApplicationController
  include ViewsHelper

  def index
    @permitted_params = index_params.to_h
    @filters = ::Mtg::Models::Card::SIMPLE_FILTERS
    @cards = @permitted_params.present? ? fetch_filtered_cards(@permitted_params) : []
  end

  def show
    @permitted_params = show_params.to_h
    @card = ::Mtg::Models::Card.find(params[:id])
  end

  private

  def index_params
    params.permit(:name, :page, colors: [], types: [], rarities: [])
  end

  def show_params
    params.permit(:id, :name, :page, colors: [], types: [], rarities: [])
  end

  def fetch_filtered_cards(params)
    filtered_card_ids = fetch_filtered_card_ids(params)

    ::Mtg::Models::Card.includes(:card_identifier)
      .where(id: filtered_card_ids)
      .select("DISTINCT ON (name) *")
      .order(:name)
      .page(params[:page])
      .per(30)
  end

  def fetch_filtered_card_ids(params)
    ::Mtg::Services::Cards::SimpleFilter.call(params: filter_params(params))
  end

  def filter_params(params)
    {
      name: [params[:name]],
      colors: params[:colors],
      types: params[:types],
      rarity: params[:rarities]
    }
  end
end
