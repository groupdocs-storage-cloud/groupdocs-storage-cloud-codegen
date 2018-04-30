del /S /Q "c:\tmp\ruby" || goto :error
java -jar SDKs\codegen\swagger-codegen-cli-2.3.0.jar generate -t SDKs\codegen\Templates\ruby -i SDKs\spec\groupdocsforcloud_storage.json -l ruby -c SDKs\codegen\config-ruby.json -o c:/tmp/ruby/ || goto :error

SDKs\codegen\Tools\SplitRubyCodeFile.exe C:\tmp\ruby\lib\storage_ruby_sdk\api\storage_api.rb C:\tmp\ruby\lib\storage_ruby_sdk\models\requests\ || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%