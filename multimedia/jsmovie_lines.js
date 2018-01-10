function InsertSampleMovie() {
document.write('<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" width="320" height="256"> ');

document.write('<param name="src" value="http://www.sarahsnotecards.com/catalunyalive/diables.mov" />');

document.write('<param name="controller" value="true" /> ');

document.write('<param name="autoplay" value="true" />');

document.write('<!--[if !IE]>-->');

document.write('<object type="video/quicktime" data="http://www.sarahsnotecards.com/catalunyalive/diables.mov"  width="320" height="260">');

document.write('<param name="autoplay" value="true" />');

document.write('<param name="controller" value="true" />');

document.write('</object>');

document.write('<!--<![endif]-->');

document.write('</object> ');
}



