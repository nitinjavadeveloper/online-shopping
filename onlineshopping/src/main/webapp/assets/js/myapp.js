$(function()
{	
	switch(menu)	
	{
	case 'About Us':
		$('ul #about').addClass('active');
		break;
		
	case 'Contact Us':
		$('ul #contact').addClass('active');
		break;
		default:
			$('ul #home').addClass('active');
break;
	}
	
});