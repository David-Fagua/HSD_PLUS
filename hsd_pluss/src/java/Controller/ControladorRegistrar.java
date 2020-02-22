
package Controller;

import Model.Conexion;
import Model.Usuarios;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
 class ControladorRegistrar {
    Conexion con=new Conexion();
    JdbcTemplate JdbcTemplate=new JdbcTemplate(con.Conectar());
    ModelAndView mav=new ModelAndView();
    
    @RequestMapping("esp/Registrar.htm")
    public ModelAndView Listar(){
        String sql="select * from usuarios";
        List datos=this.JdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("esp/Registrar");
        return mav;
    }
    @RequestMapping(value = "esp/Registrar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Usuarios());
        mav.setViewName("esp/Registrar");
        return mav;
    }
    @RequestMapping(value = "esp/Registrar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Usuarios u){
        String sql="insert into usuarios(nombre, apellidos, username, clave1, clave2, rol, tipo_documento, numero_documento, email, telefono, ciudad)values(?,?,?,?,?,?,?,?,?,?,?)";
        this.JdbcTemplate.update(sql,u.getNombre(),u.getApellidos(),u.getUsername(),u.getClave1(),u.getClave2(),u.getRol(),u.getTipo_documento(),u.getNumero_documento(),u.getEmail(),u.getTelefono(),u.getCiudad());
        return new ModelAndView("redirect:/esp/Registrorealizado.htm");
    }
}
