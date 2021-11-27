all: fig.pdf

sumaprueba.x: sumaprueba.cpp

%.x: %.cpp
	g++ $< -o $@

datos.txt: sumaprueba.x
	./$< > $@

fig.pdf: plot.gp datos.txt
	gnuplot $<

clean:
	rm -f a.out *.x *.txt *.pdf
