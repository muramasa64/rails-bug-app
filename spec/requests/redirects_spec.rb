require 'rails_helper'

describe "redirects" do
  let(:args) do
    {
      host: 'localhost',
      controller: 'redirects'
    }
  end

  example "redirect to root" do
    get url_for(args.merge(action: :show))
    expect(response).to redirect_to('/')
  end
end
