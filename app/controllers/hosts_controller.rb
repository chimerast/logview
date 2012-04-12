class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:id])

    @logs = Log
      .where(hostname: @host.hostname,  service: @host.service)
      .order_by([[:$natural, :desc]])
      .limit(50)
  end
end
