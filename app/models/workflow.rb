=begin
Insights Service Approval APIs

APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end


class Workflow < ApplicationRecord
  belongs_to :template
  has_many :requests
  has_many :workflowgroups
  has_many :groups, -> { order(created_at: :asc) }, through: :workflowgroups

  validates_presence_of :name
end
