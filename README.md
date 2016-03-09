# popover.snippet
jQuery popover snippet for OmniUpdate Campus CMS

In Editor:  
![snippet screenshot](https://raw.githubusercontent.com/admonkey/popover.snippet/master/snippet.screenshot.png)

Published Page:  
![popover screenshot](https://raw.githubusercontent.com/admonkey/popover.snippet/master/popover.screenshot.png)

## getting started
* snippets are site-specific, so you will need to repeat this process for each site. 
  [more info](http://support.omniupdate.com/oucampus10/reusable-content/snippets/snippets-setup.html)
* upload `popover.inc` to your snippets folder, this is usually in `/_resources/snippets`
* upload `popover.table-transform.xsl` to your folder with `interior.xsl`, usually found in `/_resources/xsl`
  * keep in mind this may only need to be uploaded to one site if you are pulling common xsl files for all sites. 
    You can see if this is the case at the top of the source in one of your .pcf files and note the `site` attribute.
    For instance, `<?pcf-stylesheet path="/xsl/interior.xsl" site="templates" title="Interior Page" extension="php"?>`
    shows that this .pcf file is pulling `interior.xsl` from the site called "templates"
* in your `interior.xsl`, after the opening `<xsl:stylesheet>` tag, add this line `<xsl:import href="popover.table-transform.xsl"/>`
* then goto content > snippets
* choose a snippet category, or create a new one
* click "+new"
* give it a name, like "popover"
* browse to the file location where the snippet is stored
* save, and now the snippet is available in the WYSIWYG toolbar or gadget sidebar
