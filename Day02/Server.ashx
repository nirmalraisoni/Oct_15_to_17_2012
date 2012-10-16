<%@ WebHandler Language="C#" Class="Server" %>

using System;
using System.Web;

public class Server : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string name = context.Request["name"];
        //context.Response.Write("Hello " + name.ToUpper());
        
        //{output:'Hello SACHIN'}
        
        string output = "Hello " + name.ToUpper();    
        context.Response.Write("{output:'" + output + "'}");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}