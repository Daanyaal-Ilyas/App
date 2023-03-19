using SQLite;
using System;
using System.IO;
using Xamarin.Essentials;

public class AppDatabase : IDisposable
{
    public SQLiteConnection Connection { get; }

    public AppDatabase()
    {
        string databasePath = Path.Combine(FileSystem.AppDataDirectory, "main.db");
        Connection = new SQLiteConnection(databasePath);
        Connection.CreateTable<User>();
        Connection.CreateTable<Post>(); // This line will create the updated table
        Connection.CreateTable<Comment>();
        Connection.CreateTable<Like>();
    }


    public void Dispose()
    {
        Connection?.Dispose();
    }
}

