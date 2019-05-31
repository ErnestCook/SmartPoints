Imports System
Imports System.Security.Principal

Public Class index
    Inherits System.Web.UI.Page
  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim uName As String

        'lets get the username
        uName = Environment.UserName.ToString

        'lets send the user to the correct initialial screen
        If (Roles.IsUserInRole(uName, "Tellers")) Then
            Response.Redirect("~/Teller/MemberLookup.aspx")
        ElseIf (Roles.IsUserInRole(uName, "TellerAdmin")) Then
            Response.Redirect("~/Teller/MemberLookup.aspx")
        ElseIf (Roles.IsUserInRole(uName, "Administrators")) Then
            Response.Redirect("~/Teller/MemberLookup.aspx")
        Else
            Response.Write(uName & "is not authorized for this application")
            'Response.Redirect("~/notAuthorized.aspx")
        End If
       
    End Sub

End Class