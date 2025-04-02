package prueba.models;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDateTime;

@Entity
@Data
public class Bus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String numeroBus;
    private String placa;
    private LocalDateTime fechaCreacion = LocalDateTime.now();
    private String caracteristicas;
    private boolean activo;

    @ManyToOne
    @JoinColumn(name = "marca_id")
    private Marca marca;
}
