part of 'page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is ListKasus)
            ? ListKasus()
            : (pageState is ListProvinsi) ? ListProvinsiPage() : HomePage());
  }
}
