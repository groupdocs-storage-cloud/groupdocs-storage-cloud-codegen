if exist "c:\tmp\php" del /S /Q "c:\tmp\php" || goto :error

java -jar SDKs\codegen\swagger-codegen-cli-2.3.0.jar generate ^
 -i SDKs\spec\groupdocsforcloud_storage.json ^
 -l php -t SDKs\codegen\Templates\php ^
 -o c:/tmp/php/ ^
 -c SDKs\codegen\config-php.json ^
 || goto :error

SDKs\codegen\Tools\SplitPhpCodeFile.exe ^
C:\tmp\php\SwaggerClient-php\src\Api\StorageApi.php C:\tmp\php\SwaggerClient-php\src\Model\Requests\ || goto :error

del /S /Q "SDKs\PHP\src\GroupDocs\Storage\Model" || goto :error
attrib +r +s SDKs\PHP\src\GroupDocs\Storage\RepeatRequestException.php || goto :error
del /S /Q "SDKs\PHP\src\GroupDocs\Storage" || goto :error
attrib -r -s SDKs\PHP\src\GroupDocs\Storage\RepeatRequestException.php || goto :error

xcopy "C:\tmp\php\SwaggerClient-php\src\Model" "SDKs\PHP\src\GroupDocs\Storage\Model" /E || goto :error
del /S /Q "C:\tmp\php\SwaggerClient-php\src\Model" || goto :error
rmdir "C:\tmp\php\SwaggerClient-php\src\Model\Requests" || goto :error
rmdir "C:\tmp\php\SwaggerClient-php\src\Model" || goto :error
xcopy "C:\tmp\php\SwaggerClient-php\src\Api" "SDKs\PHP\src\GroupDocs\Storage" /E || goto :error
del /S /Q "C:\tmp\php\SwaggerClient-php\src\Api" || goto :error
rmdir "C:\tmp\php\SwaggerClient-php\src\Api" || goto :error
xcopy "C:\tmp\php\SwaggerClient-php\src" "SDKs\PHP\src\GroupDocs\Storage" /E || goto :erroror

rd /S /Q "c:\tmp\php"

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%








