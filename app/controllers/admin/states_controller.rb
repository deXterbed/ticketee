class Admin::StatesController < Admin::BaseController
  before_filter :find_state, :except => [:new, :create, :index]
  def new
    @state = State.new
  end

  def create
    @state = State.new(params[:state])

    if @state.save
      flash[:notice] = 'State has been created.'
      redirect_to admin_states_path
    else
      flash[:error] = "State has not been created."
      render :action => "new"
    end
  end

  def update
    if @state.update_attributes(params[:state])
      flash[:notice] = 'State has been updated.'
      redirect_to admin_states_path
    else
      flash[:error] = 'State has not been updated.'
      render :action => "edit"
    end
  end

  def destroy
    @state.destroy
    flash[:notice] = "State has been deleted."
    redirect_to admin_states_path
  end

  private
  def find_state
    @state = State.find(params[:id])
  end
end
