/*
 * MIT License
 *
 * Copyright (c) 2021 itsamedood
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
 * Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
 * THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package colictionary;

/**
 * Represents a color in the Colictionary.
 */
abstract Color(Int) from Int from UInt to Int to UInt
{
	public static inline var TRANSPARENT:Color = 0x00000000;
	public static inline var BLACK:Color = 0xFF000000;
	public static inline var WHITE:Color = 0xFFFFFFFF;
	public static inline var RED:Color = 0xFFFF0000;
	public static inline var GREEN:Color = 0xFF00FF00;
	public static inline var BLUE:Color = 0xFF0000FF;
	public static inline var CYAN:Color = 0xFF00FFFF;
	public static inline var MAGENTA:Color = 0xFFFF00FF;
	public static inline var YELLOW:Color = 0xFFFFFF00;

	/**
	 * Creates a new color.
	 * @param ARGB Color in ARGB format.
	 */
	public inline function new(ARGB:Int)
	{
		this = ARGB;
	}

	/**
	 * Converts an ARBG hex string to a color.
	 * @param ARGB Hex string in ARGB format.
	 * @return Color based of the given hex string.
	 */
	@:from public static inline function fromString(ARGB:String):Color
	{
		return new Color(Std.parseInt(ARGB));
	}

	/**
	 * Creates a new color from the given individual color integers.
	 * @param A Alpha.
	 * @param R Red.
	 * @param G Green.
	 * @param B Blue.
	 * @return Color based on the given integers.
	 */
	public static inline function fromIntARGB(A:Int, R:Int, G:Int, B:Int):Color
	{
		return new Color((A << 24) | (R << 16) | (G << 8) | B);
	}

	/**
	 * Creates a new color from the given individual color floats.
	 * @param A Alpha.
	 * @param R Red.
	 * @param G Green.
	 * @param B Blue.
	 * @return Color based on the given floats.
	 */
	public static inline function fromFloatARGB(A:Float, R:Float, G:Float, B:Float):Color
	{
		return fromIntARGB(Std.int(A * 255), Std.int(R * 255), Std.int(G * 255), Std.int(B * 255));
	}
}
