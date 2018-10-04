
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
}

class ProfesionalVinculado {
	var universidad
	var lista = []
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() {return lista.add(universidad.provincia())}
	method honorariosPorHora() {return universidad.honorarioPorHora()}
}

class ProfesionalLibre {
	var universidad
	var honorarios
	var lista = []
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method dondePuedeTrabajar(pcia) {lista.add(pcia)}
	method ProvDondePuedeTrabajar() {return lista}
	method setHonorariosPorHora(honor) {honorarios = honor}
	method honorariosPorHora() {return honorarios}
}

class Universidad {
	var provincia
	var honorarios
	
	method setProvincia(prov) {provincia=prov}
	method provincia() {return provincia}
	method queHonorarioRecomienda(honor) {honorarios = honor}
	method honorarioPorHora() {return honorarios}
}
