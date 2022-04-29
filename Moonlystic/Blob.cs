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
        static string connectionString = "CONNECTIONSTRING";
        static string containerName = "moonlystic";
        //static string folderPath = @"C:\Users\Ben\Desktop\test\bank-card.png";

        public void tryBlob(string BLOBName, string filePath)
        {
            BlobClient blobClient = new BlobClient(
                connectionString: connectionString,
                blobContainerName: containerName,
                blobName: BLOBName);

            // upload the file
            //make an if else or try catch block to prevent error if already uploaded
            blobClient.Upload(filePath);
            try
            {
                //blobClient.Upload(filePath);
            } catch
            {
                
            }
        }
    }
}