package application.payload.request;

import lombok.Getter;
import lombok.Setter;
import java.util.Set;
import javax.validation.constraints.*;

@Setter
@Getter
public class SignupRequest {
    @NotBlank
    @Size(min = 4, max = 25)
    private String username;

    @NotBlank
    @Size(max = 70)
    @Email
    private String email;
    private Set<String> role;

    @NotBlank
    @Size(min = 8, max = 50)
    private String password;

}
