class Persona{
	var provincia
	method puedeSerAtendidaPor(profesional){return provincia == profesional.provinciasDondePuedeTrabajar() }
	
}

class Institucion{
	const uniReconoce = []
	
	method puedeSerAtendidaPor(universidad){return uniReconoce}
	
}
