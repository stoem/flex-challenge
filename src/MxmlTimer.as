package {

    import flash.events.Event;
    import flash.events.TimerEvent;
    import flash.utils.Timer;
    
    import mx.core.IMXMLObject;
    import mx.core.UIComponent;

    /**
     * Be carefull. Binding doesn't work if component removed from stage
     */
    public class MxmlTimer extends Timer implements IMXMLObject {

        private var _holder : UIComponent;

        private var _destroyed : Boolean;

        private var _triggerAfterStart : Boolean;

        public function MxmlTimer() {
            super(1000);
            addEventListener(TimerEvent.TIMER, onTimer, false, 1);
        }

        public function set triggerAfterStart(value : Boolean) : void {
            _triggerAfterStart = true;
        }
        
        public function get triggerAfterStart() : Boolean {
            return _triggerAfterStart;
        }

        public function set working(value : Boolean) : void {
            if (!running && value && !_destroyed) {
                start();
                if (triggerAfterStart) {
                    dispatchEvent(new TimerEvent(TimerEvent.TIMER));
                }
            } else if (running && !value) {
                stop();
            }
        }

        public function get working() : Boolean {
            return running;
        }

        public function set holder(value : UIComponent) : void {
            _holder = value;
        }

        public function doDestroy() : void {
            _destroyed = true;
            reset();
        }

        private function onTimer(event : Event) : void {
            if (_holder && !_holder.stage) {
                // stop timer if parent component removed from stage
                // binding doesn't work if component was removed
                event.stopImmediatePropagation();
                working = false;
            }
        }

        public static function destroyTimer(... timers) : void {
            for each (var timer : MxmlTimer in timers) {
                if (timer) {
                    timer.doDestroy();
                }
            }
        }

        public function initialized(document : Object, id : String) : void {
            
        }
    }
}
