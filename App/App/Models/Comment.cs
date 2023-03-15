using SQLite;

public class Comment
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }
    public string Text { get; set; }
    public int UserId { get; set; }
    public int PostId { get; set; }
}

