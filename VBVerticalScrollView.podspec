#
# Be sure to run `pod lib lint MyLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VBRandom"
  s.version          = "1.0.0"
  s.summary          = "VBRandom is a pseudo-random numbers generator. Using of VBRandom simplifies random numbers creation code."
  s.description      = <<-DESC
VBRandom is a pseudo-random numbers generator. Using of VBRandom simplifies random numbers creation code.

It uses arc4random() function.

## Supported features
1. random NSUInteger
2. random NSInteger
3. random double
4. random BOOL

## License
VBRandom is available under the MIT license. See the LICENSE file for more info.

                       DESC
  s.homepage         = "https://github.com/valnoc/VBRandom"
  s.license          = 'MIT'
  s.author           = { "Valeriy Bezuglyy" => "valnocorner@gmail.com" }
  s.source           = { :git => "https://github.com/valnoc/VBRandom.git", :tag => "v#{s.version}" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'VBRandom/**/*'

  s.dependency 'VBException', '~> 1.0'
end
