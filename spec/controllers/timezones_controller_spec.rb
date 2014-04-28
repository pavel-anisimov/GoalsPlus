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

describe TimezonesController do

  # This should return the minimal set of attributes required to create a valid
  # Timezone. As you add validations to Timezone, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TimezonesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all timezones as @timezones" do
      timezone = Timezone.create! valid_attributes
      get :index, {}, valid_session
      assigns(:timezones).should eq([timezone])
    end
  end

  describe "GET show" do
    it "assigns the requested timezone as @timezone" do
      timezone = Timezone.create! valid_attributes
      get :show, {:id => timezone.to_param}, valid_session
      assigns(:timezone).should eq(timezone)
    end
  end

  describe "GET new" do
    it "assigns a new timezone as @timezone" do
      get :new, {}, valid_session
      assigns(:timezone).should be_a_new(Timezone)
    end
  end

  describe "GET edit" do
    it "assigns the requested timezone as @timezone" do
      timezone = Timezone.create! valid_attributes
      get :edit, {:id => timezone.to_param}, valid_session
      assigns(:timezone).should eq(timezone)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Timezone" do
        expect {
          post :create, {:timezone => valid_attributes}, valid_session
        }.to change(Timezone, :count).by(1)
      end

      it "assigns a newly created timezone as @timezone" do
        post :create, {:timezone => valid_attributes}, valid_session
        assigns(:timezone).should be_a(Timezone)
        assigns(:timezone).should be_persisted
      end

      it "redirects to the created timezone" do
        post :create, {:timezone => valid_attributes}, valid_session
        response.should redirect_to(Timezone.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved timezone as @timezone" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timezone.any_instance.stub(:save).and_return(false)
        post :create, {:timezone => { "name" => "invalid value" }}, valid_session
        assigns(:timezone).should be_a_new(Timezone)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timezone.any_instance.stub(:save).and_return(false)
        post :create, {:timezone => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested timezone" do
        timezone = Timezone.create! valid_attributes
        # Assuming there are no other timezones in the database, this
        # specifies that the Timezone created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Timezone.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => timezone.to_param, :timezone => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested timezone as @timezone" do
        timezone = Timezone.create! valid_attributes
        put :update, {:id => timezone.to_param, :timezone => valid_attributes}, valid_session
        assigns(:timezone).should eq(timezone)
      end

      it "redirects to the timezone" do
        timezone = Timezone.create! valid_attributes
        put :update, {:id => timezone.to_param, :timezone => valid_attributes}, valid_session
        response.should redirect_to(timezone)
      end
    end

    describe "with invalid params" do
      it "assigns the timezone as @timezone" do
        timezone = Timezone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timezone.any_instance.stub(:save).and_return(false)
        put :update, {:id => timezone.to_param, :timezone => { "name" => "invalid value" }}, valid_session
        assigns(:timezone).should eq(timezone)
      end

      it "re-renders the 'edit' template" do
        timezone = Timezone.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timezone.any_instance.stub(:save).and_return(false)
        put :update, {:id => timezone.to_param, :timezone => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested timezone" do
      timezone = Timezone.create! valid_attributes
      expect {
        delete :destroy, {:id => timezone.to_param}, valid_session
      }.to change(Timezone, :count).by(-1)
    end

    it "redirects to the timezones list" do
      timezone = Timezone.create! valid_attributes
      delete :destroy, {:id => timezone.to_param}, valid_session
      response.should redirect_to(timezones_url)
    end
  end

end
