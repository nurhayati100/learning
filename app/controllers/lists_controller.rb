class ListsController < ApplicationController

  #  GET - lists_path
  #
  def index
    @lists = List.all
  end

  # GET - new_list_path
  #
  def new
    @list = List.new
  end

  # POST - lists_path
  #
  def create

    @list = List.new(list_params.merge(:member_id => current_member.id))

    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  # GET - edit_list_path(list_id)
  #
  def edit
    @list = List.find(params[:id])
  end

  # PUT - list_path(list_id)
  #
  def update
    @list = List.find(params[:id])

    if @list.update(list_params.merge(:member_id => current_member.id))
      redirect_to @list
    else
      render 'edit'
    end
  end

  # GET - list_path(list_id)
  #
  def show
    @list = List.find(params[:id])
  end

  # DELETE - list_path(list_id)
  #
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private

    # filter list params
    #
    def list_params
      params.require(:list).permit(:title, :category, :body, :published, :attachment)
    end
    # def my_list
    #   @mylist ||= current_member.list.find params[:id]
    # end
end
