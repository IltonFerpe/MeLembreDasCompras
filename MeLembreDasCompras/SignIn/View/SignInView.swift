import SwiftUI

struct SignInView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    imageView()
                    textView()
                    emailField
                        .padding()
                    passwordField
                    registerLink
                     
                     Text("Ainda não possui um login ativo?")
                     
                     Text("Copyright: @Ilton.Dev")
                         .foregroundColor(Color.gray)
                }
            }
        }
    }
}

extension SignInView {
    func imageView() -> some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .padding(90)
            .shadow(color: .blue, radius: 15, x: 0, y: 0)
    }
}

extension SignInView {
    func textView() -> some View {
        Text("Bem-Vindo novamente!\nFaça já seu login")
            .shadow(color: .black, radius: 30, x: 0, y: 0)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .font(Font.system(size: 16).bold())
    }
}

extension SignInView {
    var emailField: some View {
        TextField("Email:", text: $email)
            .shadow(color: .black, radius: 10, x: 0, y: 0)
            .frame(width: 300, height: 30)
            .padding(10)
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.blue, lineWidth: 3.0)
            )
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("Senha:", text: $password)
            .shadow(color: .blue, radius: 10, x: 0, y: 0)
            .frame(width: 300, height: 30)
            .padding(10)
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.blue, lineWidth: 3.0)
            )
    }
}

extension SignInView {
    var registerLink: some View {
         Button(action: {
             // Ação ao pressionar o botão de cadastro
         }) {
             NavigationLink(destination: Text("Página de Cadastro")) {
                 Text("Cadastro")
             }
             .navigationBarTitle("Login", displayMode: .inline)
             .navigationBarHidden(true)
         }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
