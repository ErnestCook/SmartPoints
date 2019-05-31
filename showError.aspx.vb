Public Class showError
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Me.MessageTextBox.Text = "Error Message: " & clsMsg.LastException.Message.ToString() & vbLf & vbLf & _
                "SQL/Msg: " & clsMsg.lastSQL.ToString() & vbLf & vbLf & _
                "Stack Trace: " & clsMsg.LastException.StackTrace.ToString()
        Catch
        End Try

        '     Me.MessageTextBox.Text = "Smart Points Error Caught" & vbLf & "Error in: " & _
        '        Request.Url.ToString() & vbLf & vbLf & _
    End Sub

End Class