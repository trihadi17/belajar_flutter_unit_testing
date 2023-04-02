import 'package:belajar_unit_testing/person.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //* Cek berdasarkan group (bisa mengecek sekaligus didalam satu group didalam satu class)
  group('Mengecek Class Person : ', () {
    //? Panggil Object
    Person p;
    p = Person();

    //* Cek berdasarkan variable/nilai
    test("Inisialisasi Object Person", () {
      print('test 1');
      // fungsi untuk check = actual (object yang akan di checknya) & matcher (object untuk mencocokkan nya)
      expect(p.name, equals('no name'));
      expect(p.umur, equals(0));
    });

    test('Age harus positif', () {
      print('test 2');
      p.age = -5;
      expect(p.age,
          isPositive); // isPostive = merupakan salah satu fitur matcher untuk cek apakah actual nya bernilai positif atau tidak
    });

    //* unit testing pada list
    test('Angka harus 3 buah bilangan positif', () {
      print('test 3');
      // allof([]) -> yaitu menggabungkan banyak matcher. maximal 7 matcher
      // hasLength() -> matcher untuk cek length atau panjang nya
      // isNot()
      // isNegative -> apakah dia negatif atau tidak
      // anyElement() -> dia cek ada gak salah satu nilai
      expect(p.luckyNumbers,
          allOf(hasLength(equals(3)), isNot(anyElement(isNegative))));
    });
  });

  //setup() -> untuk menaruh kodingan yang akan dijalankan disetiap tes yang akan kita buat
  //setup() -> dilakukan untuk persiapan tes, misal nya konek database dll
  setUp(() {
    print('set up');
  });

  //teardown() -> dilakukan setiap kali kita sudah melakukan test (penutup dari tes setelah setup)
  tearDown(() {
    print('tear down');
  });
}
