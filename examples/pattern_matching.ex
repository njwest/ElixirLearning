# Normally, each of these three modules (declared with defmodule) would be in a separate file
defmodule MyAppWeb.ShopController do
  alias MyAppWeb.StripeHelpers
  alias MyAppWeb.ShippingController
  # The above can also be written as alias MyAppWeb.{StripeHelpers, ShippingController}

  # NOTE `alias` aliases a module so we don't have to type the entire
  # module address, ie: aliasing, we can just do StripeHelpers.some_function()
  # instead of MyAppWeb.StripeHelpers.some_function()

  def charge_and_ship(user, billing_params) do
    # pattern match variables off of user + billing_params in lines 14 & 16
    %{id: user_id, shipping_address: shipping_address} = user

    %{"product" => product, "charge_amount" => amount_to_charge, "recipient" => charge_recipient, "source" => payment_source, "address_billing" => billing_address} = billing_params

    # pattern match variables from user + billing_params into new maps, charge_params & shipping params
    charge_params = %{"user_id" => user_id, "recipient" => charge_recipient, "payment_source" => payment_source, "billing_address" => billing_address}

    shipping_params = %{"user_id" => user_id, "shipping_address" => shipping_address, "product" => product}

    # use a case statement to run charge_params map through charge_user.
    # if charge_user returns :ok, run ship_item with shipping_params, otherwise do something
    # with the reason from the :error tuple
    case StripeHelpers.charge_user(charge_params) do
      {:ok, response} ->
        # make a record of the charge in DB or something
        # ship the item
        case ShippingController.ship_item(shipping_params) do
          {:ok, response} ->
            # make record of the shipment, notify customer, etc
          {:error, reason} ->
            # log reason for shipping function failure, alert someone, etc
        end
      {:error, reason} ->
        # log the error, flag the charge as failed, etc
    end

  end
end


defmodule MyAppWeb.StripeHelpers do

  def charge_user(params) do
    # Some logic to charge the user via the map passed through as (params)
    # return {:ok, response} and {:error, reason} or some variation
  end

end


defmodule MyAppWeb.ShippingController do

  def ship_to_user(shipping_params) do
    # Some logic to ship an item to a customer
    # return {:ok, response} and {:error, reason} or some variation
  end

end
