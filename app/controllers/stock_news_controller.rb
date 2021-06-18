class StockNewsController < ApplicationController
  before_action :set_stock_news, only: %i[ show edit update destroy ]

  # GET /stock_news or /stock_news.json
  def index
    @stock_news = StockNews.all
  end

  # GET /stock_news/1 or /stock_news/1.json
  def show
  end

  # GET /stock_news/new
  def new
    @stock_news = StockNews.new
  end

 

  # POST /stock_news or /stock_news.json
  def create
    @stock_news = StockNews.new(stock_news_params)

    respond_to do |format|
      if @stock_news.save
        format.html { redirect_to @stock_news, notice: "Stock news was successfully created." }
        format.json { render :show, status: :created, location: @stock_news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stock_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_news/1 or /stock_news/1.json
  def update
    respond_to do |format|
      if @stock_news.update(stock_news_params)
        format.html { redirect_to @stock_news, notice: "Stock news was successfully updated." }
        format.json { render :show, status: :ok, location: @stock_news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stock_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_news/1 or /stock_news/1.json
  # def destroy
  #   @stock_news.destroy
  #   respond_to do |format|
  #     format.html { redirect_to stock_news_index_url, notice: "Stock news was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_news
      @stock_news = StockNews.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_news_params
      params.fetch(:stock_news, {})
    end
end
