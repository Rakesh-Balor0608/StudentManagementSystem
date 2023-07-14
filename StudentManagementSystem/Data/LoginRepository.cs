using Dapper;
using StudentManagementSystem.Core;
using StudentManagementSystem.Models;
using System.Data;
using System.Data.SqlClient;

namespace StudentManagementSystem.Data
{
    public class LoginRepository: ILoginRepository
    {
        public int Login(LoginMaster userMasterModel)
        {
            IDbConnection con = new SqlConnection(new ConnString().ConnectionString);
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                //parameters.Add("LoginId", userMasterModel.LoginId);
                //parameters.Add("Password", userMasterModel.Password);
                //parameters.Add("Result", dbType: DbType.Int32, direction: ParameterDirection.Output);
                //var Result = con.Query<Int32>("CheckLogin", parameters, commandType: CommandType.StoredProcedure);

                //// return true;
                //return parameters.Get<Int32>("Result");
                return 1;

            }
            catch
            {
                return 1;

            }
        }

    }
}
