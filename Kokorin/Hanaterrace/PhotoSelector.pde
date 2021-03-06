class PhotoSelector {
  String[] photoNames = {"HanaterracePhoto.jpg"};
  int photoIndex;
  int displayCounter;
  int displaySecond;
  int reloadCounter;
  int reloadSecond;
  PImage img;
  TweetSelector tweet;

  PhotoSelector() {
    photoIndex = 0;  // initial photoIndex
    img = loadImage(photoNames[photoIndex]);
    tweet = new TweetSelector();
    displayCounter = 0;
    reloadCounter = 0;
    // interval parameters
    // set values in display > reload otherwise reloadSecond in vain
    displaySecond = 6;
    reloadSecond = 60;
  }

  void draw() {
    image(img, 0, 0, width, height);
    showText();
    if (displayCounter / myFrameRate >= displaySecond) {
      counter();
      if (reloadCounter / myFrameRate >= reloadSecond) {
        tweet.loadTweetFromCSV();
        println("CSV reloaded!");
        reloadCounter = 0;
      }
    }
    println(displayCounter, myFrameRate);
    displayCounter++;
    reloadCounter++;
  }

  void counter() {
    indexIncrement();
    img = loadImage(photoNames[photoIndex]);
    tweet.indexIncrement();
    setTextSize();
    displayCounter = 0;
  }

  void indexIncrement() {
    photoIndex++;
    if (photoIndex >= photoNames.length) {
      photoIndex = 0;
    }
  }

  void setTextSize() {
    int len = tweet.getTweet().length();
    float size = - 1.58563617754798 * len + 0.01251608685432 * len * len - 0.00003688468394 * len * len * len + 110.79920079920268;
    textSize(size*0.9);
  }

  void showText() {
    
      fill(0);
      textAlign(CENTER, CENTER);
      rectMode(CENTER);
      text(tweet.getTweet(), width / 2, height / 2, 700, height);
  }
}
