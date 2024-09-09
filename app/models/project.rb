class Project < ApplicationRecord
    # Custom scopes ()Data base queries can add in to Modals trhan making controllers complex
    # Add defaults
    # Integrate validations
    # Integrate callbakes (call backs when record created when deleted kind of)
    # Integrate DB relationships

    has_many :tasks

    after_initialize :set_defaults

    # initial validations like cannot be empty while saving
    validates_presence_of :title, :description

    scope :almost_completed, -> { where('percent_complete > 75.0') }
    scope :still_needs_to_be_completed, -> { where('percent_complete < 75.0') }

    def set_defaults
        self.percent_complete ||= 0.0  #||= means if have a value it skips. if not assign the value
    end

end
