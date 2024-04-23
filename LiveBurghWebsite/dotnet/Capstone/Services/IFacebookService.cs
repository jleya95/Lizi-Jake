using Liveburgh.Models;

namespace Liveburgh.Services
{
    public interface IFacebookService
    {
        FBPagePosts GetPagePosts(string pageAccessToken);
        bool PostToFacebook(string postText, string pageAccessToken);
        string GetPageAccessToken(string userId, string userToken);
    }
}
