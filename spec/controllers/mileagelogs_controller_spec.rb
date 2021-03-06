require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe MileagelogsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Mileagelog. As you add validations to Mileagelog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MileagelogsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all mileagelogs as @mileagelogs" do
      mileagelog = Mileagelog.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:mileagelogs)).to eq([mileagelog])
    end
  end

  describe "GET #show" do
    it "assigns the requested mileagelog as @mileagelog" do
      mileagelog = Mileagelog.create! valid_attributes
      get :show, {:id => mileagelog.to_param}, valid_session
      expect(assigns(:mileagelog)).to eq(mileagelog)
    end
  end

  describe "GET #new" do
    it "assigns a new mileagelog as @mileagelog" do
      get :new, {}, valid_session
      expect(assigns(:mileagelog)).to be_a_new(Mileagelog)
    end
  end

  describe "GET #edit" do
    it "assigns the requested mileagelog as @mileagelog" do
      mileagelog = Mileagelog.create! valid_attributes
      get :edit, {:id => mileagelog.to_param}, valid_session
      expect(assigns(:mileagelog)).to eq(mileagelog)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Mileagelog" do
        expect {
          post :create, {:mileagelog => valid_attributes}, valid_session
        }.to change(Mileagelog, :count).by(1)
      end

      it "assigns a newly created mileagelog as @mileagelog" do
        post :create, {:mileagelog => valid_attributes}, valid_session
        expect(assigns(:mileagelog)).to be_a(Mileagelog)
        expect(assigns(:mileagelog)).to be_persisted
      end

      it "redirects to the created mileagelog" do
        post :create, {:mileagelog => valid_attributes}, valid_session
        expect(response).to redirect_to(Mileagelog.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved mileagelog as @mileagelog" do
        post :create, {:mileagelog => invalid_attributes}, valid_session
        expect(assigns(:mileagelog)).to be_a_new(Mileagelog)
      end

      it "re-renders the 'new' template" do
        post :create, {:mileagelog => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested mileagelog" do
        mileagelog = Mileagelog.create! valid_attributes
        put :update, {:id => mileagelog.to_param, :mileagelog => new_attributes}, valid_session
        mileagelog.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested mileagelog as @mileagelog" do
        mileagelog = Mileagelog.create! valid_attributes
        put :update, {:id => mileagelog.to_param, :mileagelog => valid_attributes}, valid_session
        expect(assigns(:mileagelog)).to eq(mileagelog)
      end

      it "redirects to the mileagelog" do
        mileagelog = Mileagelog.create! valid_attributes
        put :update, {:id => mileagelog.to_param, :mileagelog => valid_attributes}, valid_session
        expect(response).to redirect_to(mileagelog)
      end
    end

    context "with invalid params" do
      it "assigns the mileagelog as @mileagelog" do
        mileagelog = Mileagelog.create! valid_attributes
        put :update, {:id => mileagelog.to_param, :mileagelog => invalid_attributes}, valid_session
        expect(assigns(:mileagelog)).to eq(mileagelog)
      end

      it "re-renders the 'edit' template" do
        mileagelog = Mileagelog.create! valid_attributes
        put :update, {:id => mileagelog.to_param, :mileagelog => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested mileagelog" do
      mileagelog = Mileagelog.create! valid_attributes
      expect {
        delete :destroy, {:id => mileagelog.to_param}, valid_session
      }.to change(Mileagelog, :count).by(-1)
    end

    it "redirects to the mileagelogs list" do
      mileagelog = Mileagelog.create! valid_attributes
      delete :destroy, {:id => mileagelog.to_param}, valid_session
      expect(response).to redirect_to(mileagelogs_url)
    end
  end

end
