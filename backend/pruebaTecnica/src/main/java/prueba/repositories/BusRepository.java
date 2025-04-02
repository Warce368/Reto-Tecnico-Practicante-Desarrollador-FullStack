package prueba.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import prueba.models.Bus;

public interface BusRepository extends JpaRepository<Bus, Long> {
}
