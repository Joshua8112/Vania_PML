import 'package:vania/vania.dart';

class CreateVendorsTable extends Migration {
  @override
  Future<void> up() async {
    super.up();
    await createTableNotExists('vendors', () {
      bigIncrements("vend_id");
      primary("vend_id");
      string("vend_name", unique: true, length: 50, nullable: false);
      text("vend_address");
      text("vend_kota");
      string("vend_state", length: 5);
      string("vend_zip", length: 7);
      string("vend_country", length: 25);
    });
  }

  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('vendors');
  }
}
