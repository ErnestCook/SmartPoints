Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim uname As String
        uname = Environment.UserName.ToString

        If Roles.IsUserInRole(uname, "Tellers") Then
            SiteMapDataSource1.SiteMapProvider = "teller"
        ElseIf Roles.IsUserInRole(uname, "TellerAdmin") Then
            SiteMapDataSource1.SiteMapProvider = "telleradmin"
        ElseIf Roles.IsUserInRole(uname, "Administrators") Then
            SiteMapDataSource1.SiteMapProvider = "admin"
        Else
            SiteMapDataSource1.SiteMapProvider = "default"
        End If
    End Sub

    
End Class