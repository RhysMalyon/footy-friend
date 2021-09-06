class LeaguePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def edit?
    true
  end

  def destroy?
    true
  end

  private

  def user_is_owner?
    record == user
  end
end
