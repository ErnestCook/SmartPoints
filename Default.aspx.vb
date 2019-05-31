Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            If Not Roles.IsUserInRole("Members") Then
                Label1.Visible = False
                lblPoints.Visible = False
            End If
            If Not IsPostBack Then
                If Roles.IsUserInRole("Members") Then
                    'if the user logged in is a MEMBER then we need to get some data
                    Label1.Visible = True
                    lblPoints.Visible = True
                    getData()
                End If
            End If
        Catch ex As Exception
            Dim objMSG = New clsMsg()
            objMSG.LastException = ex
            objMSG.lastSQL = "N/A"
            Response.Redirect("showError.aspx")
        End Try
    End Sub

    Function getData() As DataTable
        'get basic info to show on screen
        Dim dt As DataTable = Nothing
        Try
            Dim uId As String = ""
            Dim objSP = New clsSP()

            uId = Membership.GetUser().ProviderUserKey.ToString
            dt = objSP.getMemberPointsSummary(uId)
            If dt.Rows.Count > 0 Then
                For Each row As DataRow In dt.Rows
                    If Not IsDBNull(row("spoints")) Then
                        lblPoints.Text = row("sPoints")
                        lblName.Text = row("datasafe_mbr_name")
                    Else
                        lblPoints.Text = "0"
                    End If
                Next
            Else
                lblPoints.Text = "0"
            End If

        Catch ex As Exception
            Dim objMSG = New clsMsg()
            objMSG.LastException = ex
            objMSG.lastSQL = "N/A"
            Response.Redirect("showError.aspx")
        End Try
        Return dt
    End Function

End Class