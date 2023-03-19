using System.IO;
using System.Threading.Tasks;

public interface IPhotoPickerService
{
    Task<Stream> GetImageStreamAsync();
}

