# GroupDocs.Storage for Cloud
GroupDocs.Storage for Cloud is a true REST API which allows working with 3rd party storages like:
Amazon S3, DropBox, Google Drive, Google Cloud, Windows Azure, FTP Storage, Box Storage.

Our Cloud SDKs are wrappers around REST API in various programming languages. They allow you to process documents in different languages quickly and easily, with zero initial cost, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for GroupDocs.Storage for Cloud and examples.

See [API Reference](https://apireference.groupdocs.cloud/storage/) for full API specification.

## Currently Available SDKs

The following SDKs are currently available:

Directory | Description
--------- | -----------
[.NET SDK](https://github.com/groupdocs-storage-cloud/groupdocs-storage-cloud-dotnet) | Cloud SDK for .NET Framework 2.0 or later
[PHP SDK](https://github.com/groupdocs-storage-cloud/groupdocs-storage-cloud-php) | Cloud SDK for PHP 5.6 or later
[RUBY SDK](https://github.com/groupdocs-storage-cloud/groupdocs-storage-cloud-ruby) | Cloud SDK for Ruby 2.1 or later

To use these SDKs, you need to register an account with [GroupDocs Cloud](https://www.groupdocs.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.groupdocs.cloud/#/apps). There is free quota available. For more details, see [GroupDocs Cloud Pricing](https://purchase.groupdocs.cloud/pricing).

For more details, please visit our [documentation website](https://docs.groupdocs.cloud/display/gdstoragecloud/Home).

## Our Cloud SDKs have the following advantages:
+ Classes, methods and properties have comments and are IDE-friendly
+ Better security
+ Usage of Request/Response classes to represent long lists of parameters. This allows for cleaner code and easier backwards-compatibility going forward


## Sample usage

```csharp
using System;
using System.Diagnostics;
using GroupDocs.Storage.Cloud.Sdk.Api;
using GroupDocs.Storage.Cloud.Sdk.Model;
using GroupDocs.Storage.Cloud.Sdk.Model.Requests;

namespace Example
{
    public class Example
    {
        public void Main()
        {
            //TODO: Get your AppSID and AppKey at https://dashboard.groupdocs.cloud (free registration is required).
            var configuration = new Configuration
            {
                AppSid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
                AppKey = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            };

            var apiInstance = new StorageApi(configuration);
            try
            {		
                var request = new FileGetDownloadRequest();
                request.path = "TestFile.pdf";
                request.storage = "StorageName";
                var response = StorageApi.FileGetDownload(request);
            }
            catch(Exception ex)
            {
                Debug.Print("Exception when calling StorageApi.FileGetDownload: " + ex.Message);
            }
        }
    }
}
```

## Licensing
All GroupDocs.Storage for Cloud SDKs are licensed under [MIT License](LICENSE).

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/storage).