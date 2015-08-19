using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class UserInfo
    {

        public int myUserID;
        public string myName = string.Empty;
        public string myPass = string.Empty;
        public string myEmail = string.Empty;
        public string myPhone = string.Empty;
        public string myTel = string.Empty;
        public string myAddress = string.Empty;
        public string myIP = string.Empty;
        public string myVipName = string.Empty;
        public bool myState = false;//用户状态（激活/销毁）


        public UserInfo() { }
        public UserInfo(int intUID, string strName, string strPass)
        {
            this.myUserID = intUID;
            this.myName = strName;
            this.myPass = strPass;
            this.myState = true;
        }
   
        /// <summary>
        /// 7个
        /// </summary>
        /// <param name="strName"></param>
        /// <param name="strPass"></param>
        /// <param name="strEmail"></param>
        /// <param name="strPhone"></param>
        /// <param name="strTel"></param>
        /// <param name="strAddress"></param>
        /// <param name="strIP"></param>
        public UserInfo(string strName, string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP)
        {
            this.myName = strName;
            this.myPass = strPass; 
            this.myEmail = strEmail;
            this.myPhone = strPhone;
            this.myTel = strTel;
            this.myAddress = strAddress;
            this.myIP = strIP;
            this.myState = true;
        }
        /// <summary>
        /// 8个
        /// </summary>
        /// <param name="intUID"></param>
        /// <param name="strName"></param>
        /// <param name="strPass"></param>
        /// <param name="strEmail"></param>
        /// <param name="strPhone"></param>
        /// <param name="strTel"></param>
        /// <param name="strAddress"></param>
        /// <param name="strIP"></param> 
        public UserInfo(int intUID, string strName, string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP)
        {
            this.myUserID = intUID;
            this.myName = strName;
            this.myPass = strPass;
            this.myEmail = strEmail;
            this.myPhone = strPhone;
            this.myTel = strTel;
            this.myAddress = strAddress;
            this.myIP = strIP; 
            this.myState = true;
        }

        /// <summary>
        /// 9个
        /// </summary>
        /// <param name="intUID"></param>
        /// <param name="strName"></param>
        /// <param name="strPass"></param>
        /// <param name="strEmail"></param>
        /// <param name="strPhone"></param>
        /// <param name="strTel"></param>
        /// <param name="strAddress"></param>
        /// <param name="strIP"></param>
        /// <param name="strVIP"></param>
        public UserInfo(int intUID, string strName, string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP, string strVIP)
        {
            this.myUserID = intUID;
            this.myName = strName;
            this.myPass = strPass;
            this.myEmail = strEmail;
            this.myPhone = strPhone;
            this.myTel = strTel;
            this.myAddress = strAddress;
            this.myIP = strIP;
            this.myVipName = strVIP;
            this.myState = true;
        }
        
        public string UserName
        {
            get { return myName; }
            set { this.myName = value; }
        }
        public string Pass
        {
            get { return myPass; }
            set { this.myPass = value; }
        }
        public string Email
        {
            get { return myEmail; }
            set { this.myEmail = value; }
        }
        public string Phone 
        {
            get { return myPhone; }
            set { this.myPhone = value; }
        }
        public string Tel 
        {
            get { return myTel; }
            set { this.myTel = value; }
        }
        public string Address 
        {
            get { return myAddress; }
            set { this.myAddress = value; }
        }
        public string IP {
            get { return myIP; }
            set { this.myIP = value; }
        }
        public bool State
        {
            get { return this.myState; }
            set { this.myState = value; }
        }
        public string VIP {
            get { return this.myVipName; }
            set { this.myVipName = value; }
        }
    } 
}
