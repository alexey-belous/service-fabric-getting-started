using System;
using System.Collections.Generic;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Table;

namespace TestClient
{
    public class TestRecord : TableEntity
    {
        public TestRecord(string lastName, string firstName)
        {
            this.PartitionKey = lastName;
            this.RowKey = firstName;
        }

        public TestRecord() { }

        public string Email { get; set; }

        public string PhoneNumber { get; set; }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            CloudStorageAccount storageAccount = CloudStorageAccount.Parse("UseDevelopmentStorage=true;");
            var tableClient = storageAccount.CreateCloudTableClient();
            var table = tableClient.GetTableReference("testTable2");
            var t1 = table.CreateIfNotExistsAsync();
            t1.Wait();
            Console.WriteLine(t1.Result);

            // var t2 = table.DeleteIfExistsAsync();
            // t2.Wait();
            // Console.WriteLine(t2.Result);

            var en1 = new TestRecord("testid1", "testid1-1");
            var op1 = TableOperation.Insert(en1);
            var resInsert = table.ExecuteAsync(op1);
            resInsert.Wait();
            Console.WriteLine(resInsert.Result.HttpStatusCode);
            Console.WriteLine(resInsert.Result.Result);
            Console.WriteLine(resInsert.Result.Etag);
        }
    }
}
