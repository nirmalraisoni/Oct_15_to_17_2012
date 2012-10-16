<%@ WebHandler Language="C#" Class="cities" %>

using System;
using System.Web;

public class cities : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string country = context.Request["country"];
        string json = "{cities : ["; 

        if (country == "India") {
            json += "{name:'Chennai'},";
            json += "{name:'Pune'},";
            json += "{name:'Mumbai'}";
        }
        else if (country == "USA")
        {
            json += "{name:'NY'},";
            json += "{name:'NJ'},";
            json += "{name:'Houston'}";
        }
        else if (country == "UK")
        {
            json += "{name:'London'},";
            json += "{name:'Bristol'},";
            json += "{name:'Essex'}";
        }
        json += "]}";
        context.Response.Write(json);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}