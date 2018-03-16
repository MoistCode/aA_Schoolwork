class Clock {

  constructor() {
    const time = new Date();
    this.hour = time.getHours();
    this.minute = time.getMinutes();
    this.second = time.getSeconds();
    this.printTime();
    setInterval(this._tick.bind(this), 1000);
  }

  printTime() {
    console.log(`Time: ${this.hour}:${this.minute}:${this.second}`);
  }

  // Underscore is just convention indicating a priavte method

  _tick() {
    this._incrementSeconds();
    this.printTime();
  }

  _incrementSeconds() {
    this.second += 1;
    if (this.second === 60) {
      this.second = 0;
      this._incrementMinutes();
    }
  }

  _incrementMinutes() {
    this.minute += 1;
    if (this.minute === 60) {
      this.minute = 0;
      this._incrementHours();
    }
  }

  _incrementHours() {
    this.hour += 1;
    if (this.hour === 24) {
      this.hour = 0;
    }
  }
}

const clock = new Clock();
clock.printTime();
