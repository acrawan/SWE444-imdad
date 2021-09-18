import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mm_feed extends StatelessWidget {
  mm_feed({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffededed),
        body: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 14.3, end: 32.3),
              Pin(size: 222.1, middle: 0.2129),
              child:
                  // Adobe XD layer: 'posted request MM' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'card' (shape)
                        SvgPicture.string(
                      _svg_o5vgvu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 1.0, end: 24.9),
                    child: SvgPicture.string(
                      _svg_bwe4oi,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 262.0, start: 41.8),
                    Pin(size: 133.0, middle: 0.3829),
                    child:
                        // Adobe XD layer: 'card_info' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 71.0, middle: 0.7592),
                          Pin(size: 11.0, end: 2.0),
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SizedBox(
                                width: 30.0,
                                height: 11.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 50.0, end: -51.0),
                                      Pin(start: -2.0, end: -10.0),
                                      child: Text(
                                        '12000',
                                        style: TextStyle(
                                          fontFamily: 'Europa-Light',
                                          fontSize: 14,
                                          color: const Color(0xff334856),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 60.0, end: -20.0),
                          Pin(size: 18.0, end: 0.0),
                          child: Text(
                            ':المبلغ',
                            style: TextStyle(
                              fontFamily: 'Europa-Bold',
                              fontSize: 15,
                              color: const Color(0xff334856),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 9.0),
                          Pin(size: 66.0, middle: 0.6567),
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              child: SizedBox(
                                width: 56.0,
                                height: 25.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 270.0, end: 150.0),
                                      Pin(start: 0.0, end: -40.0),
                                      child: Text(
                                        'المسجد يحتاج سجاد جديد ونظيف المسجد يحتاج سجاد جديد ونظيف المسجد يحتاج سجاد جديد ونظيف المسجد يحتاج سجاد جديد ونظيف \n',
                                        style: TextStyle(
                                          fontFamily: 'Europa-Light',
                                          fontSize: 14,
                                          color: const Color(0xff334856),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 4.0),
                          Pin(size: 25.0, start: 0.0),
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SizedBox(
                                width: 103.0,
                                height: 25.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 240.0, end: 155.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Text(
                                        'تغيير سجاد',
                                        style: TextStyle(
                                          fontFamily: 'Europa-Bold',
                                          fontSize: 20,
                                          color: const Color(0xff334856),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 45.0, end: 20.7),
                    Pin(size: 36.0, start: 22.1),
                    child:
                        // Adobe XD layer: 'image' (shape)
                        SvgPicture.string(
                      _svg_lu4l,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 19.7, start: 10.7),
                    Pin(size: 19.7, start: 11.8),
                    child:
                        // Adobe XD layer: 'cancel_icon' (shape)
                        SvgPicture.string(
                      _svg_fghwvy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(size: 91.0, end: 0.0),
              child:
                  // Adobe XD layer: 'manger bar' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'background_wbar' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: const Color(0xdeffffff),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 22.0, middle: 0.7466),
                    Pin(size: 28.5, middle: 0.4846),
                    child:
                        // Adobe XD layer: 'profile_icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 4.6, end: 4.4),
                          Pin(size: 13.0, start: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              border: Border.all(
                                  width: 2.0, color: const Color(0xff4a5759)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 12.6, end: 0.0),
                          child: SvgPicture.string(
                            _svg_hfkd7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 30.0, middle: 0.5),
                    Pin(size: 29.9, middle: 0.5),
                    child:
                        // Adobe XD layer: 'post_icon' (shape)
                        SvgPicture.string(
                      _svg_znb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 25.4, middle: 0.2471),
                    Pin(size: 28.2, middle: 0.4869),
                    child:
                        // Adobe XD layer: 'icn_home_active' (shape)
                        SvgPicture.string(
                      _svg_lm11yt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(size: 99.0, start: 0.0),
              child:
                  // Adobe XD layer: 'nav bar' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'background_bar' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0),
                        ),
                        color: const Color(0xdeedd03c),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 244.0, middle: 0.4946),
                    Pin(size: 30.0, middle: 0.6957),
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: 170.0,
                          height: 34.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 250.0, end: 73.0),
                                Pin(start: 0.0, end: -4.0),
                                child: Text(
                                  'الصفحة الرئيسية',
                                  style: TextStyle(
                                    fontFamily: 'Noto Sans Oriya',
                                    fontSize: 24,
                                    color: const Color(0xff334856),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_o5vgvu =
    '<svg viewBox="23.3 91.9 381.5 222.1" ><defs><filter id="shadow"><feDropShadow dx="0" dy="5" stdDeviation="10"/></filter></defs><path transform="translate(23.25, 91.87)" d="M 16.93047332763672 0 L 364.5695190429688 0 C 373.9199829101562 0 381.5 8.858325004577637 381.5 19.78561782836914 L 381.5 202.3362884521484 C 381.5 213.2635803222656 373.9199829101562 222.1219024658203 364.5695190429688 222.1219024658203 L 16.93047332763672 222.1219024658203 C 7.580032348632812 222.1219024658203 0 213.2635803222656 0 202.3362884521484 L 0 19.78561782836914 C 0 8.858325004577637 7.580032348632812 0 16.93047332763672 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_bwe4oi =
    '<svg viewBox="23.3 288.1 381.5 1.0" ><path transform="translate(23.25, 288.1)" d="M 0 0 L 381.5 0" fill="none" stroke="#f0f3f4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lu4l =
    '<svg viewBox="339.0 114.0 45.0 36.0" ><path transform="translate(339.01, 114.0)" d="M 0 33.75 C 0 34.9924201965332 1.007578134536743 36 2.25 36 L 6.75 36 C 7.992422103881836 36 9 34.9924201965332 9 33.75 L 9 11.25 L 0 11.25 L 0 33.75 Z M 40.72218704223633 20.25 C 41.97797012329102 19.02726554870605 42.75 17.62453079223633 42.75 16.10789108276367 C 42.75 12.39117240905762 39.81164169311523 9.51328182220459 36.56812286376953 7.466485023498535 C 33.61921691894531 5.605313301086426 30.89882659912109 3.404531955718994 28.6959342956543 0.7010164260864258 L 28.125 0 L 27.55406188964844 0.7010156512260437 C 25.35117149353027 3.404531240463257 22.63148307800293 5.606015682220459 19.6818733215332 7.466484069824219 C 16.4383602142334 9.513280868530273 13.5 12.3911714553833 13.5 16.10789108276367 C 13.5 17.62453079223633 14.2720308303833 19.02726554870605 15.52781295776367 20.25 L 40.72218704223633 20.25 Z M 42.75 22.5 L 13.5 22.5 C 12.25757789611816 22.5 11.25 23.50757789611816 11.25 24.75 L 11.25 33.75 C 11.25 34.9924201965332 12.25757789611816 36 13.5 36 L 15.75 36 L 15.75 31.5 C 15.75 30.25757789611816 16.75757789611816 29.25 18 29.25 C 19.24242210388184 29.25 20.25 30.25757789611816 20.25 31.5 L 20.25 36 L 24.75 36 L 24.75 30.9375 C 24.75 27.5625 28.125 25.875 28.125 25.875 C 28.125 25.875 31.5 27.5625 31.5 30.9375 L 31.5 36 L 36 36 L 36 31.5 C 36 30.25757789611816 37.0075798034668 29.25 38.25 29.25 C 39.4924201965332 29.25 40.5 30.25757789611816 40.5 31.5 L 40.5 36 L 42.75 36 C 43.9924201965332 36 45 34.9924201965332 45 33.75 L 45 24.75 C 45 23.50757789611816 43.9924201965332 22.5 42.75 22.5 Z M 4.5 0 C 4.5 0 0 2.25 0 6.75 L 0 9 L 9 9 L 9 6.75 C 9 2.25 4.5 0 4.5 0 Z" fill="#edd03c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fghwvy =
    '<svg viewBox="34.0 103.6 19.7 19.7" ><path transform="translate(31.41, 101.72)" d="M 12.44279003143311 1.928033471107483 C 6.990582466125488 1.928033471107483 2.570700645446777 6.347914695739746 2.570700645446777 11.80012321472168 C 2.570700645446777 17.2523307800293 6.990581512451172 21.67221450805664 12.44279003143311 21.67221450805664 C 17.89500045776367 21.67221450805664 22.31488037109375 17.2523307800293 22.31488037109375 11.800124168396 C 22.31488037109375 6.347916603088379 17.89499855041504 1.92803430557251 12.44279003143311 1.92803430557251 Z M 12.44279003143311 19.82119750976562 C 8.012883186340332 19.82119750976562 4.421717166900635 16.23003196716309 4.421717166900635 11.800124168396 C 4.421717166900635 7.370216846466064 8.012883186340332 3.779050827026367 12.44279003143311 3.779050827026367 C 16.8726978302002 3.779050827026367 20.46386528015137 7.370216846466064 20.46386528015137 11.800124168396 C 20.46386528015137 16.23003196716309 16.87269973754883 19.82119750976562 12.44279003143311 19.82119750976562 Z M 15.52781867980957 6.864078521728516 L 12.44279003143311 9.949106216430664 L 9.357762336730957 6.864078521728516 L 7.506746292114258 8.715095520019531 L 10.59177398681641 11.80012321472168 L 7.506746292114258 14.88515090942383 L 9.357762336730957 16.73616790771484 L 12.44279003143311 13.6511402130127 L 15.52781867980957 16.73616790771484 L 17.37883567810059 14.88515090942383 L 14.29380702972412 11.80012321472168 L 17.37883567810059 8.715095520019531 L 15.52781867980957 6.864078521728516 Z" fill="#edd03c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hfkd7 =
    '<svg viewBox="-8.1 21.2 22.0 12.6" ><path transform="translate(-9.07, 10.74)" d="M 1 23.10021209716797 L 1 19.29084777832031 C 1 14.45588302612305 4.955879688262939 10.50000190734863 9.790844917297363 10.50000190734863 L 14.18626689910889 10.50000190734863 C 19.02123260498047 10.50000190734863 22.97711181640625 14.45588302612305 22.97711181640625 19.29084777832031 L 22.97711181640625 23.10021209716797" fill="none" stroke="#4a5759" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_znb =
    '<svg viewBox="219.0 866.6 30.0 29.9" ><path transform="translate(210.04, 857.61)" d="M 37.09713745117188 22.03587532043457 L 25.83255004882812 22.03587532043457 L 25.83255004882812 10.82383441925049 C 25.83255004882812 9.801389694213867 24.99208068847656 8.96484375 23.96484375 8.96484375 C 22.93760681152344 8.96484375 22.09713745117188 9.801389694213867 22.09713745117188 10.82383441925049 L 22.09713745117188 22.03587532043457 L 10.83255004882812 22.03587532043457 C 9.805305480957031 22.03587532043457 8.96484375 22.87242317199707 8.96484375 23.89486694335938 C 8.96484375 24.40609359741211 9.174957275390625 24.87084007263184 9.513481140136719 25.2077808380127 C 9.851997375488281 25.54472351074219 10.31892395019531 25.75386047363281 10.83255004882812 25.75386047363281 L 22.09713745117188 25.75386047363281 L 22.09713745117188 36.96590042114258 C 22.09713745117188 37.47711944580078 22.3072509765625 37.94186782836914 22.64578247070312 38.27880859375 C 22.98429870605469 38.61575698852539 23.45122528076172 38.82489013671875 23.96484375 38.82489013671875 C 24.99208068847656 38.82489013671875 25.83255004882812 37.98834228515625 25.83255004882812 36.96590042114258 L 25.83255004882812 25.75386047363281 L 37.09713745117188 25.75386047363281 C 38.12437438964844 25.75386047363281 38.96484375 24.91731262207031 38.96484375 23.89486694335938 C 38.96484375 22.87242317199707 38.12437438964844 22.03587532043457 37.09713745117188 22.03587532043457 Z" fill="#4a5759" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lm11yt =
    '<svg viewBox="119.5 866.6 25.4 28.2" ><path transform="translate(118.47, 865.57)" d="M 13.6943302154541 19.02281379699707 C 11.18680858612061 19.02281379699707 8.99272632598877 21.06017684936523 8.99272632598877 23.72441673278809 L 8.99272632598877 28.89618110656738 L 8.992725372314453 29.20962333679199 L 1 29.20962333679199 L 1 11.65696907043457 L 13.6943302154541 1 C 13.6943302154541 1 26.3886604309082 11.65696907043457 26.3886604309082 11.65696907043457 L 26.3886604309082 29.20962333679199 L 18.39593505859375 29.20962333679199 L 18.23921394348145 28.89618110656738 L 18.23921394348145 23.72441482543945 C 18.39593505859375 21.06017684936523 16.20184898376465 19.02281379699707 13.6943302154541 19.02281379699707" fill="none" stroke="#4a5759" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
