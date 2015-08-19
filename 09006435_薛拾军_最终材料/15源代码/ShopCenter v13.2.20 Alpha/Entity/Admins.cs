using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Admins
    {
       private int AdminID;
       private string Name;
       private string Pass; 
        public Admins() { }
        public Admins(int AdminID, string Name, string Pass)
        {
            this.AdminID = AdminID;
            this.Name = Name;
            this.Pass = Pass;
        }

        public Admins(string Name, string Pass)
        {
            this.Name = Name;
            this.Pass = Pass;
        } 


        public int getAdminID()
        {
            return AdminID;
        }

        public void setAdminID(int adminID)
        {
            AdminID = adminID;
        }

        public string getName()
        {
            return Name;
        }

        public void setName(string name)
        {
            Name = name;
        }

        public string getPass()
        {
            return Pass;
        }

        public void setPass(string pass)
        {
            Pass = pass;
        }
    }
}
