namespace StudentManagementSystem
{
    public class ConnString
    {
        public readonly string _connectionString = string.Empty;
        public ConnString()
        {
            var configurationBuilder = new ConfigurationBuilder();
            var path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.json");
            configurationBuilder.AddJsonFile(path, false);

            var root = configurationBuilder.Build();
            _connectionString = root.GetSection("ConnectionStrings").GetSection("SampleProjectConnString").Value;
        }
        public string ConnectionString
        {
            get => _connectionString;
        }
    }
}
