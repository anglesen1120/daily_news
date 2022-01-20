part of 'source_page.dart';

extension SourcePageChildren on SourcePage {
  Widget buildHeader() {
    return ListTile(
      leading: GestureDetector(
        onTap: () => controller.onBack(),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Text(
        controller.detailSource.name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        controller.detailSource.category,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
        ),
      ),
    );
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            controller.detailSource.description,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
