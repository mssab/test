 public class RestClient
    {
        public async Task<T> GetT<T>(string url)
        {

            try
            {
                HttpClient client = new HttpClient();
                var response = await client.GetAsync(url);
                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    var jsonString = await response.Content.ReadAsStringAsync();
                    return Newtonsoft.Json.JsonConvert.DeserializeObject<T>(jsonString);
                }
            }
            catch
            {

            }
            return default(T);
        }



    }