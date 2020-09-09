<%@ WebHandler Language="C#" Class="Captcha" %>
using System;
using System.Web;
using System.Drawing;
using System.IO;
using System.Web.SessionState;
 
public class Captcha : IHttpHandler, IReadOnlySessionState
{
   
    public void ProcessRequest (HttpContext context) {
        Bitmap bmpOut = new Bitmap(180, 30);
        Graphics g = Graphics.FromImage(bmpOut);
        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
        g.FillRectangle(Brushes.White, 0, 0, 180, 30);
        g.DrawString(context.Session["Captcha"].ToString(), new Font("Wide Latin", 18), new SolidBrush(Color.Red), 0, 0);
        MemoryStream ms = new MemoryStream();
        bmpOut.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
        byte[] bmpBytes = ms.GetBuffer();
        bmpOut.Dispose();
        ms.Close();
        context.Response.BinaryWrite(bmpBytes);
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
 
}