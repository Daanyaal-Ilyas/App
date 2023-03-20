using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

public class CommentsRepo
{
    private readonly AppDatabase databases;

    public CommentsRepo(AppDatabase database)
    {
        databases = database;
    }

    public List<Comment> GetCommentsByPostId(int postId)
    {
        return databases.Connection.Table<Comment>().Where(c => c.PostId == postId).ToList();
    }

    public void CreateComment(Comment comment)
    {
        databases.Connection.Insert(comment);
    }

    public void DeleteCommentsForPost(int postId)
    {
        var comments = GetCommentsByPostId(postId);
        foreach (var comment in comments)
        {
            databases.Connection.Delete(comment);
        }
    }
}


