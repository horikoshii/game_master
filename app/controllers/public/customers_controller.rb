class Public::CustomersController < ApplicationController

  def show
    @customer=current_customer
    @comments = current_customer.comments.all
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    @customer.update(customer_params)
    redirect_to customer_path
  end

  def unsubscribe
    @customer=current_customer
  end

  def withdraw
     @customer=current_customer
     @customer.update(is_deleted: true)
     reset_session
     redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name,:profile,:image)
  end
end
