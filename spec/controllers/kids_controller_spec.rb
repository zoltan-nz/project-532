require 'spec_helper'

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

describe KidsController do

  # This should return the minimal set of attributes required to create a valid
  # Kid. As you add validations to Kid, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # KidsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all kids as @kids" do
      kid = Kid.create! valid_attributes
      get :index, {}, valid_session
      assigns(:kids).should eq([kid])
    end
  end

  describe "GET show" do
    it "assigns the requested kid as @kid" do
      kid = Kid.create! valid_attributes
      get :show, {:id => kid.to_param}, valid_session
      assigns(:kid).should eq(kid)
    end
  end

  describe "GET new" do
    it "assigns a new kid as @kid" do
      get :new, {}, valid_session
      assigns(:kid).should be_a_new(Kid)
    end
  end

  describe "GET edit" do
    it "assigns the requested kid as @kid" do
      kid = Kid.create! valid_attributes
      get :edit, {:id => kid.to_param}, valid_session
      assigns(:kid).should eq(kid)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kid" do
        expect {
          post :create, {:kid => valid_attributes}, valid_session
        }.to change(Kid, :count).by(1)
      end

      it "assigns a newly created kid as @kid" do
        post :create, {:kid => valid_attributes}, valid_session
        assigns(:kid).should be_a(Kid)
        assigns(:kid).should be_persisted
      end

      it "redirects to the created kid" do
        post :create, {:kid => valid_attributes}, valid_session
        response.should redirect_to(Kid.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kid as @kid" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kid.any_instance.stub(:save).and_return(false)
        post :create, {:kid => {  }}, valid_session
        assigns(:kid).should be_a_new(Kid)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kid.any_instance.stub(:save).and_return(false)
        post :create, {:kid => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested kid" do
        kid = Kid.create! valid_attributes
        # Assuming there are no other kids in the database, this
        # specifies that the Kid created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Kid.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => kid.to_param, :kid => { "these" => "params" }}, valid_session
      end

      it "assigns the requested kid as @kid" do
        kid = Kid.create! valid_attributes
        put :update, {:id => kid.to_param, :kid => valid_attributes}, valid_session
        assigns(:kid).should eq(kid)
      end

      it "redirects to the kid" do
        kid = Kid.create! valid_attributes
        put :update, {:id => kid.to_param, :kid => valid_attributes}, valid_session
        response.should redirect_to(kid)
      end
    end

    describe "with invalid params" do
      it "assigns the kid as @kid" do
        kid = Kid.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kid.any_instance.stub(:save).and_return(false)
        put :update, {:id => kid.to_param, :kid => {  }}, valid_session
        assigns(:kid).should eq(kid)
      end

      it "re-renders the 'edit' template" do
        kid = Kid.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kid.any_instance.stub(:save).and_return(false)
        put :update, {:id => kid.to_param, :kid => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kid" do
      kid = Kid.create! valid_attributes
      expect {
        delete :destroy, {:id => kid.to_param}, valid_session
      }.to change(Kid, :count).by(-1)
    end

    it "redirects to the kids list" do
      kid = Kid.create! valid_attributes
      delete :destroy, {:id => kid.to_param}, valid_session
      response.should redirect_to(kids_url)
    end
  end

end
