package exception;

public class LoginException extends RuntimeException{
	public LoginException(){
		super("비밀번호가 맞지 않습니다");
	}
}
