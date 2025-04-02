package prueba.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import prueba.models.Bus;
import prueba.services.BusService;

import java.util.List;
import java.util.Optional;

//local del vite-react
@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/bus")
public class BusController {

    @Autowired
    private BusService busService;

    // Endpoint para obtener todos los buses
    @GetMapping
    public List<Bus> obtenerTodosLosBuses() {
        return busService.obtenerTodosLosBuses();
    }

    // Endpoint para obtener un bus por su ID
    @GetMapping("/{id}")
    public Optional<Bus> obtenerBusPorId(@PathVariable Long id) {
        return busService.obtenerBusPorId(id);
    }
}