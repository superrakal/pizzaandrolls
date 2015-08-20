class TeamController < ApplicationController
  def vacancy
    @vacancies = Vacancy.all
  end

  def workers
    @workers = Worker.all
  end

  def gallery
    @images = GalleryImage.all
  end
end
