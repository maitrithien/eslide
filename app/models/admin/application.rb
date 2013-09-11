class Admin::Application < ActiveRecord::Base
	# Block model validations
	# validates_presences_of :[listing attributes], :message => "message" # required (not allow nullable)
	# validates_uniqueness_of :[listing attributes], :message => "message" # not allow duplicate values
	validates_uniqueness_of :application_id, :message => "Application Id must be required"

	# Block event handlers
	# before_create :[listing functions] # do something before added an new object
	# before_save :[listing functions] # do something before update an object
	# after_create :[listing functions] # do something after added an new object
	# after_save :[listing functions] # do something after update an object
	before_create :create_application_key
	

	# Block public non-static data processing methods
	# def processing
	#	# do something...
	# end

	# Block public static data processing methods
	# def self.processing
	#	# do something...
	# end

	# Block public handler features
	def create_appplication_key
		# set guid key for current application_id
		# self.application_id = Admin::Guid.new.key
		@application_id = Admin::Guid.new.key
	end

	# Block protected/private methods
	# protected
end
