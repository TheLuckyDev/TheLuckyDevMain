<?php
/******************************************************************************
 *
 *	 COMPANY: Intelliants LLC
 *	 PROJECT: Subrion Content Management System
 *	 VERSION: 3.1.7
 *	 LICENSE: http://www.subrion.com/license.html
 *	 http://www.subrion.com/
 *
 *	 This program is an open source php content management system.
 *
 *	 Link to Subrion.com may not be removed from the software pages
 *	 without permission of Subrion CMS respective owners. Copyright
 *	 link may be removed for the paid versions only.
 *
 *	 PHP code copyright notice may not be removed from source code
 *	 in any case.
 *
 *	 Copyright 2009-2014 Intelliants LLC
 *	 http://www.intelliants.com/
 *
 ******************************************************************************/


if (iaView::REQUEST_HTML == $iaView->getRequestType())
{
	$iaCore->iaSmarty->compile_check = true;

	foreach ($iaCore->iaView->blocks['left'] as $key => $block)
	{
		if ('iafontawesome_nav' != $block['name'])
		{
			unset($iaCore->iaView->blocks['left'][$key]);
		}
	}

	unset($iaCore->iaView->blocks['right']);

	$iaPage = $iaCore->factory('page', iaCore::FRONT);
	$page = $iaPage->getByName($iaView->name());

	$activePage = 'iafontawesome';
	if (!empty($iaCore->requestPath))
	{
		$activePage = $iaCore->requestPath[0];

		iaBreadcrumb::toEnd(iaLanguage::get('iafontawesome_' . $activePage), IA_URL . 'iafontawesome/');
	}
	$iaView->assign('active_page', $activePage);

	$iaView->display($activePage);
}