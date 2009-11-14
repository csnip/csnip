class AddUserAdminFlag < ActiveRecord::Migration
  class User < ActiveRecord::Base
    def to_s
      str = "#{self.name || self.login}"
      str << " <#{self.email}>" unless self.email.blank?
      str
    end
  end

  def self.up
    add_column :users, :admin, :boolean, :null => false, :default => false
    User.reset_column_information
    if User.count > 0
      new_admin = User.find(:first)
      say "Making #{new_admin} into an admin"
      unless new_admin.update_attribute(:admin, true)
        say "*** FAILED", true
      end
    else
      say "First user created will become an admin"
    end
  end

  def self.down
    remove_column :users, :admin
  end
end
