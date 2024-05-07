using Microsoft.SqlServer.Server;
using System.Collections.Generic;

namespace Liveburgh.Models
{
    public class FBPageList
    {
        public List<PageListData> Data { get; set; }
    }

    public class PageListData
    {
        public string Access_Token { get; set; }
        public string Category { get; set; }
        public string Name { get; set; }
        public string Id { get; set; }
    }
}
