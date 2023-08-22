import '../../utils/session.dart';

class AuthService {
  static Session session = Session(); // Instância única da classe Session

  // Método para atualizar os campos na classe Session após o login
  static void loginUser(String userId, String userName, String userAddress, bool isProprietario) {
    session.userId = userId;
    session.userName = userName;
    session.userAddress = userAddress;
    session.isProprietario = isProprietario;
  }
}