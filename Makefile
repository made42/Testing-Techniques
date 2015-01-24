TEXFILE=main

SRCDIR=.
TMPDIR=${SRCDIR}/tmp

TEXFLAGS=-output-directory ${TMPDIR}

build: ${SRCDIR}/*.tex ${SRCDIR}/sections/*.tex
	mkdir -p ${TMPDIR}
	pdflatex ${TEXFLAGS} ${SRCDIR}/${TEXFILE}.tex
	pdflatex ${TEXFLAGS} ${SRCDIR}/${TEXFILE}.tex
	mv -f ${TMPDIR}/${TEXFILE}.pdf ${SRCDIR}/

clean:
	rm -rf ${TMPDIR}

distclean: clean
	rm ${SRCDIR}/${TEXFILE}.pdf

