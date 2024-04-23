using Liveburgh.Models;
using RestSharp;

namespace Liveburgh.Services
{
    public class FacebookService : IFacebookService
    {
        private static RestClient client = null;
        private readonly string baseUrl = "https://graph.facebook.com";
        private readonly string pageId = "236683106206015";
        /*        private readonly string pageAccessToken = "EAANwMVVjUDsBOwvrG0p0FY5jL2AQZBMZAewIre0ynZAUloBnmjuwUfaXBcmjhkQh56vfMyZCvP7fNsz6sYg2AVpAvoR6MHyd2mVAdGlLMZCI6xsRnx2mf3l9eJledAUlHZC8P3FPKkSAUj4XwNhHCkc5mtthExepJcePyMRTMvyamVTA0bSZCs8L4kCRZC3R0GCmVYkrPpVyxwJ9sPnlgZBMD";
        */
        public FacebookService()
        {
            if (client == null)
            {
                client = new RestClient(baseUrl);
            }
        }

        public FBPagePosts GetPagePosts(string pageAccessToken)
        {
            RestRequest request = new RestRequest($"{baseUrl}/{pageId}/feed");
            request.AddParameter("access_token", pageAccessToken);

            IRestResponse<FBPagePosts> response = client.Get<FBPagePosts>(request);

            return response.Data;
        }

        public bool PostToFacebook(string postText, string pageAccessToken)
        {
            bool postSuccessful = false;
            RestRequest request = new RestRequest($"{baseUrl}/{pageId}/feed");
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("message", postText);
            request.AddParameter("access_token", pageAccessToken);

            IRestResponse<string> response = client.Post<string>(request);

            if (response.ResponseStatus == ResponseStatus.Completed)
            {
                postSuccessful = true;
            }

            return postSuccessful;
        }

        public string GetPageAccessToken(string userId, string userToken)
        {
            string pageAccessToken = "";

            RestRequest request = new RestRequest($"{baseUrl}/{userId}/accounts");
            request.AddParameter("access_token", userToken);

            IRestResponse<FBPageList> response = client.Get<FBPageList>(request);
            if (response.ResponseStatus == ResponseStatus.Completed)
            {
                if (response.Data.Data.Count > 0)
                {
                    for (int i = 0; i < response.Data.Data.Count; i++)
                    {
                        if (response.Data.Data[i].Id == pageId)
                        {
                            pageAccessToken = response.Data.Data[i].Access_Token;
                        }
                    }
                }
            }

            return pageAccessToken;
        }

    }
}
