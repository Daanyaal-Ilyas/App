using SQLite;
using System;
using System.IO;
using Xamarin.Essentials;

public class AppDbContext : IDisposable
{
    public SQLiteConnection Connection { get; }

    public AppDbContext()
    {
        string databasePath = Path.Combine(FileSystem.AppDataDirectory, "MyDatabase.db");
        Connection = new SQLiteConnection(databasePath);
        Connection.CreateTable<User>();
        Connection.CreateTable<Post>();
        Connection.CreateTable<Comment>();
        Connection.CreateTable<Like>();
    }

    public void Dispose()
    {
        Connection?.Dispose();
    }
}

