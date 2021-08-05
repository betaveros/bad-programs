import scala.language.implicitConversions

object Juxtaposition extends App {
  implicit def int2mul(x: Int) = (y: Int) => x * y

  println(8/2(2+2))
}
