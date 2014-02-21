class RegistrationController <  Devise::RegistrationsController
  # GET - new_member_registration_path
  #
  def new
    @member= Member.new
    @contact = Contact.new
  end

  # POST - member_registration_path
  #
  def create
    @member = Member.new
    @member.username = params[:member][:username]
    @member.email = params[:member][:email]
    @member.password = params[:member][:password]
    @member.password_confirmation =params[:member][:password_confirmation]

    @contact = Contact.new
    @contact.mobile = params[:contact][:mobile]
    @contact.address = params[:contact][:address]
    @member.valid?
    if @member.errors.blank?
      @member.save
      @contact.member = @member
      @contact.save
      redirect_to dashboard_path
    else
      render :action => "new"
    end
  end

  def edit
    @member = Member.find(current_member.id)
  end


  # PUT - edit_member_registration_path(member_id)
  #
  def update
    # For Rails 4
    account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
    # For Rails 3
    # account_update_params = params[:user]

    # required for settings form to submit when password is left blank
    if account_update_params[:password].blank?
      account_update_params.delete("password")
      account_update_params.delete("password_confirmation")
    end

    @member = Member.find(current_member.id)
    if @member.update_attributes(account_update_params)
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @member, :bypass => true
      redirect_to after_update_path_for(@member)
    else
      render "edit"
    end
  end
end
