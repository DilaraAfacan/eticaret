using System.Data.SqlClient;

namespace E_Commerce
{
    public class DatabaseBaglanti
    {
        public static SqlConnection BaglantiGetir()=> new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Pastahane;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

    }
}