using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WardrobeMVCVer1.Startup))]
namespace WardrobeMVCVer1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
