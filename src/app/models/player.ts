export class Player {
  constructor(
    private readonly id: number,
    private readonly name: string,
    private readonly lastName: string,
    private readonly image: string,
    private readonly nasScore: number,
    private readonly penalities: number,
    private readonly isOut: boolean
  ) {}

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
    return `${this.nasScore}`;
  }

  get Penalities() {
    return `${this.penalities}`;
  }

  get IsOut() {
    return this.isOut;
  }
}
