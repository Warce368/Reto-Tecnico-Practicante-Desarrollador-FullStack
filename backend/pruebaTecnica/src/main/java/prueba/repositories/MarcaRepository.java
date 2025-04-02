package prueba.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import prueba.models.Marca;

public interface MarcaRepository extends JpaRepository<Marca, Long> {
}