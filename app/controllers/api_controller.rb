class ApiController < ApplicationController
  
  # GET /api
  # GET /api/communes.json
  def communes
  	if params[:region_id].present?
  		puts params[:region_id]
  		provinces = Province.where(region_id: params[:region_id])
  		communes = provinces.joins(:communes).select('communes.id,communes.name')
    	render json: communes
    else
    	render :json => {:result => 'ERROR'}
  	end
  end

  # GET /api/countries.json
  # Filtra Country x continente
  def countries
  	if params[:continent_id].present?
  		puts params[:continent_id]
  		valor = params[:continent_id]
  		countries = Country.joins(:country_category).where(status: true, continent_number: [valor]).select(:id,:name,:name_cr,:flag_image,:generic_image,:country_category_id,'country_categories.percentage_profile AS country_category_percentage_profile')
    	render json: countries
    else
    	render :json => {:result => 'ERROR'}
  	end
  end

  # GET /api/countries_three.json
  # Filtra 3 Countries por id
  def countries_three
  	countries = Country.joins(:country_category).where(status: true, id: [46,88,234]).select(:id,:name,:name_cr,:flag_image,:generic_image,:country_category_id,'country_categories.percentage_profile AS country_category_percentage_profile')
  	render json: countries
  end


  # GET /api/authentication.json
  # Autenticación de 1 User
  # URL ejemplo exitosa => http://localhost:3000/api/authentication.json?email=webmaster@infomigra.org&pass=MTIzNDU2\n
  def authentication  	
 
  	if params[:email].present? and params[:pass].present?
  		email = params[:email]
  		password = params[:pass]
  		puts email
  		puts password

  		user = User.find_for_database_authentication(:email => email)

  		if user.nil?

      		render :json => {:result => 'USUARIO NO EXISTE'} 
    	else

      		if user.valid_password? Base64.decode64(password)            
        		render :json => {
        			:result => 'EXITO', 
        			:email => email, 
        			:password => password, 
        			:token => user.api_key, 
        			:password_encode64 => password,
  					:password_decode64 => Base64.decode64(password)
  				}
      		else 
        		render :json => {:result => 'PASSWORD INCORRECTA'}
        	end

      	end

  	else
  		render :json => {:result => 'ERROR: INGRESE LOS DATOS'}
  	end

  end

  # GET /api/sign_up.json
  # Registrar 1 User
  # URL ejemplo exitosa => http://localhost:3000/api/sign_up?genero=M&pais=46&llegada_pais_id=1&tiempo_llegada_anio=1&tiempo_llegada_mes=1&situacion_actual_id=1&tiempo_situacion_actual_anio=1&tiempo_situacion_actual_mes=1&region=15&vinculo_familiar_id=3&email=test@info.cl&password=321321321&comuna_id=10
  def sign_up  
  	if 	params[:genero].present? and 
  		params[:pais].present? and
  		params[:llegada_pais_id].present? and
  		params[:tiempo_llegada_anio].present? and
  		params[:tiempo_llegada_mes].present? and
  		params[:situacion_actual_id].present? and
  		params[:tiempo_situacion_actual_anio].present? and
  		params[:tiempo_situacion_actual_mes].present? and
  		params[:region].present? and
  		params[:vinculo_familiar_id].present? and
  		params[:email].present? and
  		params[:password].present? and
  		params[:comuna_id].present?

  		gender = Gender.where(abbreviation_1: params[:genero])
  		country = Country.find(params[:pais])
  		situation_arrival_country = SituationsArrivalsCountry.find(params[:llegada_pais_id])
  		year_country = params[:tiempo_llegada_anio]
  		month_country = params[:tiempo_llegada_mes]
  		current_status = CurrentStatus.find(params[:situacion_actual_id])

  		render :json => {
  			:result => 'Nueva cuenta',
  			:gender => gender.name,
  			:country => country.name,
  			:situation_arrival_country => situation_arrival_country.name,
  			:year_country => year_country,
  			:month_country => month_country,
  			:current_status => current_status.name,
  			:password => params[:password]
  		}
  	else
  		render :json => {:result => 'ERROR: INGRESE LOS DATOS'}
  	end
  	
  end





end
