using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
  
    public class Brands
    {
        DAL.SqlHelper helper = new DAL.SqlHelper(); 

        public DataSet GetBrands() {
            return helper.GetdataSet("select * from Brand");
        }
    }
}
