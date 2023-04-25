using SQLite;
using System;
using System.IO;
using Xamarin.Essentials;

public class Databases : IDisposable
{
    public SQLiteConnection Connection { get; }

    public PostRepo PostRepo => new PostRepo(Connection);
    public UserRepo UserRepo => new UserRepo(Connection);
    public CommentsRepo CommentsRepo => new CommentsRepo(this);
    public LikeRepo LikeRepo => new LikeRepo(this);


    public Databases()
    {
        string databasePath = Path.Combine(FileSystem.AppDataDirectory, "main.db");
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

