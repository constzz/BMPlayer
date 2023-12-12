Pod::Spec.new do |s|
s.name             = "IBPlayer"
s.version          = "1.0.2"
s.summary          = "Video Player Using Swift, based on AVPlayer"

s.description      = <<-DESC
Video Player Using Swift, based on AVPlayer, support for the horizontal screen, vertical screen, the upper and lower slide to adjust the volume, the screen brightness, or so slide to adjust the playback progress.
DESC

s.homepage         = "https://github.com/BrikerMan/BMPlayer"

s.license          = 'MIT'
s.author           = { "Eliyar Eziz" => "eliyar917@gmail.com" }
s.source           = { :git => "https://github.com/iblacksun/BMPlayer.git", :branch => 'master' }
s.social_media_url = 'http://weibo.com/536445669'

s.ios.deployment_target = '8.0'
s.platform     = :ios, '8.0'
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
s.default_subspec = 'Full'

s.subspec 'Core' do |core|
    core.frameworks   = 'UIKit', 'AVFoundation'
    core.source_files = 'Source/BMPlayerLayerView.swift'
end

s.subspec 'Full' do |full|
    full.source_files = 'Source/*.swift','Source/Default/*'
    full.resources    = "Source/**/*.xcassets"
    full.frameworks   = 'UIKit', 'AVFoundation'

    full.dependency 'IBPlayer/Core'
    full.dependency 'SnapKit', '~> 4.0.1'
    full.dependency 'NVActivityIndicatorView', '~> 4.4.0'
end

s.subspec 'CacheSupport' do |cache|
    cache.source_files = 'Source/*.swift','Source/CacheSupport/*'
    cache.resources    = "Source/**/*.xcassets"
    cache.frameworks   = 'UIKit', 'AVFoundation'

    cache.dependency 'IBPlayer/Core'
    cache.dependency 'SnapKit', '~> 4.0.1'
    cache.dependency 'NVActivityIndicatorView', '~> 4.4.0'
    cache.dependency 'VIMediaCache'
end

end