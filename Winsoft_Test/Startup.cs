using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Winsoft_Test.Startup))]
namespace Winsoft_Test
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
