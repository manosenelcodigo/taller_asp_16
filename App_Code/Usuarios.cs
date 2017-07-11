using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class Usuarios : Conexion
{
    private SqlDataReader registro;
    private SqlConnection con;
    public Usuarios()
    {
        this.con = getConexion();
    }
    public SqlDataReader getUsuarios()
    {
        conectar();
        String sql = "select id,nombre,correo from usuarios order by id desc; ";
        SqlCommand comando = new SqlCommand(sql, this.con);
        this.registro = comando.ExecuteReader();
        return this.registro;
    }
}
