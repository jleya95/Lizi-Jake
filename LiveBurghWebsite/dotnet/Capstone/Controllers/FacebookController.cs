using Capstone.Models;
using Liveburgh.Models;
using Liveburgh.Services;
using Microsoft.AspNetCore.Mvc;

namespace Liveburgh.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class FacebookController : ControllerBase
    {
        private readonly IFacebookService _facebookService;

        public FacebookController(IFacebookService facebookService)
        {
            this._facebookService = facebookService;
        }

        [HttpGet]
        public ActionResult<FBPagePosts> GetFacebookPagePosts(string userId, string userToken)
        {
            string pageAccessToken = _facebookService.GetPageAccessToken(userId, userToken);

            FBPagePosts fBPagePosts = _facebookService.GetPagePosts(pageAccessToken);

            return fBPagePosts;
        }

        [HttpPost]
        public ActionResult<string> PublishPostToFacebook(string postText, string userId, string userToken)
        {
            string pageAccessToken = _facebookService.GetPageAccessToken(userId, userToken);

            bool postSuccessful = _facebookService.PostToFacebook(postText, pageAccessToken);

            if (!postSuccessful)
            {
                return BadRequest("Something went wrong.");
            }
            else
            {
                return Ok("Post successful!");
            }
        }
    }
}
