'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "dae09654dbe4238f3984f4d579e49231",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/Killer-whale.jpg": "9c250f45122f378e787779e46f5324b1",
"assets/LICENSE": "a717a7b39bd387b297d341f4a3cf6992",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "9a62a954b81a1ad45a58b9bcea89b50b",
"index.html": "88be89e1a9b369d18109069515a70c1a",
"/": "88be89e1a9b369d18109069515a70c1a",
"main.dart.js": "93594edc8742c9cce1ab255e844f2718",
"main.dart.js.deps": "a70a8da897ef80a22129e19ba7c7ca20"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
