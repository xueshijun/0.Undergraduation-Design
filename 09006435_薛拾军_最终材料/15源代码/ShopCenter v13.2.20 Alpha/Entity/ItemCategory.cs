using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class ItemCategory
    {
       private int CID;
       private string CName;
       private string Description;

        public ItemCategory() { }
        public ItemCategory(int CID, string CName, string Description)
        {
            this.CID = CID;
            this.CName = CName;
            this.Description = Description;
        }

        public int getCID()
        {
            return CID;
        }

        public void setCID(int cID)
        {
            CID = cID;
        }

        public string getCName()
        {
            return CName;
        }

        public void setCName(string cName)
        {
            CName = cName;
        }

        public string getDescription()
        {
            return Description;
        }

        public void setDescription(string description)
        {
            Description = description;
        }
      
    }
}
