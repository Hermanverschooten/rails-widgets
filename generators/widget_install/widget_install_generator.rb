class WidgetInstallGenerator < Rails::Generator::Base

	def manifest
		record do |m|
			m.directory 'app/assets/images/widgets'
			%w{ tooltip_arrow.gif tooltip_image.gif}.each do |image|
				m.template image, File.join('app/assets/images/widgets', image)			
			end
			m.directory 'ap/assets/images/javascripts'
			%w{ tooltip.js }.each do |image|
				m.template image, File.join('app/assets/javascripts/widgets', image)			
			end
		end
	end

	protected

	def banner
		"Usage: #{$0} install"
	end
end