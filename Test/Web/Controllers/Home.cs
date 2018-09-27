using System;
using Xunit;
using Web;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class Home
    {
        [Fact]
        public void IndexReturnsViewResult()
        {
            HomeController sut = new HomeController();
            
            IActionResult result = sut.Index();
            
            Assert.IsType<ViewResult>(result);
        }
    }
}
