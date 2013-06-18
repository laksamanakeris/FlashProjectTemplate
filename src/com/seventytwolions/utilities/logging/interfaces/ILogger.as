package com.seventytwolions.utilities.logging.interfaces {
  /**
   * The logger interface used by the Log
   *
   */
  public interface ILogger {
    /**
     * Output something to the log
     *
     * @param * object   This is what gets logged
     */
    function trace(object : *) : void;
  }
}
