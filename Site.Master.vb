Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dir As String = ""
        If Not IsPostBack Then
            If HttpContext.Current.User.Identity.Name <> "" Then

                If HttpContext.Current.User.IsInRole("Clerk") Then
                    dir = "/Restricted Access/Clerk/DashboardClerk.aspx"
                    Dim curr As HyperLink = Page.Master.FindControl("HyperLink10")
                    curr.NavigateUrl = dir



                ElseIf HttpContext.Current.User.IsInRole("Doctor") Then


                    dir = "/Restricted Access/Doctor/DashboardDoctor.aspx"
                    Dim curr As HyperLink = Page.Master.FindControl("HyperLink10")
                    curr.NavigateUrl = dir
                ElseIf HttpContext.Current.User.IsInRole("Nurse") Then
                    dir = "/Restricted Access/Nurse/DashboardNurse.aspx"
                    Dim curr As HyperLink = Page.Master.FindControl("HyperLink10")
                    curr.NavigateUrl = dir
                End If
            Else
                Dim curr As HyperLink = Page.Master.FindControl("HyperLink10")
                curr.Visible = False
            End If
        End If
    End Sub
End Class