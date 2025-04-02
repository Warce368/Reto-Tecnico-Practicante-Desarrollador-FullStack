import { useState, useEffect } from "react";

function App() {
  const [buses, setBuses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [searchId, setSearchId] = useState(""); // Estado para almacenar el valor de búsqueda por ID

  useEffect(() => {
    fetch("http://localhost:8080/bus")
      .then((response) => response.json())
      .then((data) => {
        setBuses(data);
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching buses:", error);
        setLoading(false);
      });
  }, []);

  // mensaje de cargando
  if (loading) {
    return <div className="flex items-center justify-center h-screen -z-0">Cargando...</div>;
  }




  // Filtrar los buses por ID
  const filteredBuses = buses.filter(
    (bus) => bus.id.toString().includes(searchId) // Convertir ID a string y verificar si contiene el valor buscado
  );

  

  return (
    <div className="min-h-screen bg-[#1E1E2F] flex flex-col items-center p-6">
      <h1 className="text-3xl font-bold mb-6 text-[#F0F0F0]">Lista de Buses</h1>

      {/* Campo de búsqueda */}
      <input
        type="text"
        value={searchId}
        onChange={(e) => setSearchId(e.target.value)} // Actualizar el estado con el valor del input
        placeholder="Buscar por ID"
        className="mb-4 p-2 border border-gray-300 rounded-md text-[aliceblue]"
      />

      <div className="w-full max-w-6xl overflow-hidden rounded-lg shadow-lg">
        <table className="w-full bg-white rounded-lg shadow-md">
          <thead className="bg-[#1F1F1F] text-[#A9B8C2] uppercase text-sm leading-normal">
            <tr>
              <th className="py-3 px-6 text-left">ID</th>
              <th className="py-3 px-6 text-left">Número de Bus</th>
              <th className="py-3 px-6 text-left">Placa</th>
              <th className="py-3 px-6 text-left">Fecha de Creación</th>
              <th className="py-3 px-6 text-left">Características</th>
              <th className="py-3 px-6 text-left">Estado</th>
              <th className="py-3 px-6 text-left">Marca</th>
            </tr>
          </thead>
          <tbody className="text-[#EDEDED] text-sm font-light bg-[#2D2D3B]">
            {filteredBuses.map((bus) => (
              <tr
                key={bus.id}
                className="border-b border-gray-200 hover:bg-gray-100 transition"
              >
                <td className="py-3 px-6">{bus.id}</td>
                <td className="py-3 px-6">{bus.numeroBus}</td>
                <td className="py-3 px-6">{bus.placa}</td>
                <td className="py-3 px-6">
                  {new Date(bus.fechaCreacion).toLocaleDateString()}
                </td>
                <td className="py-3 px-6">{bus.caracteristicas}</td>
                <td className="py-3 px-6">
                  <span
                    className={`px-3 py-1 rounded-full text-xs font-semibold ${
                      bus.activo
                        ? "bg-green-200 text-green-700"
                        : "bg-red-200 text-red-700"
                    }`}
                  >
                    {bus.activo ? "Activo" : "Inactivo"}
                  </span>
                </td>
                <td className="py-3 px-6">{bus.marca.nombre}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default App;
