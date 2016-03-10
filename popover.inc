<table border="1" class="popover" style="width: 100%;">
  <thead>
    <tr style="text-align:center;"><th colspan="3" class="ou-help">Popover</th></tr>
    <tr>
      <th class="ou-help">Link Text</th>
      <th class="ou-help">Popover Header Text</th>
      <th class="ou-help">Placement</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="popover-link">Click Here for Popover Text Box</td>
      <td class="popover-header">Popover Header Text</td>
      <td class="popover-placement">
	<select onchange="
		  this.name=this[this.selectedIndex].value;
		  for(i=0;i<this.length;i++)
			this[i].removeAttribute('selected');
		  this[this.selectedIndex].setAttributeNode(document.createAttribute('selected'))
		"
		name="right" style="width:100%">
	  <option value="left">left</option>
	  <option value="right" selected>right</option>
	  <option value="top">top</option>
	  <option value="bottom">bottom</option>
	</select>
      </td>
    </tr>
    <tr><th colspan="3" class="ou-help">Popover Body Text</th></tr>
    <tr>
      <td colspan="3" class="popover-content">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
	Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. 
	Sed nisi. Nulla quis sem at nibh elementum imperdiet. 
	Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. 
	Mauris massa. Vestibulum lacinia arcu eget nulla.
      </td>
    </tr>
  </tbody>
</table>
<h3 class="wysiwyg-spacer">PRESS ENTER HERE FOR A NEW LINE-&gt;</h3>
