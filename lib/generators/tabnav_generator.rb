class TabnavGenerator < Rails::Generator::NamedBase
	attr_accessor :name

	def initialize(runtime_args, runtime_options={})
		super
		if args[0].nil?
			puts banner
			return
		end
		@name = args[0].underscore
	end

	def manifest
		record do |m|
			m.directory 'app/views/widgets'
			m.template 'tabnav.html.erb', File.join('app/views/widgets', "_#{@name}_tabnav.html.erb")
		end
	end

	protected

	def banner
		"Usage: #{$0} tabnav Name"
	end
end