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
public class Equation
{
    /**
     * @private     cursorPosition
     */
    private var _cursorPosition:int;

    public function get cursorPosition():int
    {
        return _cursorPosition;
    }

    /**
     * @private     formula
     */
    private var _formula:String;

    public function get formula():String
    {
        return _formula;
    }

    public function Equation(formula:String, cursorPos:int = 0)
    {
        _formula = formula;
        _cursorPosition = cursorPos;
    }
}
}
