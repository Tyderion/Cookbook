class ComponentsController < ApplicationController
  def index
    @components = Component.all
  end

  def show
    @component = Component.find(params[:id])
  end

  def new
    @component = Component.new
    @ingredient = Ingredient.new
  end

  def create
    @component = Component.new(params[:component])
    if @component.save
      redirect_to @component, :notice => "Successfully created component."
    else
      render :action => 'new'
    end
  end

  def edit
    @component = Component.find(params[:id])
  end

  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(params[:component])
      redirect_to @component, :notice  => "Successfully updated component."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    redirect_to components_url, :notice => "Successfully destroyed component."
  end
end
