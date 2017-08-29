package js.npm.rgbquant;

/**
 * https://github.com/leeoniya/RgbQuant.js - sources
 * http://o-0.me/RgbQuant/ - playground
 */
@:jsRequire("rgbquant")
extern class RgbQuant
{
	function new(opts:RgbQuantOptions) : Void;
	
	/**
	 * Performs histogram analysis.
	 * @param	image May be any of <img>, <canvas>, Context2D, ImageData, Typed Array, Array.
	 * @param	width Is required if image is an array.
	 */
	function sample(image:Dynamic, ?width:Int) : Void;
	
	/**
	 * Retrieves the palette, building it on first call.
	 * @param	tuples if true will return an array of [r,g,b] triplets, otherwise a Uint8Array is returned by default.
	 * @param	noSort if true will disable palette sorting by hue/luminance and leaves it ordered from highest to lowest color occurrence counts.
	 */
	function palette(?tuples:Bool, ?noSort:Bool) : Dynamic;
	
	/**
	 * Quantizes an image.
	 * @param	image May be any of <img>, <canvas>, Context2D, ImageData, Typed Array, Array.
	 * @param	retType Determines returned type. 1 - Uint8Array (default), 2 - Indexed array.
	 * @param	dithKern Is a dithering kernel that can override what was specified in global opts.
	 * @param	dithSerp Can be true or false and determines if dithering is done in a serpentine pattern.
	 */
	function reduce(image:Dynamic, retType:Int, ?dithKern:String, ?dithSerp:Bool) : Dynamic;
	
	inline function paletteAsTypedArray(?noSort:Bool) : js.html.Uint8Array return palette(false, noSort);
	inline function paletteAsTuples(?noSort:Bool) : Array<Array<Int>> return palette(true, noSort);
	
	inline function reduceAsTypedArray(image:Dynamic, ?dithKern:String, ?dithSerp:Bool) : js.html.Uint8Array return reduce(image, 1, dithKern, dithSerp);
	inline function reduceAsArray(image:Dynamic, ?dithKern:String, ?dithSerp:Bool) : Array<Int> return reduce(image, 2, dithKern, dithSerp);
}
