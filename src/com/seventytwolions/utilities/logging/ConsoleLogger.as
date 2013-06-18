package com.seventytwolions.utilities.logging {
  import com.seventytwolions.utilities.logging.interfaces.ILogger;

  import flash.external.ExternalInterface;

  /**
   * Logger that logs to js console (in Firebug)
   *
   */
  public class ConsoleLogger implements ILogger {
    /**
     * Output something to the log
     *
     * @param * object   This is what gets logged
     */
    public function trace(object : *) : void {
      if (ExternalInterface.available) {
        ExternalInterface.call('console.log', object);
      }
    }
  }
}
