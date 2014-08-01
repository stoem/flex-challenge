////////////////////////////////////////////////////////////////////////////////
//
//  Author ILYA GOLOVACH (aka IngweLand)
//  http://ingweland.com
//  ingweland@gmail.com
//  2014
//
////////////////////////////////////////////////////////////////////////////////
package
{
public class Model
{
    public static const BASE_URL:String = "http://latex.codecogs.com/gif.latex?\\LARGE%20\\bg_white%20";

    public static const EQUATIONS:Vector.<Equation> = new <Equation>[
        new Equation("\\sqrt{x}", 6),
        new Equation("\\frac{a}{b+c}", 6),
        new Equation("\\left( \\frac{a}{b} \\right) ^{2}", 13),
        new Equation("f(x)\\; =\\; (x\\; +\\; a)\\;(x\\; +\\; b)", 2)
    ];
}
}
