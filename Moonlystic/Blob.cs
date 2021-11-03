using Azure.Storage.Blobs;
using Microsoft.Azure.Storage;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Moonlystic
{
    public class Blob
    {
        static string connectionString = "DefaultEndpointsProtocol=https;AccountName=tp054554;AccountKey=aYat1Qguh5grIaGb8EU1d3dQ5YqigqiA7/FZvaIMQdKGIYXOq/wT7vPtYaWGQDK5NwGFoOJv06zpCB39X5kjyA==;EndpointSuffix=core.windows.net";
        static string containerName = "moonlystic";
        static string folderPath = @"C:\Users\Ben\Desktop\test\mwmsequence.png";

        public void tryBlob()
        {
            BlobClient blobClient = new BlobClient(
                connectionString: connectionString,
                blobContainerName: containerName,
                blobName: "test");

            // upload the file
            //make an if else or try catch block to prevent error if already uploaded
            //blobClient.Upload(folderPath);
        }
    }
}