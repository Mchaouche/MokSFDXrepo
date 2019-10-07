trigger First_test on Account (before insert) {
    System.debug('Hello World!');
}