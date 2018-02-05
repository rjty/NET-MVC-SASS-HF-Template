using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingList.App_Code
{
    class Users
    {
        List<Users> _userList = new List<Users>();

        private string _name;
        private int _age;
        private string _address;
        private string _phone;

        public Users(string name, int age, string address, string phone)
        {
            _name = name;
            _age = age;
            _address = address;
            _phone = phone;
        }

        // old style getters and setters
        public string GetName()
        {
            return _name;
        }

        public void SetName(string name)
        {
            _name = name;
        }

        public int GetAge()
        {
            return _age;
        }

        public void SetAge(int age)
        {
            _age = age;
        }

        public string GetAddress()
        {
            return _address;
        }

        public void SetAddress(string address)
        {
            _address = address;
        }

        public string GetPhone()
        {
            return _phone;
        }

        public void SetPhone(string phone)
        {
            _phone = phone;
        }

    }
}