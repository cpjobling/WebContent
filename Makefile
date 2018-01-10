all:	lecture15.zip lecture16.zip lecture17.zip lecture18.zip \
	lecture19.zip lecture20.zip lecture21.zip upload

lecture21.zip: forms.html images/* forms/* cgi-bin/*
	zip lecture21.zip forms.html images/* forms/* cgi-bin/*

lecture20.zip: xml.html images/* xml/* xsl/*
	zip lecture20.zip xml.html images/* xml/* xsl/*


lecture19.zip: multimedia.html images/* multimedia/*
	zip lecture19.zip multimedia.html images/* multimedia/*

lecture18.zip: dhtml.html images/*  scripts/* javascript/* css-effects/*
	zip lecture18.zip dhtml.html images/* scripts/* javascript/* css-effects/*

lecture17.zip: more-html.html images/* lists/* tables/* frames/*
	zip lecture17.zip more-html.html images/* lists/* tables/* frames/*
	
lecture16.zip: css.html images/* textformat/* styles-layout/*
	zip lecture16.zip css.html images/* textformat/* styles-layout/*


lecture15.zip: basic-html.html basic-html/* selectors/* 
	zip lecture15.zip basic-html.html basic-html/* selectors/*


upload: 
	./permissions.sh
	./transfer.sh
	touch upload

clean:
	find . -name '*.*~' -name '*~' -exec rm "{}" \;
	-rm lecture18.zip lecture20.zip lecture17.zip \
		lecture15.zip lecture16.zip lecture19.zip lecture21.zip

