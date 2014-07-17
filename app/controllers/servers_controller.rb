class ServersController < ApplicationController
  before_action :set_server, only: [:show, :edit, :update, :destroy]
  respond_to :json, :html
  skip_before_action :verify_authenticity_token

  def index
    @servers = Rails.cache.fetch(view_context.cache_key_for_servers) do
      all_servers = Server.all
      all_servers.to_a
    end
    respond_with @servers
  end

  def show
  end

  def create
    @server = Server.new(server_params)
    if @server.save
      #Rails.cache.delete('servers')
      render action: 'show', status: :created, location: @server
    else
      render json: @server.errors, status: :unprocessable_entity
    end
  end

  private
    def set_server
      @server = Server.find(params[:id])
    end

    def server_params
      params.permit(:name, :ip)
    end
end
