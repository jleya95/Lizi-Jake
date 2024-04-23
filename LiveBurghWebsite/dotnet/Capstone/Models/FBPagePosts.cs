using System.Collections.Generic;

namespace Liveburgh.Models
{
    public class FBPagePosts
    {
        public List<PagePostsData> Data { get; set; }
    }

    public class PagePostsData
    {
        public string Created_Time { get; set; }
        public string Message { get; set; }
        public string Id { get; set; }
    }
}
