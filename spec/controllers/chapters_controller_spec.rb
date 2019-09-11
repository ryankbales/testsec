require 'rails_helper'

RSpec.describe ChaptersController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ChaptersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Chapter.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      chapter = Chapter.create! valid_attributes
      get :show, params: {id: chapter.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      chapter = Chapter.create! valid_attributes
      get :edit, params: {id: chapter.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Chapter" do
        expect {
          post :create, params: {chapter: valid_attributes}, session: valid_session
        }.to change(Chapter, :count).by(1)
      end

      it "redirects to the created chapter" do
        post :create, params: {chapter: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Chapter.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {chapter: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: new_attributes}, session: valid_session
        chapter.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: valid_attributes}, session: valid_session
        expect(response).to redirect_to(chapter)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested chapter" do
      chapter = Chapter.create! valid_attributes
      expect {
        delete :destroy, params: {id: chapter.to_param}, session: valid_session
      }.to change(Chapter, :count).by(-1)
    end

    it "redirects to the chapters list" do
      chapter = Chapter.create! valid_attributes
      delete :destroy, params: {id: chapter.to_param}, session: valid_session
      expect(response).to redirect_to(chapters_url)
    end
  end

end
