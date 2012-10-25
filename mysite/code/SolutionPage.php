<?php
/**
 * Clavis is an Integrated Library Management System developed by Comperio srl.
 * Discovery is an OPAC bundled witch Clavis.
 * Copyright (C) 2000 - 2012 Comperio srl
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by
 * the Free Software Foundation with the addition of the following permission
 * added to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED
 * WORK IN WHICH THE COPYRIGHT IS OWNED BY COMPERIO, COMPERIO DISCLAIMS THE
 * WARRANTY OF NON INFRINGEMENT  OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program; if not, see http://www.gnu.org/licenses or write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301 USA.
 *
 * You can contact Comperio srl headquarters at Via Nazionale, 154
 * 35048 Stanghella (Padova), ITALY, or at email address info@comperio.it.
 * Website: http://www.comperio.it
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License
 * version 3, these Appropriate Legal Notices must retain the display of the
 * "Powered by Comperio" logo. If the display of the logo is not reasonably
 * feasible for technical reasons, the Appropriate Legal Notices must display
 * the words "Powered by Comperio".
 *
 * Sources should be available via "Download" link available in all pages.
 * All modifications and changes should be delivered via patches to base
 * source release to simplify identification of changes.
 *
 * For Commercial Licenses and support please contact Comperio.
 *
 * @author Nicolò Martini <nicolo@comperio.it>
 * @link http://www.comperio.it/
 * @copyright Copyright &copy; 2006-2012 Comperio srl
 * @license http://www.gnu.org/licenses/agpl.html GNU Affero General Public License
 * @version $Id$
 */
class SolutionPage extends Page
{
    public static $db = array(
        "LinkedTags" => "Text"
    );

    function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab("Root.Content.Main", new TextField("LinkedTags", _t("SolutionPage.LinkedTags", "Linked Tags (comma sep.)"),""));

        return $fields;
    }

    /**
     * Returns all blog entries that have at least one tag that is included in
     * LinkedTags property
     *
     * @param int $limit
     * @return DataObjectSet|mixed
     */
    public function LinkedBlogEntries($limit = 5)
    {
        if (!$this->LinkedTags)
            return new DataObjectSet();

        $tags = explode(',', $this->LinkedTags);

        $sqlTagsClauses = array_map(function($tag)
        {
            $tag = Convert::raw2sql(trim($tag));
            return sprintf("Tags LIKE '%%%s%%'", $tag);
        }, $tags);

        $sqlTagsClause = implode(' OR ', $sqlTagsClauses);

        $blogEntries = DataObject::get('BlogEntry', $sqlTagsClause, 'Date DESC', '', $limit);

        $blogEntries->Link = 'comperio-blog/tag/' . $this->LinkedTags;

        return $blogEntries;
    }
}

class SolutionPage_Controller extends Page_Controller
{

}
