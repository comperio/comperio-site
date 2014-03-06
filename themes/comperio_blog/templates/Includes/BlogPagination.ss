<% if BlogEntries.MoreThanOnePage %>
	<div id="PageNumbers">

        <ul class="pager">
            <% if BlogEntries.NotFirstPage %>
                <li class="previous">
                    <a href="$BlogEntries.PrevLink" title="View the previous page">&larr; Prev</a>
                </li>
            <% end_if %>
            <% control BlogEntries.PaginationSummary(4) %>
					<% if CurrentBool %>
                        <li class="active"><a href="#">$PageNum</a></li>
					<% else %>
						<% if Link %>
                            <li><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
						<% else %>
                            <li class="disabled"><a href="#">...</a></li>
						<% end_if %>
					<% end_if %>
				<% end_control %>
            
            <% if BlogEntries.NotLastPage %>
            <li class="next">
                <a href="$BlogEntries.NextLink" title="View the next page">Next &rarr;</a>
            </li>
            <% end_if %>
        </ul>
	</div>
<% end_if %>