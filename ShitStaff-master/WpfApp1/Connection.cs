using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1
{
    public class Connection
    {
        private static BaseDateContext _context;
       
        public static BaseDateContext GetContext()
        {
            try
            {
                if (_context == null)
                    _context = new BaseDateContext();
                return _context;
            }
            catch(NullReferenceException) when (_context == null)
            {
                throw new Exception("Provide your database!");
            }
        }
          
        public static User userAuth = new User();
    }
}
