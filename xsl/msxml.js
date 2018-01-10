function doXMLstuff() {
  var XMLDocObj = new ActiveXObject("Msxml2.DOMDocument.3.0");
      XMLDocObj.async = false;
      XMLDocObj.load("msxml-books.xml");

  var XSLDocObj = new ActiveXObject("Msxml2.DOMDocument.3.0");
      XSLDocObj.async = false;
      XSLDocObj.load("bookstyle.xsl");

  viewer = open('','s','width=600,height=300,resizable,scrollbars');
    with(viewer.document){
      write(XMLDocObj.transformNode(XSLDocObj));
      close();
    }
}
