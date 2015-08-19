using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Products
    {
       private int PID;
       private int CategoryID;
       private string Name;
       private string Description;


        public Products() { }

        public Products(int PID, int CategoryID, string Name, string Description)
        {
            this.PID = PID;
            this.CategoryID = CategoryID;
            this.Name = Name;
            this.Description = Description;
        }

        public int getPID()
        {
            return PID;
        }

        public void setPID(int pID)
        {
            PID = pID;
        }

        public int getCategoryID()
        {
            return CategoryID;
        }

        public void setCategoryID(int categoryID)
        {
            CategoryID = categoryID;
        }

        public string getName()
        {
            return Name;
        }

        public void setName(string name)
        {
            Name = name;
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
