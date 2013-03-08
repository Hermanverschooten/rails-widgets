class WidgetInstallGenerator < Rails::Generator::Base

	def manifest
		record do |m|
			m.directory 'public/images/widgets'
			%w{ tooltip_arrow.gif tooltip_image.gif}.each do |image|
				m.template image, File.join('public/images/widgets', image)			
			end
			m.directory 'public/images/javascripts'
			%w{ tooltip.js }.each do |image|
				m.template image, File.join('public/javascripts/widgets', image)			
			end
		end
	end

	protected

	def banner
		"Usage: #{$0} install"
	end
end