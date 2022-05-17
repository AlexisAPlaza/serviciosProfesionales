import profesionales.*
import universidades.*

class EmpresasServicios{
	const profesionalesContratados = []
	var honorarioReferencia
	
	method contratarA(profesional){profesionalesContratados.add(profesional)}
	
	method honorarioReferencia(honorario){honorarioReferencia = honorario}
	
	method cuantosEstudiaronEn(universidad){
		return profesionalesContratados.count{pro => pro.universidad() == universidad }
	}
	
	method profesionalesCaros(){
		return profesionalesContratados.filter{pro => pro.honorariosPorHora() > honorarioReferencia}.asSet()
	}
	
	method universidadesFormadoras(){
		
	}
	
	method profesionalMasBarato(){
		return profesionalesContratados.min{pro => pro.honorariosPorHora()}
	}
	
	method esDeGenteAcotada(){
		return profesionalesContratados.all{pro => pro.provinciasDondePuedeTrabajar().size() <= 3}
	}
}