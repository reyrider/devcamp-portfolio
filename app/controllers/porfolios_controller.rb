class PorfoliosController < ApplicationController
    def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @porfolio_item, notice: 'porfolio_item was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @porfolio_item.errors, status: :unprocessable_entity }
      end
    end
    end
    
    def new
        @porfolio_item=Portfolio.new
    end
end
