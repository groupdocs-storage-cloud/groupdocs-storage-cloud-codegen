# GroupDocs.Storage for Cloud
[GroupDocs.Storage for Cloud](https://apireference.groupdocs.cloud/storage/) is a true REST API that that provides managers for multiple storage types.

Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process documents in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for GroupDocs.Storage for Cloud and examples.

These SDKs are now fully supported. If you have any questions, see any bugs or have enhancement request, feel free to reach out to us at [Free Support Forums](https://forum.groupdocs.cloud/c/storage). 

See [API Reference](https://apireference.groupdocs.cloud/storage/) for full API specification.

# Currently Available SDKs

The following SDKs are currently available:

Directory | Description
--------- | -----------
[.NET SDK](https://github.com/groupdocs-storage-cloud/groupdocs-storage-cloud-dotnet) | Cloud SDK for .NET Framework 2.0 and higher

To use these SDKs, you will need App SID and App Key which can be looked up at [GroupDocs Cloud Dashboard](https://dashboard.groupdocs.cloud/#/apps) (free registration in GroupDocs Cloud is required for this).

# Our Cloud SDKs have the following advantages:
+ Classes, methods and properties have comments and are IDE-friendly
+ Better security
+ Usage of Request/Response classes to represent long lists of parameters. This allows for cleaner code and easier backwards-compatibility going forward


## Getting Started

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

# Licensing
All GroupDocs.Storage for Cloud SDKs are licensed under [MIT License](LICENSE).

# Resources
+ [**Website**](https://www.groupdocs.cloud/)
+ [**Product Home**](https://products.groupdocs.cloud/storage)
+ [**Documentation**](https://docs.groupdocs.cloud/display/gdstoragecloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/storage)
+ [**Blog**](https://blog.groupdocs.cloud/category/storage/)
