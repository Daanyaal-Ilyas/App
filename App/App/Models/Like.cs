using SQLite;

public class Like
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }
    public int UserId { get; set; }
    public int PostId { get; set; }
}

