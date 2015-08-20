ZIP=zip
OUTPUT_ARCHIVE=../mapyourwaste-osmtracker-layout.zip
LAYOUT_XML=$(wildcard *.xml)
README=README
ICONS=$(wildcard *.png)
ALL_FILES=${LAYOUT_XML} ${ICONS} ${README}

${OUTPUT_ARCHIVE}: ${ALL_FILES}
	${ZIP} -r $@ $^

.PHONY: clean
clean:
	rm -f ${OUTPUT_ARCHIVE}
