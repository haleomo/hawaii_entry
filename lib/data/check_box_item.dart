import 'package:hawaii_entry/item_checkbox.dart';

class CheckBoxItem {
  CheckBoxItem({required this.title, required this.itemKey});
  String title;
  String itemKey;
}


List<ItemCheckBox> getLiveFloraAndFaunaCheckBoxes() {

  int index = 0;

  return liveFloraAndFauna.map((item) {
    return ItemCheckBox(title: item.title, itemKey: item.itemKey, index: index++);
  }).toList();

}

List<CheckBoxItem> liveFloraAndFauna = [
  CheckBoxItem(
    title: 'Fresh Fruit and Vegetables',
    itemKey: 'FreshFruitAndVegtables',
  ),
  CheckBoxItem(
    title: 'Cut Flowers & Foliage',
    itemKey: 'CutFlowersAndFoliage',
  ),
  CheckBoxItem(
    title: 'Rooted Plants & Plant Cuttings, or Algae',
    itemKey: 'RootedPlantsAndPlantCuttingsOrAlgae',
  ),
  CheckBoxItem(
    title: 'Raw or Propagative Seeds or Bulbs',
    itemKey: 'RawOrPropagativeSeedsOrBulbs',
  ),
  CheckBoxItem(
    title: 'Soil, Growing Media, Sand, etc.',
    itemKey: 'SoilGrowingMediaSandEtc',
  ),
  CheckBoxItem(
    title: 'Live Seafood (lobsters, clams, oysters, etc.)',
    itemKey: 'LiveSeafoodLobstersClamsOystersEtc)',
  ),
  CheckBoxItem(
    title: 'Cultures of Bacteria, Fungi, Viruses, or Protozoa',
    itemKey: 'CulturesOfBacteriaFungiVirusesOrProtozoa',
  ),
  CheckBoxItem(
    title: 'Insects, Live Fishes, Amphibians, etc.',
    itemKey: 'InsectsLiveFishesAmphibiansEtc',
  )
];

List<ItemCheckBox> getPetsCheckBoxes() {

  int index = 0;

  return pets.map((item) {
    return ItemCheckBox(title: item.title, itemKey: item.itemKey, index: index++);
  }).toList();

}

List<CheckBoxItem>  pets = [
  CheckBoxItem(
    title: 'Dogs',
    itemKey: 'Dogs',
  ),
  CheckBoxItem(
    title: 'Cats',
    itemKey: 'Cats',
  ),
  CheckBoxItem(
    title: 'Birds',
    itemKey: 'Birds',
  ),
  CheckBoxItem(
    title: 'Reptiles (Turtles, Lizards, Snakes, etc.)',
    itemKey: 'ReptilesTurtlesLizardsSnakesEtc',
  ),
  CheckBoxItem(
    title: 'Other Animals',
    itemKey: 'OtherAnimals',
  ),];
