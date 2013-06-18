package com.seventytwolions.utilities.logging {
  import com.demonsters.debugger.MonsterDebugger;
  import com.seventytwolions.utilities.logging.interfaces.ILogger;

  /**
   * Logger that adds all logged stuff to the DeMonsterDebugger
   *
   * @author rickard
   */
  public class MonsterDebuggerLogger implements ILogger {
    /**
     * Construct a MonsterDebuggerLogger
     */
    public function MonsterDebuggerLogger() {
      MonsterDebugger.initialize(this);
    }

    /**
     * Output something to the log
     *
     * @param * object   This is what gets logged
     */
    public function trace(object : *) : void {
      MonsterDebugger.trace(this, object);
    }
  }
}
