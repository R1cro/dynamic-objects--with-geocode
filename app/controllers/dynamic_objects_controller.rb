class DynamicObjectsController < ApplicationController
  def index
    @dynamic_object = DynamicObject.all
  end

  def show
    @dynamic_object = DynamicObject.find(params[:id])
  end

  def new
    dynamic_object_type = DynamicObjectType.find(params[:dynamic_object_type_id])
    @dynamic_object = DynamicObject.new(dynamic_object_type: dynamic_object_type)
  end

  def edit
    @dynamic_object = DynamicObject.find(params[:id])
  end

  def create
    @dynamic_object = DynamicObject.new(dynamic_object_params)
    if @dynamic_object.save
      redirect_to @dynamic_object, notice: 'Object was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @dynamic_object = DynamicObject.find(params[:id])
    if @dynamic_object.update_attributes(dynamic_object_params)
      redirect_to @dynamic_object, notice: 'Object was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @dynamic_object = DynamicObject.find(params[:id])
    @dynamic_object.destroy
    redirect_to dynamic_objects_url
  end

  private

  def dynamic_object_params
    params.require(:dynamic_object).permit!
  end

end
