<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta charset="utf-8"/>
    <title>Conexión</title>
    <link href="/public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">Conexión</div>
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Correo</th>
                        </thead>
                        <tbody>
                            <%
                                while (getFilas().Read())
                                {
                                    %>
                                    <tr>
                                        <td><%=getFilas()["id"] %></td>
                                        <td><%=getFilas()["nombre"] %></td>
                                        <td><%=getFilas()["correo"] %></td>
                                    </tr>
                                    <%
                                }
                             %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
