package pt.iade.simuwater.models.results;

public class SimpleResult {
  private String message;
  private Object object;

  public SimpleResult(String message, Object object) {
    this.message = message;
    this.object = object;
  }

  public String getMessage() {
    return message;
  }

  public Object getObject() {
    return object;
  }
}