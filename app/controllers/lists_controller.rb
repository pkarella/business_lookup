class ListsController < ApplicationController

  def index
    if params[:name]
      @lists = List.search(params[:name])
    elsif
      params[:random_list]
      @lists = List.random_list
    else
      @lists = List.all
    end
      json_response(@lists)
  end

  def show
    @list = List.find(params[:id])
    json_response(@list)
  end


  def create
    @list = List.new(list_params)
    if @list.save
    json_response(@list, :created)
  else
    render status: 422, json: {
      message: "Creation of list did not meet required validations"
    }
  end
end

  def update
    @list = List.find(params[:id])
    @list.update!(list_params)
    render status: 200, json: {
      message: "Your business has successfully been updated."
    }
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
     render status: 200, json: {
      message: "Your business has successfully been destroyed."}
  end
end
  private

def list_params
    params.permit(:name, :address, :description)
  end
end
