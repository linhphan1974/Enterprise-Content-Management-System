using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ecm.Workflow.Activities.CustomActivityDomain
{
    [Serializable()]
    public class LoginInfo
    {
        public string UserName { get; set; }

        public string Password { get; set; }

        public string ArchiveEndPoint { get; set; }
    }
}
