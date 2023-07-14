using StudentManagementSystem.Models;

namespace StudentManagementSystem.Core
{
    public interface ILoginRepository
    {
        int Login(LoginMaster userMasterModel);
    }
}
