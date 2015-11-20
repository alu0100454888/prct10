require 'spec_helper'
require "bib"

#Describimos las distintas librerias

describe Bib do
 	before :each do 

#------------------------------------------------------------------
		@Bib1 = Bib::Bib.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,"(July 7,2013)",
			["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
	

		@Node1 = Node.new(@Bib1, nil)

#---------------------------------------------------------------------

		@Bib2 = Bib::Bib.new(['Scott Chacon'], 'Pro Git 2009th Edition', '(Pro). Apress', '2009',' (August 27, 2009)',['ISBN-13: 978-1430218333', 'ISBN-10: 1430218339'])
	

		@Node2 = Node.new(@Bib2, nil)


#---------------------------------------------------------------------

		@Bib3 = Bib::Bib.new(['David Flanagan', 'Yukihiro Matsumoto'],' The Ruby Programming Language.',' O’Reilly Media', '1', '(February 4, 2008)',['ISBN-10: 0596516177','ISBN-13: 978-0596516178'])
	

		@Node3 = Node.new(@Bib3, nil)
	
		
#---------------------------------------------------------------------

		@Bib4 = Bib::Bib.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpecBook', 'Behaviour Driven Development with RSpec', 'Cucumber, and Friends (The Facets of Ruby)','Pragmatic
Bookshelf', '1','(December 25, 2010)', ['ISBN-10: 1934356379.' ,'ISBN-13: 978-1934356371'])
	

		@Node4 = Node.new(@Bib4, nil)


#---------------------------------------------------------------------

		@Bib5 = Bib::Bib.new(['Richard E', 'Silverman Git Pocket Guide'], 'O’Reilly Media;', '1','(August 2, 2013)',['ISBN-10: 1449325866.','ISBN-13: 978-1449325862.'])
	

		@Node5 = Node.new(@Bib5, nil)	
	end
end
#---------------------------------------------------------------------
	
