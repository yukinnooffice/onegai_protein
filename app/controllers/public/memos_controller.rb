class Public::MemosController < ApplicationController
	before_action :ensure_correct_customer, only: [:edit, :update, :destroy]

  def index
  	@memo = Memo.new
  	@customer = current_customer
    @memos = Memo.where(customer_id: current_customer).order(start_time: "desc").page(params[:page]).per(8)
  end

  def edit

  end

  def create
  	memo = Memo.new(memos_params)
    if  memo.customer_id = current_customer.id
    	memo.save
        flash[:notice] = "トレーニングを記録しました"
  	    redirect_to memos_path
    else
      render :index
    end
  end

  def update
    if @memo.update(memos_params)
       flash[:notice] = "トレーニングを更新しました"
       redirect_to memos_path
    else
      render :edit
    end
  end

  def destroy
	   @memo.destroy
	   flash[:notice] = "トレーニングを削除しました"
	   redirect_to memos_path
  end

  def ensure_correct_customer
  @memo = Memo.find(params[:id])
    unless @memo.customer == current_customer
      redirect_to memos_path
    end
  end

  private
    def memos_params
      params.require(:memo).permit(:customer_id,:set,:menu,:start_time,:rep,:weight)
    end
end
