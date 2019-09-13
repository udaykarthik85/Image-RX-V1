using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ImageRX.Startup))]
namespace ImageRX
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
