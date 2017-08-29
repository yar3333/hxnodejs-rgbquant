package js.npm.rgbquant;

typedef RgbQuantOptions =
{
	/**
	 * Desired palette size (256).
	 */
    @:optional var colors : Int;
    
	/**
	 * Histogram method, 2: min-population threshold within subregions; 1: global top-population (2).
	 */
    @:optional var method : Int;
    
	/**
	 * Subregion dims if method = 2 ([64, 64]).
	 */
    @:optional var boxSize : Array<Int>;
    
	/**
	 * Min-population threshold if method = 2 (2);
	 */
    @:optional var boxPxls : Int;
    
	/**
	 * Count of top-occurring colors  to start with if method = 1 (4096).
	 */
    @:optional var initColors : Int;
    
	/**
	 * Count of colors per hue group to evaluate regardless of counts, to retain low-count hues (0).
	 */
    @:optional var minHueCols : Int;
    
	/**
	 * Dithering kernel name: 
     * FloydSteinberg
     * FalseFloydSteinberg
     * Stucki
     * Atkinson
     * Jarvis
     * Burkes
     * Sierra
     * TwoSierra
     * SierraLite
	 */
    @:optional var dithKern : String;
    
	/**
	 * Dithering threshhold (0-1) e.g: 0.05 will not dither colors with <= 5% difference (0).
	 */
    @:optional var dithDelta : Float;
    
	/**
	 * Enable serpentine pattern dithering (false).
	 */
    @:optional var dithSerp : Bool;
    
	/**
	 * A predefined palette to start with in r,g,b tuple format: [[r,g,b],[r,g,b]...].
	 */
    @:optional var palette : Array<Array<Int>>;
    
	/**
	 * Affects predefined palettes only.
	 * If true, allows compacting of sparsed palette once target palette size is reached. 
	 * Also enables palette sorting. (false)
	 */
    @:optional var reIndex : Bool;
    
	/**
	 * Enables caching for perf usually, but can reduce perf in some cases, like pre-def palettes (true).
	 */
    @:optional var useCache : Bool;
    
	/**
	 * Min color occurance count needed to qualify for caching (10).
	 */
    @:optional var cacheFreq : Int;
    
    /**
     * Method used to determine color distance, can be "euclidean" or "manhattan".
     */
	@:optional var colorDist : String;
}
