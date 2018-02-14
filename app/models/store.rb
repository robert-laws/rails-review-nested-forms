require 'pry'

class Store < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :customers, through: :orders

  accepts_nested_attributes_for :orders
  accepts_nested_attributes_for :customers

  validates :name, presence: true
  validates :location, presence: true

  def orders_attributes=(order_attributes)
    order_attributes.values.each do |order_attribute|
      customer = Customer.find_or_create_by(order_attribute["customers"])
      order = Order.new(customer: customer, quantity: order_attribute["quantity"])
      # self.customers << customer
      self.orders << order
    end
  end
end
