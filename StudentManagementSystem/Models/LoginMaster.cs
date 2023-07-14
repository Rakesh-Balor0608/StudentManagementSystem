using System.ComponentModel.DataAnnotations;

namespace StudentManagementSystem.Models
{
    public class LoginMaster
    {

        public string StudentLoginId { get; set; }
        public string StudentPassword { get; set; }
        public string TeacherLoginId { get; set; }
        public string TeacherPassword { get; set; }
        public string Type { get; set; }
    }
}
