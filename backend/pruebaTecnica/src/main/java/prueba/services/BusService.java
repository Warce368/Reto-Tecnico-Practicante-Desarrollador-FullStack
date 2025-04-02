package prueba.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import prueba.models.Bus;
import prueba.repositories.BusRepository;

import java.util.List;
import java.util.Optional;

@Service
public class BusService {

    @Autowired
    private BusRepository busRepository;

    public List<Bus> obtenerTodosLosBuses() {
        return busRepository.findAll();
    }

    public Optional<Bus> obtenerBusPorId(Long id) {
        return busRepository.findById(id);
    }
}
