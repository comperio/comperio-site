<div class="page-results container" role="main" id="main">
    <div class="row-fluid">
        <div class="span9">
            <h1>$Title</h1>

            <% if Results %>
            <ul id="SearchResults">
                <% control Results %>
                <li>
                    <% if MenuTitle %>
                    <h3><a class="searchResultHeader" href="$Link">$MenuTitle</a></h3>
                    <% else %>
                    <h3><a class="searchResultHeader" href="$Link">$Title</a></h3>
                    <% end_if %>
                    <% if Content %>
                        $Content.FirstSentence(text)
                    <% end_if %>
                    <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                </li>
                <% end_control %>
            </ul>
            <% else %>
            <p>Sorry, your search query did not return any results.</p>
            <% end_if %>

            <% if Results.MoreThanOnePage %>
            <div id="PageNumbers">
                
                    <ul class="pager">
                        <% if Results.NotFirstPage %>
                            <li class="previous">
                                <a href="$Results.PrevLink">&larr; Prev</a>
                            </li>
                        <% end_if %>
                        <% if Results.NotLastPage %>
                        <li class="next">
                            <a href="$Results.NextLink">Next &rarr;</a>
                        </li>
                        <% end_if %>
                    </ul>

            </div>
            <% end_if %>
        </div>
        <div class="span3">
            <% if Menu(2) %>
            <% include SideBar %>
            <% end_if %>
        </div>
    </div>
</div>
