class CulerityGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory 'features/step_definitions'
      m.file 'features/step_definitions/culerity_steps.rb', 'features/step_definitions/culerity_steps.rb'
      m.file 'features/support/env.rb', 'features/support/env.rb'
      m.file 'config/environments/culerity_continuousintegration.rb', 'config/environments/culerity_continuousintegration.rb'
      m.file 'config/environments/culerity_development.rb', 'config/environments/culerity_development.rb'

      m.gsub_file 'config/database.yml', /cucumber:.*\n/, "cucumber: &CUCUMBER\n"

      m.gsub_file 'config/database.yml', /\z/, "\nculerity_development:\n  <<: *CUCUMBER"
      m.gsub_file 'config/database.yml', /\z/, "\nculerity_continuousintegration:\n  <<: *CUCUMBER"
      
      m.file "lib/tasks/culerity.rake", "lib/tasks/culerity.rake"
      
      m.file 'public/javascripts/culerity.js', 'public/javascripts/culerity.js'
    end
  end

protected

  def banner
    "Usage: #{$0} culerity"
  end

end
