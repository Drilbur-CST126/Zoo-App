using System;
using AdminPortal.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using AdminPortal.ViewModels;

namespace AdminPortalBackendTests
{
    // NOTE: Tests rely on a user "clarkj" with a password "MyPassw0rd!" in the database. 

    [TestClass]
    public class PortalWindowTests
    {
        private PortalWindowViewModel viewModel;

        [TestInitialize]
        public void Init()
        {
            viewModel = new PortalWindowViewModel((str) => { }, (str) => { });
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyUsername()
        {
            var admin = new Admin
            {
                Username = "",
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyEmail()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyFirstName()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyLastName()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = ""
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyPassword()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyConfirmEmail()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithEmptyConfirmPassword()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithMismatchedPasswords()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "b";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddWithMismatchedEmails()
        {
            var admin = new Admin
            {
                Username = Guid.NewGuid().ToString(),
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@yahoo.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }

        [TestMethod]
        public void AddAnAdmin_CannotAddOverExistingUser()
        {
            var admin = new Admin
            {
                Username = "clarkj",
                Email = "email@email.com",
                FirstName = "First",
                LastName = "Last"
            };
            var password = "a";
            var confirm_email = "email@email.com";
            var confirm_password = "a";

            Assert.IsFalse(viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password));
        }
    }
}
