<?php

// LatestBlogPost Widget 0.0.1 for the SilverStripe Blog Module
// 07.06.2009
// By nivanka@whynotonline.com
// Save this and LatestBlogPost.ss to widget_latestblogpost/ and run "db/build".

class LatestBlogPost extends Widget{

	static $title = "Latest Blog Post";
	static $cmsTitle = "Latest Blog Post";
	static $description = "With this plugin you can show up the latest blog post from any blog set up on your website.";

	static $db = array(
		"Blog" => "Int",
		"NumberOfPosts" => "Int",
	);


	//get the wanted data from the user
	function getCMSFields(){
		
		$blogs = DataObject::get('BlogHolder');
		$blogsDD = array();
		foreach($blogs as $blog)		
			$blogsDD[$blog->ID] = $blog->Title;

		return new FieldSet(
			new DropdownField("Blog", "Select a Blog", $blogsDD, $this->Blog ),
			new NumericField("NumberOfPosts", "Number of Posts")	
		);

	}

	//get the blog posts as the parameters provided
	function blogPosts(){
		$posts = DataObject::get('BlogEntry', 'ParentID = ' . $this->Blog, 'Date', $this->numberOfPosts);
		return $posts;
	}

}

?>
