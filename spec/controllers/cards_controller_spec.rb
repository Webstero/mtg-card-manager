RSpec.describe CardsController, type: :controller do
  describe "GET #index" do
    context "when params are present" do
      def mock_simple_filter(card)
        allow(::Mtg::Services::Cards::SimpleFilter).to receive(:call).and_return([card.id])
      end

      it "assigns @permitted_params" do
        card = create(:card)
        mock_simple_filter(card)

        get :index, params: { name: card.name }

        expect(assigns(:permitted_params)).to include(name: card.name)
      end

      it "fetches filtered cards" do
        card = create(:card)
        mock_simple_filter(card)

        get :index, params: { name: card.name }

        expect(assigns(:cards)).to include(card)
      end

      it "renders the index template" do
        card = create(:card)
        mock_simple_filter(card)

        get :index, params: { name: card.name }

        expect(response).to render_template(:index)
      end
    end

    context "when params are not present" do
      it "assigns @cards as an empty array" do
        card = create(:card)

        get :index

        expect(assigns(:cards)).to eq([])
      end
    end
  end

  describe "GET #show" do
    context "when the card exists" do
      it "assigns @card" do
        card = create(:card)

        get :show, params: { id: card.id }

        expect(assigns(:card)).to eq(card)
      end

      it "renders the show template" do
        card = create(:card)

        get :show, params: { id: card.id }

        expect(response).to render_template(:show)
      end
    end

    context "when the card does not exist" do
      it "raises an ActiveRecord::RecordNotFound error" do
        action = -> { get :show, params: { id: -1 } }

        expect { action.call }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
