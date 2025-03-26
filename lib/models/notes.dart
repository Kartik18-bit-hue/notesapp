class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'What is an Operating System?',
    content:
        'An operating system is a collection of software that runs on a computer and provides the basic functions of storing and managing information, such as memory, storage devices, and network access. The operating system controls how the computer works and how it interacts with other software and hardware. For example, an operating system can control the way a computer stores and accesses data, such as files and printers. In addition to controlling how the computer works and operating system can also provide many other functions, such as security, communication, and user interface. An operating system can also be used to develop new software applications.',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 1,
    title: 'Differentiate between setState and Provider?',
    content:
        'The setState() is used for managing the local state.\nCalling the setState() function notifies the framework about the change in the state of the object and that may affect the user interaction in the subtree.Whereas, provider is a state management technique in Flutter that allows widgets to access data from a central location (i.e., a "provider"). Providers can be used to manage the application state, such as user authentication or data fetched from an API',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 2,
    title: 'Can you describe how to implement internationalization in a Flutter app?',
    content:
        'Flutter provides the Intl package, which allows you to add support for multiple languages to your app. You can use the package to define messages in different languages, format numbers, dates, and times, and apply pluralization rules based on the language.',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
  Note(
    id: 3,
    title: 'Can you tell us some differences between const and final in Flutter?',
    content: 'The only difference between const and final is that the const variables are evaluated at compile-time and are immutable whereas final variables are evaluated at runtime and can only be set once.',
   modifiedTime: DateTime(2023,1,4,16,53),
  ),
  Note(
    id: 4,
    title: 'What is the difference between Expanded and Flexible?',
    content:
        'Flexible takes the least space needed to fit in a child widget. On the other hand, expanded takes the rest of the size in the widget.',
    modifiedTime: DateTime(2023,5,1,11,6),
  ),
  Note(
    id: 5,
    title: 'What is the popular database packages in Flutter?',
    content:
        '1. Firebase: It is used to use or modify the cloud database\n2. Sqflite: It is used to modify the SQLite database.',
   modifiedTime: DateTime(2023,1,6,13,9),
  ),
    Note(
    id: 6,
    title: 'What is the purpose of a key in Flutter?',
    content: "In Flutter, a Keyis an object that identifies a widget. It is used to maintain the state of the widget and to optimize the rendering performance of the app.When a widget is built, Flutter assigns a unique identity to it based on its location in the widget tree. However, when the widget tree is modified, such as when a widget is added, removed, or moved, the identity of the widgets can change. This can cause unexpected behavior and can lead to performance issues.To solve this problem, Flutter provides the Key class, which can be used to assign a unique identity to a widget that persists even if the widget tree is modified. \nKeys can be used to match widgets across different builds of the widget tree, ensuring that the state of the widget is preserved correctly.\n2There are two main types of keys in Flutter:\n3GlobalKey: This key is used to identify a widget from anywhere in the app. It is commonly used when a widget needs to be accessed or updated from multiple parts of the app, such as when managing the state of a form.\n4LocalKey: This key is used to generate an unique key automatically and identify a widget based on a specific value, object identity.UniqueKey: This key is used generate unique key for every rebuild with the help of UniqueKey constructor. it ensures no two widgets having same key.ValueKey: This key is used to identify a widget based on specific value with the help of ValueKey constructor. It is commonly used when managing a list of items, such as in a ListView, where all items in the list are unique.ObjectKey: This key is used to identify a widget based on its object identity with the help of ObjectKey constructor. It is also used when managing a list of items, such as in a ListView, where the position of the item can change but its identity remains the same.",
   modifiedTime: DateTime(2023,3,7,11,12),
  ),
  Note(
    id: 7,
    title: 'What is the difference between push and pushReplacement methods in Flutter?',
    content:
        'In Flutter, push and pushReplacement are two methods that are used to navigate between different screens in an app. Both methods are available on the Navigator class, which manages the navigation stack in a Flutter app.',
    modifiedTime: DateTime(2023,2,1,15,14),
  ),
  Note(
    id: 8,
    title: 'What is the purpose of the Flex widget in Flutter?',
    content:
        'The Flex widget is used to create a flexible container that can be used to create complex layouts in a Flutter application. The Flex widget provides properties such as direction, mainAxisSize, and mainAxisAlignment, CrossAxisAlignment which can be used to control the layout of its children.For example, a developer could use the direction property of the Flex widget to create a horizontal or vertical layout and use the mainAxisAlignment property to align its children to the start, center, or end of the container.',
    modifiedTime: DateTime(2023,2,1,12,34),
  ),
];
