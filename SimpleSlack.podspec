#
# Be sure to run `pod lib lint StarchupTracker.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "SimpleSlack"
    s.version          = "1.0.0"
    s.summary          = "Starchup Simple Slack Logger"
    s.homepage         = "https://github.com/starchup/simple-slack-ios"
    s.license          = 'MIT'
    s.author           = { "Geoffroy Lesage" => "geoffroy@starchup.com" }
    s.source           = { :git => "https://github.com/Starchup/simple-slack-ios.git", :tag => s.version.to_s }

    s.platform     = :ios, '8.0'
    s.requires_arc = true

    s.source_files = 'Pod/Classes/**/*'

    s.dependency 'AFNetworking'
end
