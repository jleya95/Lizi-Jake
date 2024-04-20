using Liveburgh.Services;
using Microsoft.AspNetCore.Mvc;

namespace Liveburgh.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class FacebookController
    {
        private readonly IFacebookService _facebookService;

        public FacebookController(IFacebookService facebookService)
        {
            this._facebookService = facebookService;
        }

        [HttpPost]
        public ActionResult<string> PublishPostToFacebook(string postText)
        {
            bool postSuccessful = _facebookService.PostToFacebook(postText);

            if (!postSuccessful)
            {
                return "Something went wrong";
            }
            else
            {
                return "Post successful!";
            }
        }
    }
}
