<div class="division-topbar">
    <div class="container">
        <div class="clearfix">
            <a href="http://www.uiowa.edu/" class="uiowa" target="_blank">
                <img src="{$ThemeDir}/images/uiowa-black.png" alt="The University of Iowa" width="177">
            </a>
		    <% if SearchForm %>
		    	<a href="#" class="search-toggle">Search</a>
		    <% end_if %>
        </div>
        <% if SearchForm %>
        <div class="division-search">
        <% with SearchForm %>
            <form $FormAttributes>
	            <label for="divisionsearchinput">Search</label>
                <input type="search"  id="divisionsearchinput" placeholder="Search" results="5" name="Search" class="division-search-input">
                <input type="submit" class="division-search-btn" value="search">
            </form>
        <% end_with %>
        </div>
        <% end_if %>    
     </div>
</div>
