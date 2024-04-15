object galvan{
	var sueldo = 150000
	var deuda = 0
	var dinero = 0
	method sueldo() = sueldo
	method cobrarSueldo(){
		dinero = dinero + 0.max(sueldo - deuda)
		deuda = 0.max(deuda - sueldo)
	}
	
	method gastar(unaCantidad){
		deuda = deuda + 0.max(unaCantidad - dinero)
		dinero = 0.max(dinero - unaCantidad)
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object baigorria{
	var empanadasVendidas = 0
	var precioEmpanadas = 150
	method venderEmpanadas(unaCantidad){empanadasVendidas += unaCantidad}
	method sueldo(){
		return empanadasVendidas * precioEmpanadas
	}
}

object seniorGimenez{
	var fondo = 3000000
	method pagarA_(unaPersona){
		fondo = fondo - unaPersona.sueldo()
		unaPersona.cobrarSueldo()
	}
	method cobrarSueldo(){}
}