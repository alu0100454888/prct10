require 'spec_helper'
require "bib"

#Describimos las distintas librerias

describe Bib do
 	before :each do 

#------------------------------------------------------------------
		@Bib1 = Bib::Referencia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,"(July 7,2013)",
			["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
	

		@Node1 = Node.new(@Bib1, nil)

#---------------------------------------------------------------------

		@Bib2 = Bib::Referencia.new(['Scott Chacon'], 'Pro Git 2009th Edition', '(Pro). Apress', '2009',' (August 27, 2009)',['ISBN-13: 978-1430218333', 'ISBN-10: 1430218339'])
	

		@Node2 = Node.new(@Bib2, nil)


#---------------------------------------------------------------------

		@Bib3 = Bib::Referencia.new(['David Flanagan', 'Yukihiro Matsumoto'],' The Ruby Programming Language.',' O’Reilly Media', '1', '(February 4, 2008)',['ISBN-10: 0596516177','ISBN-13: 978-0596516178'])
	

		@Node3 = Node.new(@Bib3, nil)
	
		
#---------------------------------------------------------------------

		@Bib4 = Bib::Referencia.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpecBook', 'Behaviour Driven Development with RSpec', 'Cucumber, and Friends (The Facets of Ruby)','Pragmatic
Bookshelf', '1','(December 25, 2010)', ['ISBN-10: 1934356379.' ,'ISBN-13: 978-1934356371'])
	

		@Node4 = Node.new(@Bib4, nil)


#---------------------------------------------------------------------

		@Bib5 = Bib::Referencia.new(['Richard E', 'Silverman Git Pocket Guide'], 'O’Reilly Media;', '1','(August 2, 2013)',['ISBN-10: 1449325866.','ISBN-13: 978-1449325862.'])
	

		@Node5 = Node.new(@Bib5, nil)	
	end
end
#---------------------------------------------------------------------


	

describe Bib::Lista do
	before :each do

		@lista=Bib::Lista.new()

	        	@lista.push_ini(@Node1)
			@lista.push_ini(@Node1)
			@lista.push_ini(@Node3)
			@lista.push_ini(@Node4)
			@lista.push_ini(@Node5)
	end

context "Biblio" do

	context " Node  " do

		it "#Debe existir un Nodo de la lista con sus datos y su siguiente" do
			expect(@lista.cabeza != nil)
		end
	end 
	
	context "List" do 

	 	it "Se extrae el primer elemento de la lista" do
			expect(@lista).to respond_to :pop_ini	
		end


		it "Se puede insertar un elemento" do
			@lista.push_ini(@Node1)
	 		expect(@lista.cabeza).to eq(@Node1) 		  
	      	end


		it "Se pueden insertar varios elementos" do
			@lista.push_ini(@Node1)
                  	@lista.push_ini(@Node2)
                  	expect(@lista.cabeza).to eq(@Node2)
	        end

	      
		it "Debe existir una Lista con su cabeza" do
			expect(@lista.cabeza == nil)
	      	end

	end




#**************************************************************
#**************************************************************

#Pruebas para Libro

describe Bib::Libro do
	before :each do
		@Lib1 = Bib::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide","The Facets of Ruby","Pragmatic Bookshelf",4,"(July 7,2013)",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
	

		@Node1 = Bib::Node.new(@Lib1, nil)	
	end

		it "Existe uno nodo de la clase Libro" do
			expect(@Lib1.class) == Bib::Libro
		end


		it "Comprobamos que existe una editorial" do
			expect(@Lib1.editorial) == "Pragmatic Bookshelf"
		end

		it "Comprobamos que existe numEdicion" do
			expect(@Lib1.numEdicion) == 4
		end


		it "Comprobamos que existe numISBN" do
			expect(@Lib1.numISBN) == ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]
		end	
end


#*************************************************
#*************************************************
	
#Prueba para periodicos

describe Bib::Periodico do

	before :each do
		@Per1 = Bib::Periodico.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpecBook', 'Behaviour Driven Development with RSpec', 'Pragmatic
Bookshelf', '1','(December 25, 2010)', ['ISBN-10: 1934356379.' ,'ISBN-13: 978-1934356371'])
	

		@Node1 = Bib::Node.new(@Per1, nil)	
	end

		it "Existe uno nodo de la clase Periodico" do
			expect(@Per1.class) == Bib::Periodico
		end

		it "Comprobamos que existe un autor" do
			expect(@Per1.numEdicion) == 1
		end
end


#**************************************************
#***************************************************

describe Bib::ArticuloPeriodico do

	before :each do
		@Art1 = Bib::ArticuloPeriodico.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpecBook', 'Behaviour Driven Development with RSpec', 'Pragmatic
Bookshelf', '1','(December 25, 2010)', ['ISBN-10: 1934356379.' ,'ISBN-13: 978-1934356371'])
	

		@Node1 = Bib::Node.new(@Art1, nil)	
	end

		it "Existe uno nodo de la clase ArticuloPeriodico" do
			expect(@Art1.class) == Bib::ArticuloPeriodico
		end

		it "Comprobamos el numero de edicion" do
			expect(@Art1.numEdicion) == 1
		end
end




end


describe Bib::Apa do

	before :each do 
		@apa = Bib::Apa.new

		@Libro1 = Bib::Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide","The Facets of Ruby","Pragmatic Bookshelf",4,"(July 7,2013)",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
		@Libro2 = Bib::Libro.new(["Dave  Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide","The Facets of Ruby","Pragmatic Bookshelf",4,"(July 7,2012)",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])


		
	end

	
	# Las expectativas:

	it "Existe APA" do
		expect(@apa).to be_kind_of(Bib::Apa)
	end





	it "Se muestra primero el Apellido y despues el nombre" do

		@apa.insertarReferencia(@Libro1)
         	expect(@apa.autor_APA(@Libro1.autores[0]) == "Thomas, Dave").to eq(true)
	end


	


	it "Expectativa titulo normalizado" do
         expect(@Libro1.titulo == "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide").to eq(true)
      end


	
	

end

	


puts "ALL OK SPEC"	

end


	

