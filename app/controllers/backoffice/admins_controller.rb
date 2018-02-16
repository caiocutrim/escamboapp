class Backoffice::AdminsController < BackofficeController
	def index
		@admins = Admin.all
	end
	def new
		@admin = Admin.new
	end
	def create
		if @admin.save
			redirect_to backoffice_admins_path, notice: 'O adminstrador (#{@admin.email}) foi criado'
		else
			render :new
		end
	end
	def edit

	end
	def update
		if @admin.update(params_admin)
			redirect_to backoffice_admins_path, notice: 'O adminstrador (#{@admin.email}) foi atualizado'
		else
			render :edit
		end
	end
	private
	def set_category
		@admins = Admin.find(params[:id])
	end
	def params_admin
		params.require(:admin).permit(:email, :password, :password_confirmation)
	end
end
