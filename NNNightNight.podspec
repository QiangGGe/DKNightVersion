Pod::Spec.new do |s|
  s.name         = "NNNightNight"
  s.version      = "2.0.0"
  s.summary      = "NNNightNight is a lightweight iOS framework adding different theme to your iOS app."
  s.description  = <<-DESC
                   NNNightNight is a light weight framework. It is mainly built through `objc/runtime` library and reflection, providing a neat approach  adding night mode to your iOS app. A great many codes of this framework is automatically generated by Ruby script.

                   The most delightful feature of NNNightNight is that it provides a NNColorTable.txt file to help you manage all the colors in your project. It is easily-used and well-designed. Hope you have a great joy to use NNNightNight to integrate night mode in your Apps.
                    DESC
  s.homepage     = "https://github.com/Draveness/NNNightNight"
  s.license      = "MIT"
  s.author             = { "Draveness" => "stark.draven@gmail.com" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/Draveness/NNNightNight.git", :tag => s.version }
  s.source_files = "NNNightNight/NNNightNight.h"

  s.public_header_files = "NNNightNight/NNNightNight.h"
  s.resource = "NNNightNight/ColorTable/NNColorTable.txt"

  s.subspec 'DeallocBlockExecutor' do |ss|
    ss.source_files = "NNNightNight/DeallocBlockExecutor/*.{h,m}"
  end

  s.subspec 'ColorTable' do |ss|
    ss.source_files = "NNNightNight/ColorTable/*{h,m}"
    ss.dependency 'NNNightNight/Core'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = "NNNightNight/Core/*.{h,m}"
    ss.dependency 'NNNightNight/DeallocBlockExecutor'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = "NNNightNight/UIKit/*.{h,m}"
    ss.dependency 'NNNightNight/Core'
  end

  s.subspec 'CoreAnimation' do |ss|
    ss.source_files = "NNNightNight/CoreAnimation/*.{h,m}"
    ss.dependency 'NNNightNight/Core'
  end

end
