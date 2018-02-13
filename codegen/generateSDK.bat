del /S /Q "c:\tmp\csharp" || goto :error
java -jar SDKs\codegen\swagger-codegen-cli-2.3.0.jar generate -i SDKs\spec\groupdocsforcloud_storage.json -l csharp -t SDKs\codegen\Templates\csharp -o c:/tmp/csharp/ -c SDKs\codegen\config.json || goto :error

SDKs\codegen\Tools\SplitCSharpCodeFile.exe C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Api\FileApi.cs C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Model\Requests\ || goto :error
SDKs\codegen\Tools\SplitCSharpCodeFile.exe C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Api\FolderApi.cs C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Model\Requests\ || goto :error
SDKs\codegen\Tools\SplitCSharpCodeFile.exe C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Api\StorageApi.cs C:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Model\Requests\ || goto :error

xcopy "c:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Model" "SDKs\NET\GroupDocs.Storage.Cloud.Sdk\Model" /E || goto :error
xcopy "c:\tmp\csharp\src\GroupDocs.Storage.Cloud.Sdk\Api" "SDKs\NET\GroupDocs.Storage.Cloud.Sdk\Api" /E || goto :error


goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%








