using RestSharp;

namespace Liveburgh.Services
{
    public class FacebookService : IFacebookService
    {
        private static RestClient client = null;
        private readonly string baseUrl = "https://graph.facebook.com";
        private readonly string pageId = "236683106206015";
        private readonly string pageAccessToken = "EAANwMVVjUDsBOwvrG0p0FY5jL2AQZBMZAewIre0ynZAUloBnmjuwUfaXBcmjhkQh56vfMyZCvP7fNsz6sYg2AVpAvoR6MHyd2mVAdGlLMZCI6xsRnx2mf3l9eJledAUlHZC8P3FPKkSAUj4XwNhHCkc5mtthExepJcePyMRTMvyamVTA0bSZCs8L4kCRZC3R0GCmVYkrPpVyxwJ9sPnlgZBMD";

        public FacebookService()
        {
            if (client == null)
            {
                client = new RestClient(baseUrl);
            }
        }

        public bool PostToFacebook(string postText)
        {
            bool postSuccessful = false;
            RestRequest request = new RestRequest($"{baseUrl}/{pageId}/feed");
            request.AddHeader("Content-Type", "application/json");
            request.AddParameter("message", postText);
            request.AddParameter("access_token", pageAccessToken);

            IRestResponse<string> response = client.Post<string>(request);

            if (response.StatusCode == System.Net.HttpStatusCode.OK)
            {
                postSuccessful = true;
            }

            return postSuccessful;
        }
    }
}
