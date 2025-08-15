DOC := draft-ietf-idr-rfc4360-bis
DOC_RAW := raw-${DOC}

all: xml
	  /usr/bin/xml2rfc --text --html ${DOC}.xml 

xmllint:
	  /usr/bin/xmllint ${DOC_RAW}.xml > ${DOC}.xml.tmp

xml: xmllint
	  /usr/bin/mv ${DOC}.xml.tmp ${DOC}.xml

clean:
	  /usr/bin/rm -f ${DOC}.xml.tmp ${DOC}.xml ${DOC}.txt ${DOC}.html
