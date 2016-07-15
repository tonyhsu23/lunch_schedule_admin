class Department < ActiveRecord::Base
  belongs_to :company

  def self.by_company(company_id)
    where(company_id: company_id)
  end
end
