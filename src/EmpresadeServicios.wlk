import profesionales.*
import universidades.*

class EmpresaDeServicios {
	const profesionales =[]
	var referencia
	
	method agregarProfesional(prof) {profesionales.add(prof)}
	method setHonorarioDeReferencia(honor) {referencia = honor}
	method honorarioDeReferencia() {return referencia}
	method profesionalesCaros(){
		return profesionales.filter({profesionales.honorarioDeReferencia()})<profesionales.honorariosPorHora()}
	method universidadesFormadoras() {
		return profesionales.universidades().asSet()}
	method profesionalMasBarato(){
		return profesionales.min({prof=>prof.honorariosPorHora()})}
	method provinciaCubierta(provincia){
		return profesionales.any({prof=>prof.provinciasDondePuedeTrabajar()==provincia})
	}
	method cuantosEstudiaronEn(universidad){
		return profesionales.filter({prof=>prof.universidad()==universidad}).size()
	}
	
}