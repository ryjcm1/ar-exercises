class Employee < ActiveRecord::Base
  belongs_to :store

  validate :first_name_cannot_be_empty, :last_name_cannot_be_empty, :hourly_rate_cannot_be_outside_range, :must_be_assigned_store

  def first_name_cannot_be_empty
    if first_name == ""
      errors.add(:first_name, "Can't be an empty string")
    end
  end

  def last_name_cannot_be_empty
    if last_name == ""
      errors.add(:last_name, "Can't be an empty string")
    end
  end

  def hourly_rate_cannot_be_outside_range
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "Must be within 40-200")
    end
  end

  def must_be_assigned_store
    if !store
      errors.add(:store, "Must be assigned to a store")
    end

  end
end
