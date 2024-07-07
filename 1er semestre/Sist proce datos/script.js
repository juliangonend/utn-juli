function mostrarDatos() {
    vnombre = document.getElementById("nombre").value;
    vapellido = document.getElementById("apellido").value;
    vdni = document.getElementById("dni").value;
    vfecha = document.getElementById("fecha").value;
    vdomiciolio = document.getElementById("domicilio").value;
    vlocalidad = document.getElementById("localidad").value;

    // Verifica si los checkboxes están marcados o no
    vbox1 = document.getElementById("box1").checked ? "Sí" : "No";
    vbox2 = document.getElementById("box2").checked ? "Sí" : "No";
    vbox3 = document.getElementById("box3").checked ? "Sí" : "No";
    vbox4 = document.getElementById("box4").checked ? "Sí" : "No";
// Obtener niveles de conocimiento usando la función obtenerNivel
    
    nivelBox1 = obtenerNivel(document.getElementById("range5").value);
    nivelBox2 = obtenerNivel(document.getElementById("range6").value);
    nivelBox3 = obtenerNivel(document.getElementById("range7").value);
    nivelBox4 = obtenerNivel(document.getElementById("range8").value);

    /* Imprime los datos */
    document.write("<div style='background-color: #333; color: #fff; padding: 10px; margin-top: 10px; border-radius: 5px;'>");
    document.write("<strong>Los datos ingresados fueron:</strong> <br/>");
    document.write("<strong>Apellido:</strong> " + vapellido + "<br/>");
    document.write("<strong>Nombre:</strong> " + vnombre + "<br/>");
    document.write("<strong>DNI:</strong> " + vdni + "<br/>");
    document.write("<strong>Fecha de nacimiento:</strong> " + vfecha + "<br/>");
    document.write("<strong>Domicilio:</strong> " + vdomiciolio + "<br/>");
    document.write("<strong>Localidad:</strong> " + vlocalidad + "<br/>");
    document.write("<strong>Español:</strong> " + vbox1 + " - <strong>Nivel:</strong> " + nivelBox1 + "<br/>");
    document.write("<strong>Ingles:</strong> " + vbox2 + " - <strong>Nivel:</strong> " + nivelBox2 + "<br/>");
    document.write("<strong>Frances:</strong> " + vbox3 + " - <strong>Nivel:</strong> " + nivelBox3 + "<br/>");
    document.write("<strong>Chino:</strong> " + vbox4 + " - <strong>Nivel:</strong> " + nivelBox4 + "<br/>");
    document.write("</div>");

    document.write("<div style='background-color: #ccc; color: #000; padding: 10px; margin-top: 10px; border-radius: 5px;'>");
    document.write("<strong>Gracias por sus datos</strong>");
    document.write("</div>");

    function obtenerNivel(valor) {
        if (valor <= 25) {
            return "Básico";
        } else if (valor <= 50) {
            return "Intermedio";
        } else if (valor <= 75) {
            return "Avanzado";
        } else {
            return "Experto";
        }
        }

}
function updateMeter(meterId, rangeId) {
    const meter = document.getElementById(meterId);
    const range = document.getElementById(rangeId);
    meter.value = range.value;
}
