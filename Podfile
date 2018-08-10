
platform :ios, '9.0'
# target的名字一般与你的项目名字相同
target 'ReactTest' do

pod 'yoga', :path => './node_modules/react-native/ReactCommon/yoga/yoga.podspec'
pod 'Folly', :podspec => './node_modules/react-native/third-party-podspecs/Folly.podspec'

pod 'React', :path => './node_modules/react-native', :subspecs => [ 
'Core',
'RCTAnimation',
'RCTActionSheet',
'RCTBlob',
'RCTGeolocation',
'RCTLinkingIOS',
'RCTSettings',
'RCTVibration',
'RCTImage',
'CxxBridge',
'RCTNetwork',
'RCTText',
'RCTWebSocket',
# 添加其他你想在工程中使用的依赖。
]


end