/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * @author 		"Michael Archbold (ma&#64;distriqt.com)"
 * @created		08/01/2016
 * @copyright	http://distriqt.com/copyright/license.txt
 */
package com.distriqt.test.getipv6controller
{
	import com.distriqt.extension.getipv6controller.GetIpv6Controller;
	
	import flash.display.Bitmap;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.net.NetworkInfo;
	import flash.net.NetworkInterface;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	/**	
	 */
	public class GetIpv6ControllerTests extends Sprite
	{
		public static const TAG : String = "";
		
		private var _l : ILogger;
		
		private function log( log:String ):void
		{
			_l.log( TAG, log );
		}
		
		
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function GetIpv6ControllerTests( logger:ILogger )
		{
			_l = logger;
			try
			{
				log( "GetIpv6Controller Supported: " + GetIpv6Controller.isSupported );
				if (GetIpv6Controller.isSupported)
				{
					log( "GetIpv6Controller Version:   " + GetIpv6Controller.service.version );
				}
				
			}
			catch (e:Error)
			{
				trace( e );
			}
		}
		
		
		////////////////////////////////////////////////////////
		//  
		//
		
		public function getIpv6():void
		{
			log( "getIpv6()" );
			
			
			function convertIp( ip:String ):void
			{
				var ipData:String = GetIpv6Controller.instance.getIpv6( ip );
				log( ip + " => " + ipData );
			}
			
			
			convertIp( "10.1.1.193" );
			convertIp( "192.0.2.1" );
			
			
		}
		
		
	}
	
}
