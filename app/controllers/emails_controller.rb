class EmailsController < ApplicationController
  def new
  end
  def create
       @email = Email.new(form_params)
    if @email.save
      redirect_to '/', :notice => "Your contact email has been saved"
    else
      render "new"
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to '/', :notice => "Your contact email has been removed"
  end

  private  
    def form_params
      request.parameters.slice(:email,:name,:message);
    end
end
