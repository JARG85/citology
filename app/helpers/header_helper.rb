module HeaderHelper
  def header_logeable
    if paciente_signed_in?
      render 'shared/header_login'
    else
      render 'shared/header'
    end
  end

end