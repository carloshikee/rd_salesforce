RdSalesforce::Application.routes.draw do
  match '/salesforce' => 'salesforce#ouath'
  match '/authenticate' => 'salesforce#authenticate'
end  
