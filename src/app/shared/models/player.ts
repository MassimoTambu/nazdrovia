export class Player {
  constructor(
    private readonly id: number,
    private readonly name: string,
    private readonly lastName: string,
    private readonly nasScore: number,
    private readonly catchPhrase: string,
    private readonly penalities: number,
    private readonly achievementsUnlocked: number,
    private readonly isOut: boolean = false,
    private readonly image?: string
  ) {
    // if image is null ? set default icon
  }

  get Name() {
    return this.name;
  }

  get LastName() {
    return this.lastName;
  }

  get CompleteName() {
    return `${this.name} ${this.lastName}`;
  }

  get NasScore() {
    return this.nasScore;
  }

  get CatchPhrase() {
    return this.catchPhrase;
  }

  get Penalities() {
    return this.penalities;
  }

  get AchievementsUnlocked() {
    return this.achievementsUnlocked;
  }

  get IsOut() {
    return this.isOut;
  }

  get Image() {
    return this.image;
  }
}
