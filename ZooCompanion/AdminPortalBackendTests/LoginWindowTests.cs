using System;
using System.Collections.Generic;
using System.Text;
using AdminPortal.Models.BusinessLogic;
using AdminPortal.ViewModels;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AdminPortalBackendTests
{
    [TestClass]
    public class LoginWindowTests
    {
        private LoginPageViewModel viewModel;

        [TestInitialize]
        public void Init()
        {
            viewModel = new LoginPageViewModel(new MockHomeBusinessLogic(), (s) => { });
        }

        [TestMethod]
        public void Login_CannotLoginWithNoUsername()
        {
            Assert.IsFalse(viewModel.Login("", "pw"));
        }

        [TestMethod]
        public void Login_CannotLoginWithNoPassword()
        {
            Assert.IsFalse(viewModel.Login("un", ""));
        }

        [TestMethod]
        public void Login_CannotLoginWithWrongCredentials()
        {
            // In the mock of the database, "Wrong" and "Wrong" is a bad login, while every other login is valid.
            Assert.IsFalse(viewModel.Login("Wrong", "Wrong"));
        }

        [TestMethod]
        public void Login_CanLoginWithRightCredentials()
        {
            Assert.IsTrue(viewModel.Login("un", "pw"));
        }
    }
}
