# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe '#index' do
        it 'does it successfully' do
            get :index
            expect(response).to have_http_status :ok
        end
    end

    describe '#show' do
        it 'does it successfully' do
            book = Book.create(full_name: 'Calvin Tantio', email: 'calvin.tantio@yahoo.com', password: Whatever)
            get :show, params: { id: user.id  }
            expect(response).to have_http_status :ok
        end
    end
end
