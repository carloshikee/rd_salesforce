class SalesforceController < ActionController::Base
  def ouath
  	render "salesforce/oauth"
  end	

  def authenticate
    provider = sanitize_provider(params[:options]['provider'])
    auth_params = {
      :display => params[:options]['display'],
      :immediate => params[:options]['immediate'],
      :scope => params[:options].to_a.flatten.keep_if{|v| v.start_with? "scope|"}.collect!{|v| v.sub(/scope\|/,"")}.join(" ")
    }
    auth_params = URI.escape(auth_params.collect{|k,v| "#{k}=#{v}"}.join('&'))
    redirect_to("/auth/#{provider}?#{auth_params}")
  end

  def sanitize_provider(provider = nil)
    provider.strip!    unless provider == nil
    provider.downcase! unless provider == nil
    provider = "salesforce" unless %w(salesforcesandbox salesforceprerelease databasedotcom).include? provider
    provider
  end  
end
