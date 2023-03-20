using SQLite;
using System.Collections.Generic;

public class PostRepo
{
    private readonly SQLiteConnection connections;

    public PostRepo(SQLiteConnection connection)
    {
        connections = connection;
    }

    // Create
    public int CreatePost(Post post)
    {
        return connections.Insert(post);
    }

    // Read
    public List<Post> GetAllPosts()
    {
        return connections.Table<Post>().ToList();
    }

    public Post GetPostById(int id)
    {
        return connections.Find<Post>(id);
    }

    // Update
    public int UpdatePost(Post post)
    {
        return connections.Update(post);
    }

    // Delete
    public int DeletePost(Post post)
    {
        return connections.Delete(post);
    }
}

