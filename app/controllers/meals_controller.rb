class MealsController < ApplicationController
    # o before action executa um método antes das funções, é muito utilizado pra fazer validação se o usuário está logado ou como  nesse caso para setar o valor da variável @meal
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  # A action index deve retornar todos os meals
  def index
    @meals = Meal.all
    render json:@meals, status: 200
  end

  # GET /meals/:id
  # A action show deve retornar somente o meal do :id especificado na rota 
  def show
    render json:@meal, status: 200
  end

  # POST /meals
  # A action create irá criar no banco de dados um novo meal com os paramêtros que vem no BODY da requisição
  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      render json:@meal, status: 201
    else
      render json:@Meal.errors, status: :unprocessable_entity
    end   
  end

  # PATCH/PUT /meals/:id
  # A action update deve atualizar os dados do book de :id especificado na rota com os parâmetros que vem do BODY da requisição
  def update
    if @Meal.update(meal_params)
      render json: @meal, status: 200
    else
      render json: @Meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  #A action destroy deve apagar do banco de dados o meal de :id especificado na rota
  
  def destroy
    @meal.destroy
  end

  private
    # Um método privado para pegar o parâmetro da rota dar um find do objeto no banco de dados e setar ele em @book. Criamos esse método pois seguimos a convenção DRY do rails e nela fala para não repetimos o código, então como iremos utilizar essa função em show, update e destroy isso é uma boa prática 
  def set_meal
    @meal = Meal.find(params[:id])
  end

    # Aqui utilizamos os Strong Parameters do rails, essa é uma boa pratica pois aqui dizemos quais parâmetros que vem do BODY da requisição nós permitimos enviar para a model criar no banco de dados. 
  def meal_params
    params.require(:meal).permit( :name, :description, :price, :available )
  end
  
end