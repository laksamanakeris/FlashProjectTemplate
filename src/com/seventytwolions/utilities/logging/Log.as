package com.seventytwolions.utilities.logging {
  import com.seventytwolions.utilities.logging.interfaces.ILogger;

  /**
   * Log functionality that uses one or more loggers
   *
   * @author rickard
   */
  public class Log {
    /**
     * @var Array   All registered loggers
     */
    private static var loggers : Array = [];

    /**
     * Register a logger to use when logging
     *
     * @param ILogger logger   The logger to register
     */
    public static function register(logger : ILogger) : void {
      loggers.push(logger);
    }

    /**
     * Output a debug message to all loggers
     *
     * @param * object   The thing to output to the log
     */
    public static function debug(object : *) : void {
      for each (var logger : ILogger in loggers) {
        logger.trace(object);
      }
    }
  }
}
