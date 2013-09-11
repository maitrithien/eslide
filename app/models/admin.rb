module Admin

	# Prefix table name
	# Using short name of table
	# e.g: admin_user => user
	# e.g: Admin::AdminUser => Admin::User
	def self.table_name_prefix
	    'admin_'
	end

  	# Class Admin.Guid
  	# Create unique key for table_id
  	class Guid
  		# key store
		attr_reader :key

		# Init Guid with key
		def initialize()
			#set key by hash unique value
			@key = Digest::SHA1.hexdigest(Time.now.to_s)
		end
  	end

end
