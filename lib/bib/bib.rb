

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

