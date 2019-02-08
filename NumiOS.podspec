#
# Be sure to run `pod lib lint YNDropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NumiOS'
  s.version          = '0.1.0'
  s.summary          = 'Numpy in iOS'

  s.description      = <<-DESC
                        Magic will be happened when you use NumiOS!
                        DESC

  s.homepage         = 'https://github.com/younatics/NumiOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Seungyoun Yi" => "younatics@gmail.com" }

  s.source           = { :git => 'https://github.com/younatics/NumiOS.git', :tag => s.version.to_s }
  s.source_files     = 'NumiOS/*.swift'

  s.ios.deployment_target = '9.0'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
