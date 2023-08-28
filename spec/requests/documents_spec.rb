require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/documents', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Document. As you add validations to Document, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {}
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # DocumentsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Document.create! valid_attributes
      get documents_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      document = Document.create! valid_attributes
      get document_url(document), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Document' do
        expect do
          post documents_url,
               params: { document: valid_attributes }, headers: valid_headers, as: :json
        end.to change(Document, :count).by(0)
      end

      it 'renders a JSON response with the new document' do
        post documents_url,
             params: { document: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/pdf'))
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        {}
      end

      it 'updates the requested document' do
        document = Document.create! valid_attributes
        patch document_url(document),
              params: { document: new_attributes }, headers: valid_headers, as: :json
        document.reload
      end

      it 'renders a JSON response with the document' do
        document = Document.create! valid_attributes
        patch document_url(document),
              params: { document: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested document' do
      document = Document.create! valid_attributes
      expect do
        delete document_url(document), headers: valid_headers, as: :json
      end.to change(Document, :count).by(-1)
    end
  end
end
