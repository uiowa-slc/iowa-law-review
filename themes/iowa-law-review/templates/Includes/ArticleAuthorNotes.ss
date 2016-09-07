				<div class="author-notes text-wrap">
					<% loop $Authors %>
							<% if $BiographicalDetails || $ArticleNote %>
							<span class="asterisks">$Asterisks</span>
							<span class="details">
							<% if $BiographicalDetails %>
								$BiographicalDetails
							<% end_if %>
							<% if $ArticleNote %>
								<br />
								<br />
								$ArticleNote
							<% end_if %>
							<% if not $Last %>
								<hr />
							<% end_if %>
							</span>
						<% end_if %>
					<% end_loop %>
					<% if JointAuthorNotes %>
						<hr />
						<div class="joint-author-notes">
							$JointAuthorNotes
						</div>
					<% end_if %>
				</div>