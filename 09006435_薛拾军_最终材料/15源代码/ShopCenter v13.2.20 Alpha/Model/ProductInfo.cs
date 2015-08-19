using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class ProductInfo
    {
        public int myPID;
        public string myName = string.Empty;
        public string myDescription = string.Empty;

        ProductInfo() { }

        public int PID {
            get { return this.myPID; }
            set { this.myPID = value; }
        }

        public string Name {
            get { return this.myName; }
            set { this.myName = value; }
        }

        public string Descripion {
            get { return this.myDescription; }
            set { this.myDescription = value; }
        } 
    }
}
