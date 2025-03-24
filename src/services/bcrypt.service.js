import bcrypt from "bcrypt";

export default class BcryptHash {
  static async hashPassword(password) {
    return password ? await bcrypt.hash(password, 12) : null;
  }

  static async comparePassword(password, hashedPassword) {
    return password ? await bcrypt.compare(password, hashedPassword) : null;
  }
}
