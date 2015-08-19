using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class User
    {
        private string UserName = string.Empty;
        private string Pass = string.Empty;

        //private int UserID;//2013.1.5
        //private int UserVipID;//2013.1.5
        //private string Email;//2013.1.5
        //private string Phone;//2013.1.5
        //private string Tel;//2013.1.5
        //private string Address;//2013.1.5
        //private string IP;//2013.1.5

        public User() { }

        User(string strUser, string strPass)
        {
            this.UserName = strUser;
            this.Pass = strPass;
        }

        public string getUserName() {
            return UserName;
        }

        public void setUserName(string userName) {
            UserName = userName;
        }

        public string getPass() {
            return Pass;
        }

        public void setPass(string pass) {
            Pass = pass;
        }
   
    }
}
