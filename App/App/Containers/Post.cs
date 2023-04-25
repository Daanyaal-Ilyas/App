using SQLite;

public class Post
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }
    public int UserId { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public double LocationLatitude { get; set; }
    public double LocationLongitude { get; set; }
    public byte[] ImageData { get; set; }
}

