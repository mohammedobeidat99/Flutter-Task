import 'package:flutter/cupertino.dart';

import '../constant/image.dart';
import '../model/item_model.dart';

List<Image> slider = [
  Image.asset(ImageApp.p5),
  Image.asset(ImageApp.p3),
  Image.asset(ImageApp.p4),
  Image.asset(ImageApp.p1),
  Image.asset(ImageApp.p2),
];

List<String> titleSlider = [
  'Arena',
  'Direct',
  'OnScrollMedia',
  'Mask Soft',
  'Cash Card'
  

 
];

List<Item> listServices = [
  Item(name: 'Web Application Development ', image: ImageApp.web),
  Item(name: 'Mobile Application Development', image: ImageApp.mobile),
  Item(name: 'Enterprise Web Development', image: ImageApp.web2 ),
  Item(name: 'CMS Integration', image: ImageApp.cms),
  Item(name: 'Full-Stack Web Development', image: ImageApp.web3),
  Item(name: 'Animation & Graphics Web Design', image: ImageApp.graphics),
  
];
