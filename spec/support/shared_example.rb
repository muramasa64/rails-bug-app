shared_examples "redirects controller" do |controller|
  let(:args) do
    {
      host: 'localhost',
      controller: controller
    }
  end

  describe "#show" do
    example "redirect to root" do
      get url_for(args.merge(action: :show))
      expect(response).to redirect_to('/')
    end
  end
end
