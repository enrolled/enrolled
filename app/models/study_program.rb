class StudyProgram < ActiveRecord::Base
  belongs_to :higher_education_institution
  belongs_to :type_of_study
  belongs_to :enrollment
  has_many :study_program_modes

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end