class SpinaGraphql::GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      current_spina_user: current_spina_user,
      current_theme: current_theme,
      current_account: current_account
    }

    result = ::SpinaGraphql::SpinaSchema.execute(
      query,
      variables: variables,
      context: context,
      operation_name: operation_name
    )

    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def current_theme
    @current_theme = ::Spina::Theme.find_by_name(current_account.theme)
  end
  helper_method :current_theme

  def current_spina_user
    @current_spina_user ||= ::Spina::User.where(id: session[:user_id]).first if session[:user_id]
  end
  helper_method :current_spina_user

  def current_account
    @current_account ||= ::Spina::Account.first
  end
  helper_method :current_account
end
