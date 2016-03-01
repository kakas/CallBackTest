class Product < ActiveRecord::Base

  validates :title, presence: true

  before_validation do |product|
    puts  "before_validation"
  end

  after_validation do |product|
    puts  "after_validation"
  end

  before_save do |product|
    puts  "before_save"
  end

  # around_save do |product|
    # puts  "around_save"
  # end

  before_create do |product|
    puts  "before_create"
  end

  # around_create do |product|
    # puts  "around_create"
  # end

  after_create do |product|
    puts  "after_create"
  end

  after_save do |product|
    puts  "after_save"
  end

  after_commit do |product|
    puts  "after_commit"
  end

  after_rollback do |product|
    puts  "after_rollback"
  end

  before_update do |product|
    puts  "before_update"
  end

  # around_update do |product|
    # puts  "around_update"
  # end

  after_update do |product|
    puts  "after_update"
  end


  before_destroy do |product|
    puts  "before_destroy"
  end

  # around_destroy do |product|
    # puts  "around_destroy"
  # end

  after_destroy do |product|
    puts  "after_destroy"
  end

  after_find do |product|
    puts  "after_find"
  end

  after_initialize do |product|
    puts  "after_initialize"
  end

  after_touch do |product|
    puts  "after_touch"
  end

end
