defmodule MyAppWeb.ShopController do
  alias MyAppWeb.StripeHelpers
  alias MyAppWeb.ShippingController

  def charge_and_ship(user, billing_params) do
    %{id: user_id, shipping_address: shipping_address} = user

    %{"product" => product, "charge_amount" => amount_to_charge, "recipient" => charge_recipient, "source" => payment_source, "address_billing" => billing_address} = billing_params

    charge_params = %{"user_id" => user_id, "recipient" => charge_recipient, "payment_source" => payment_source, "billing_address" => billing_address}

    shipping_params = %{"user_id" => user_id, "shipping_address" => shipping_address, "product" => product}

    case StripeHelpers.charge_user(charge_params) do
      {:ok, response} ->
        # CODE FOR RECORDING CHARGE, NOTIFYING USER, ETC GOES HERE
        case ShippingController.ship_item(shipping_params) do
          {:ok, response} ->
            # CODE FOR SHIPPING RECORD, NOTIFYING USER, ETC GOES HERE
          {:error, reason} ->
            # ERROR HANDLING CODE GOES HERE
        end
      {:error, reason} ->
        # ERROR HANDLING CODE GOES HERE
    end

  end
end


defmodule MyAppWeb.StripeHelpers do

  def charge_user(params) do
    #LOGIC FOR CHARGING USER GOES HERE, SHOULD RETURN :ok OR :error
  end

end


defmodule MyAppWeb.ShippingController do

  def ship_to_user(gift_wrap_params, shipping_params) do
    # LOGIC FOR SHIP_TO_USER WITH TWO ARGS GOES HERE, SHOULD RETURN :ok OR :error
  end

  def ship_to_user(shipping_params) do
    #LOGIC FOR SHIPPING TO USER WITH ONE ARG GOES HERE, SHOULD RETURN :ok OR :error
  end

end
