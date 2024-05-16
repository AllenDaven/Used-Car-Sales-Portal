package com.abccars.usedcarsalesportal.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {

    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
    	return org.springframework.security.crypto.password.NoOpPasswordEncoder.getInstance();
    }
    
	@Bean
	SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
			.csrf(
			csrf -> csrf.disable()
		)
		.authorizeHttpRequests( auth -> auth
				.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
				.requestMatchers("/index").permitAll()
				.requestMatchers("/register").permitAll()
				.requestMatchers("/login").permitAll()
				.requestMatchers("/error").permitAll()
				.requestMatchers("/images/**", "/css/**", "/js/**").permitAll()
				.requestMatchers("/about").hasAnyRole("USER")
				.requestMatchers("/contact").hasAnyRole("USER")
				.requestMatchers("/cars").hasAnyRole("USER")
				.requestMatchers("/car_detail").hasAnyRole("USER")
				.requestMatchers("/search").hasAnyRole("USER")
				.requestMatchers("/new_car").hasAnyRole("USER")
				.requestMatchers("/car_lists").hasAnyRole("ADMIN")
				.requestMatchers("/all_users").hasAnyRole("ADMIN")
				.requestMatchers("/profile").hasAnyRole("USER")
				.anyRequest().authenticated()
		)
		.formLogin(
			form -> form
			.loginPage("/login")
			.loginProcessingUrl("/login")
			.failureUrl("/login_error")
			.permitAll()
			.defaultSuccessUrl("/login_success", true)
		)
		.logout(
			logout -> logout
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/login?logout")
			.permitAll()
			);
		return http.build();
	}
}
