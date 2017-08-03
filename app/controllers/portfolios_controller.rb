class PortfoliosController < ApplicationController
  layout "portfolio"
  def index
   @portfolio_items = Portfolio.all
  end
  
  def angular
     @angular_portfolio_items = Portfolio.angular
  end
  
  def new
 @portfolio_items = Portfolio.new
 3.times { @portfolio_items.technologies.build }

  end
  
  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body,
    technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live' }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @portfolio_items = Portfolio.find(params[:id])

end

 def update
   
   @portfolio_items = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    @portfolio_items = Portfolio.find(params[:id])
  end
  
  def destroy
    
    #perform item lookup
    @portfolio_items = Portfolio.find(params[:id])
    
    #destroy/delete the record
        @portfolio_items.destroy
        
        #redirect
      respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully removed.' }
  end
end
  

end
