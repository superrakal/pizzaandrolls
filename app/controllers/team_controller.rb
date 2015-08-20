class TeamController < ApplicationController
  def vacancy
    @vacancies = Vacancy.all
  end

  def workers
    @workers = Worker.all
  end

  def gallery
  end
end
