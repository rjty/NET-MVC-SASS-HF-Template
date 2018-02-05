using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingList.App_Code
{
    public class User
    {
        private string _name;
        private int _age;
        private string _address;
        private string _phone;

        public User(string name, int age, string address, string phone)
        {
            _name = name;
            _age = age;
            _address = address;
            _phone = phone;
        }

        //...
    }

}