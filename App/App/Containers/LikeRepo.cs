using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

public class LikeRepo
{
    private readonly AppDatabase databases;

    public LikeRepo(AppDatabase database)
    {
        databases = database;
    }

    public int GetTotalLikesForPost(int postId)
    {
        return databases.Connection.Table<Like>().Count(l => l.PostId == postId);
    }

    public Like GetLikeByUserIdAndPostId(int userId, int postId)
    {
        return databases.Connection.Table<Like>().FirstOrDefault(l => l.UserId == userId && l.PostId == postId);
    }

    public void CreateLike(Like like)
    {
        databases.Connection.Insert(like);
    }

    public void DeleteLike(Like like)
    {
        databases.Connection.Delete(like);
    }

    public void DeleteLikesForPost(int postId)
    {
        var likes = databases.Connection.Table<Like>().Where(l => l.PostId == postId).ToList();
        foreach (var like in likes)
        {
            databases.Connection.Delete(like);
        }
    }
}
