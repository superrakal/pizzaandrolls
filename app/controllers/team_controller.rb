class TeamController < ApplicationController
  def vacancy
    @vacancies = Vacancy.all
  end

  def workers
  end

  def gallery
  end
end
