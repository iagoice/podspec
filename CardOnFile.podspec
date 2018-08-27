#
# Be sure to run `pod lib lint SDKPayment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'CardOnFile'
    s.version          = '1.0.0'
    s.summary          = 'Este SDK implementa o Card On File para clientes que possuem cartão de crédito Itaucard, Credicard e Hipercard adicionar seus cartões em parceiros que possa atualizar meus cartões junto ao parceiro'
    s.homepage         = 'http://gitmobile.itau/componentes-ios/card-on-file.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Luciano Turrini' => 'lmoreira@ciandt.com' }
    s.source           = { :git => 'http://gitmobile.itau/componentes-ios/card-on-file', :branch => 'testeFramework' }
    s.ios.deployment_target = '9.0'
    
    s.vendored_frameworks = 'CardOnFile.framework'
    
    # Disable for SDKCore compatibility
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
    
    s.resource_bundles = {
        'CardOnFile' => ['CardOnFile/Resources/Font/*.otf',
        'CardOnFile/Resources/Image.xcassets',
        ]
    }
    
    s.dependency 'SDKCore', '2.0.37'

end
