using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(calender.Startup))]
namespace calender
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
