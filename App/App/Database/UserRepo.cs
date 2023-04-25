using SQLite;
using System.Collections.Generic;

public class UserRepo
{
    private readonly SQLiteConnection connections;

    public UserRepo(SQLiteConnection connection)
    {
        connections = connection;
    }

    // Create
    public int CreateUser(User user)
    {
        return connections.Insert(user);
    }

    // Read
    public List<User> GetAllUsers()
    {
        return connections.Table<User>().ToList();
    }

    public User GetUserById(int id)
    {
        return connections.Find<User>(id);
    }

    public User GetUserByUsernameAndPassword(string username, string password)
    {
        return connections.Table<User>().FirstOrDefault(u => u.Username == username && u.Password == password);
    }

    // Update
    public int UpdateUser(User user)
    {
        return connections.Update(user);
    }

    // Delete
    public int DeleteUser(User user)
    {
        return connections.Delete(user);
    }

    public User GetLoggedInUser(SQLiteConnection connection)
    {
        return connection.Table<User>().FirstOrDefault(u => u.IsLoggedIn);
    }


}

