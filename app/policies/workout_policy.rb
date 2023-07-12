class WorkoutPolicy < ApplicationPolicy
  def update?
    user.role? :trainer or not record.published?
  end
end