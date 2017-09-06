//Creamos dos variables que tendrán las expresiones regulares a ser comprobadas
//Una para el correo y otra para verrficar solo letra

$(document).ready(function () {
    var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
    var expr1 = /^[a-zA-Z]*$/;

    $("#btnGuardarC").click(function () {
        var Codigo = $("#txtCodigoC").val();
        var Nombre = $("#txtNombreC").val();
        var Apellido = $("#txtApellidoC").val();
        var Tipo_Documento = $("#ddlTipo_documento").val();
        var Numero_Documento = $("#txtNumero_documentoC").val();
        var Edad = $("#txtEdadC").val();
        var Sexo = $("#ddlSexoC").val();
        var Telefono = $("#txtTelefonoC").val();
        var Correo = $("#txtCorreoC").val
        var Usuario = $("#txtUsuarioC").val();
        var Contraseña = $("#txtContraseñaC").val();
        var Rol = $("#ddlRol").val();

        $("#txtNombreC, #txtApellidoC, #txtUsuarioC, #txtContraseñaC ").keyup(function () {
            if ($(this).val() != "" && expr1.test($(this).val())) {
                $("#txtNombreC, #txtApellidoC, #txtUsuarioC, #txtContraseñaC").fadeOut();
                return false;
            }
        });

        $("#txtCorreoC").keyup(function () {
            if ($(this).val() != "" && expr.test($(this).val())) {
                $("#txtCorreoC").fadeOut();
                return false;
            }
        });

    });

    var valido = false;
    $("#btnGuardarC").keyup(function (e) {

        if (pass != re_pass) {
            $("#btnGuardarC").css({ "background": "#F22" }); //El input se pone rojo
            valido = true;
        }
        else if (pass == re_pass) {
            $("#btnGuardarC").css({ "background": "#8F8" }); //El input se ponen verde
            $("#btnGuardarC").fadeOut();
            valido = true;
        }
    });//fin keyup repass

});//fin ready