using CAD;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sitio_web_SCE.html5
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DTOUsuario dts = new DTOUsuario();
            //CADUsuario datos = new CADUsuario();
            //gvUsuario.DataSource = datos.ConsultarUsuario(dts);
            //gvUsuario.DataBind();
        }

        protected void btnGuardarC_Click(object sender, EventArgs e)
        {
            DTOUsuario Usu = new DTOUsuario();
            Usu.Codigo = int.Parse(txtCodigoC.Text);
            Usu.Nombre = txtNombreC.Text;
            Usu.Apellido = txtApellidoC.Text;
            Usu.Tipo_doc = ddlTipo_documento.Text;
            Usu.Numero_doc = int.Parse(txtNumero_documentoC.Text);
            Usu.Edad = int.Parse(txtEdadC.Text);
            Usu.Sexo = ddlSexoC.Text;
            Usu.Telefono = int.Parse(txtTelefonoC.Text);
            Usu.Correo = txtCorreoC.Text;
            Usu.Usuario = txtUsuarioC.Text;
            Usu.Contraseña = txtContraseñaC.Text;
            Usu.Codigo_rol = int.Parse(ddlRol.Text);
            CADUsuario datos = new CADUsuario();
            bool existe = datos.insertarUsuario(Usu);
            Response.Redirect("inicio.aspx#usuario");
            
        }

        protected void btnModificarC_Click(object sender, EventArgs e)
        {
            DTOUsuario Usu = new DTOUsuario();
            Usu.Codigo = int.Parse(txtCodigoC.Text);
            Usu.Nombre = txtNombreC.Text;
            Usu.Apellido = txtApellidoC.Text;
            Usu.Tipo_doc = ddlTipo_documento.Text;
            Usu.Numero_doc = int.Parse(txtNumero_documentoC.Text);
            Usu.Edad = int.Parse(txtEdadC.Text);
            Usu.Sexo = ddlSexoC.Text;
            Usu.Telefono = int.Parse(txtTelefonoC.Text);
            Usu.Correo = txtCorreoC.Text;
            Usu.Usuario = txtUsuarioC.Text;
            Usu.Contraseña = txtContraseñaC.Text;
            Usu.Codigo_rol = int.Parse(ddlRol.Text);
            CADUsuario datos = new CADUsuario();
            bool existe = datos.modificarUsuario(Usu);
            Response.Redirect("inicio.aspx#usuario");

        }

        protected void btnListarC_Click(object sender, EventArgs e)
        {
            oculto.Visible = false;

            btnVolver.Visible = true;

            DTOUsuario dts = new DTOUsuario();
            CADUsuario datos = new CADUsuario();
            gvUsuario.DataSource = datos.ConsultarUsuario(dts);
            gvUsuario.DataBind();
            
             
        }

        protected void btnEliminarC_Click(object sender, EventArgs e)
        {
            DTOUsuario Usu = new DTOUsuario();
            Usu.Codigo = int.Parse(txtCodigoC.Text);
            CADUsuario datos = new CADUsuario();
            bool existe = datos.ELiminarUsuario(Usu);
            Response.Redirect("inicio.aspx#usuario");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx#usuario");
        }

        protected void btnGuardarSe_Click(object sender, EventArgs e)
        {
            DTOSensor sen = new DTOSensor();
            sen.Id_sen = int.Parse(txtCodigoSe.Text);
            sen.Magnitud_sen1 = txtMagnitudSe.Text;
            sen.Caracteristica_sen1 = txtCaracteristicaSe.Text;
            CADSensor datos = new CADSensor();
            bool existe = datos.InsertarSensor(sen);
            Response.Redirect("inicio.aspx#sensores");
            
        }

        protected void btnModificarSe_Click(object sender, EventArgs e)
        {
            DTOSensor sen = new DTOSensor();
            sen.Id_sen = int.Parse(txtCodigoSe.Text);
            sen.Magnitud_sen1 = txtMagnitudSe.Text;
            sen.Caracteristica_sen1 = txtCaracteristicaSe.Text;
            CADSensor datos = new CADSensor();
            bool existe = datos.ModificarSensor(sen);
            Response.Redirect("inicio.aspx#sensores");
        }

        protected void btnListarSe_Click(object sender, EventArgs e)
        {
            ocultarSen.Visible = false;

            btnVolverSen.Visible = true;

            DTOSensor dts = new DTOSensor();
            CADSensor datos = new CADSensor();
            gvSensor.DataSource = datos.ConsultarSensor(dts);
            gvSensor.DataBind();
        }

        protected void btnVolverSen_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx#sensores");
        }
    }
}