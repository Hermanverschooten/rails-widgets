class WidgetNavigationGenerator < Rails::Generator::NamedBase
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
			m.template 'navigation.html.erb', File.join('app/views/widgets', "_#{@name}_navigation.html.erb")
		end
	end

	protected

	def banner
		"Usage: #{$0} widget_navigation Name"
	end
end