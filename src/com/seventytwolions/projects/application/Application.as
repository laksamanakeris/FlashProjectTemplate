package com.seventytwolions.projects.application {
  import com.seventytwolions.utilities.logging.Log;
  import com.seventytwolions.utilities.logging.MonsterDebuggerLogger;

  import flash.display.Sprite;
  import flash.events.Event;

  /**
   * The main class that runs the app
   */
  public class Application extends Sprite {
    /**
     * The constructor
     */
    public function Application() {
      Log.register(new MonsterDebuggerLogger());
      Log.debug('Initialized...');

      this.addEventListener(Event.ADDED, onLoad);
    }

    /**
     * Is triggered when the flash is loaded
     * @param event Event The event
     */
    private function onLoad(event : Event) : void {
      stage.addChild(this);
    }
  }
}
