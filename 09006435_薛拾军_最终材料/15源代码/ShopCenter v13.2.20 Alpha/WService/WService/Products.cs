using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WService
{
    public class Products
    {
        public static List<string> getProductsById(int PID) { 
            List<string> list = new List<string>();
            Entity.Products product = new BLL.Products().GetProductInfo(PID);
            list.Add(product.getCategoryID().ToString());
            list.Add(product.getName());
            list.Add(product.getDescription());  
            return list;
        }
    }
}
