

module Bib



  	class Bib

			attr_accessor :autores, :titulo, :serie, :editorial, :numEdicion, :fecha, :numISBN


		def initialize(a,b,c,d,e,f,g)
			@autores = a
			@titulo = b
			@serie = c 
			@editorial = d
			@numEdicion = e
			@fecha = f
			@numISBN = g
		end

	
		def obtenerAutores()
			return @autores
		end

		def obtenerTitulo()
			return @titulo
		end

		def obtenerSerie()
			return @serie
		end

		def obtenerEditorial()
			return @editorial
		end


		def obtenerFechaPub()
			return @fecha
		end

		def obtenerNumEdicion()
			return @numEdicion
		end



		def obtenerNumIsbn()
			return @numISBN
		end

		def obtenerRefer()
			"#{autores.join(", ")}.\n#{titulo}\n(#{serie})\n#{editorial}; #{numEdicion} edicion #{fecha}\n#{numISBN.join("\n")}"

		end



	end

#Estructura del nodo compuesta por la informacion, un puntero a siguiente y un puntero a anterior
Node = Struct.new(:value, :next, :anterior)



#Clase Lista de nodos	
class Lista 

	attr_accessor :cabeza, :tail

	#constructor 
	def initialize()
		@cabeza = nil
		@tail = nil
	end

	def valueGet()
		return @cabeza.value
	end




	#Se extrae el primer elemento de la lista
	def pop_ini ()
				
		if(@cabeza == @tail)
			@cabeza = nil
			@tail = nil

		else			
			aux = @cabeza
			@cabeza = @cabeza.next
			@cabeza.anterior = nil
			aux.value
		end		
	end


	def pop_fin()	
		if (@cabeza == @tail)
			@cabeza = nil
			@tail = nil
		else
			aux = @tail
	    		@tail = @tail.anterior
	    		@tail.next = nil
	    		aux.anterior = nil
	    		aux.value   
		end
	end



	#Insertar por principio
	def push_ini (nodo) 
		a = Node.new(nodo, nil)
		#si la lista esta vacia
		if @cabeza == nil
			@cabeza = nodo
			@tail = nodo

		#si la lista no esta vacia
		else 
			nodo.next = @cabeza
			@cabeza.anterior = nodo
			@cabeza = nodo
			nodo.anterior=nil
		end
	end


	#Insertar por final
	def push_fin(nodo)
		
		if @tail == nil
			@tail =nodo
			@cabeza = nodo
		else
			@tail.next = nodo
			nodo.anterior = @tail
			@tail = nodo
		end
	end

	
end




