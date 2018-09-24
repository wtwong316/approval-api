=begin
Service Approval APIs

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
Rails.application.routes.draw do

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end

  add_swagger_route 'GET', '/templates', controller_name: 'template', action_name: 'list'
  add_swagger_route 'POST', '/templates', controller_name: 'template', action_name: 'create'
  add_swagger_route 'PUT', '/templates/{id}', controller_name: 'template', action_name: 'update'
  add_swagger_route 'GET', '/templates/{id}', controller_name: 'template', action_name: 'show'
  add_swagger_route 'DELETE', '/templates/{id}', controller_name: 'template', action_name: 'destroy'

  add_swagger_route 'GET', '/templates/{template_id}/workflows', controller_name: 'workflow', action_name: 'list_by_template'
  add_swagger_route 'POST', '/templates/{template_id}/workflows', controller_name: 'workflow', action_name: 'create'
  add_swagger_route 'GET', '/templates/{template_id}/workflows/{id}', controller_name: 'workflow', action_name: 'show'
  add_swagger_route 'PUT', '/templates/{template_id}/workflows/{id}', controller_name: 'workflow', action_name: 'update'
  add_swagger_route 'DELETE', '/templates/{template_id}/workflows/{id}', controller_name: 'workflow', action_name: 'destroy'
  add_swagger_route 'GET', '/workflows', controller_name: 'workflows', action_name: 'list'

  add_swagger_route 'GET', '/groups', controller_name: 'group', action_name: 'list'
  add_swagger_route 'POST', '/groups', controller_name: 'group', action_name: 'create'
  add_swagger_route 'GET', '/groups/{id}', controller_name: 'group', action_name: 'show'
  add_swagger_route 'DELETE', '/groups/{id}', controller_name: 'group', action_name: 'destroy'
  add_swagger_route 'PUT', '/groups/{id}', controller_name: 'group', action_name: 'update'

  add_swagger_route 'GET', '/workflows/{workflow_id}/requests', controller_name: 'request', action_name: 'list_by_workflow'
  add_swagger_route 'POST', '/workflows/{workflow_id}/requests', controller_name: 'request', action_name: 'create'
  add_swagger_route 'GET', '/workflows/{workflow_id}/requests/{id}', controller_name: 'request', action_name: 'show'
  add_swagger_route 'PUT', '/workflows/{workflow_id}/requests/{id}', controller_name: 'request', action_name: 'update'
  add_swagger_route 'DELETE', '/workflows/{workflow_id}/requests/{id}', controller_name: 'request', action_name: 'destroy'
end
