class User < ActiveRecord::Base
  authenticates_with_sorcery!
  after_save :backing_met_notification, if: :backing_met?

  attr_accessor :password, :password_confirmation

  has_many :projects
  has_many :pledges
  has_many :comments

  private
  def backing_met?
  	@project.pledges.sum(:amount) >= @project.goal
  end

  def backing_met_notification
  	UserMailer.backing_met(self).deliver
  end
end
