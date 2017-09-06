using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace CAD
{
    public class CADSensor
    {
        string cadena = ConfigurationManager.ConnectionStrings["miConexion"].ConnectionString;

        public bool InsertarSensor(DTOSensor Id_sen)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insertar_Sensor";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_sen", Id_sen.Id_sen1);
            cmd.Parameters.AddWithValue("@Magnitud_sen", Id_sen.Magnitud_sen1);
            cmd.Parameters.AddWithValue("@Caracteristica_sen", Id_sen.Caracteristica_sen1);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            con.Close();
            return true;
        }
        public bool ModificarSensor(DTOSensor Id_sen)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Modificar_Sensor";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_sen", Id_sen.Id_sen1);
            cmd.Parameters.AddWithValue("@Magnitud_sen", Id_sen.Magnitud_sen1);
            cmd.Parameters.AddWithValue("@Caracteristica_sen", Id_sen.Caracteristica_sen1);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            con.Close();
            return true;

        }
        public DataTable ConsultarSensor(DTOSensor Id_sen)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cadena);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Consultar_Sensor";
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            con.Close();
            return dt;
        }
    }
}
