using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class UserInfo
    { 
       private int myUserID;
       private string myName = string.Empty;
       private string myPass = string.Empty;
       private string myEmail = string.Empty;
       private string myPhone = string.Empty;
       private string myTel = string.Empty;
       private string myAddress = string.Empty;
       private string myIP = string.Empty;
       private string myVipName = string.Empty;
       private bool myState = false;//用户状态（激活/销毁）


        public UserInfo() { }
        public UserInfo(string strUser, string strPass)
        {
            this.UserName = strUser;
            this.Pass = strPass;
        }
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



        #region C#写法
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
        #endregion

        #region java写法

        public int getMyUserID()
        {
            return myUserID;
        }

        public void setMyUserID(int myUserID)
        {
            this.myUserID = myUserID;
        }

        public string getMyName()
        {
            return myName;
        }

        public void setMyName(string myName)
        {
            this.myName = myName;
        }

        public string getMyPass()
        {
            return myPass;
        }

        public void setMyPass(string myPass)
        {
            this.myPass = myPass;
        }

        public string getMyEmail()
        {
            return myEmail;
        }

        public void setMyEmail(string myEmail)
        {
            this.myEmail = myEmail;
        }

        public string getMyPhone()
        {
            return myPhone;
        }

        public void setMyPhone(string myPhone)
        {
            this.myPhone = myPhone;
        }

        public string getMyTel()
        {
            return myTel;
        }

        public void setMyTel(string myTel)
        {
            this.myTel = myTel;
        }

        public string getMyAddress()
        {
            return myAddress;
        }

        public void setMyAddress(string myAddress)
        {
            this.myAddress = myAddress;
        }

        public string getMyIP()
        {
            return myIP;
        }

        public void setMyIP(string myIP)
        {
            this.myIP = myIP;
        }

        public string getMyVipName()
        {
            return myVipName;
        }

        public void setMyVipName(string myVipName)
        {
            this.myVipName = myVipName;
        }

        public bool getMyState()
        {
            return myState;
        }

        public void setMyState(bool myState)
        {
            this.myState = myState;
        }
        #endregion
    } 
}
