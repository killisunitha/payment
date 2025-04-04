package com.example.spring.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Userdetails")
public class UserDetailsEntity {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="user_id")
		private int userid;
		@Column(name="user_name")
		private String username;
		@Column(name="pass")
		private String password;
		@Column(name="first_name")
		private String firstname;
		@Column(name="last_name")
		private String lastname;
		@Column(name="ph_no")
		private long phonenumber;
		@Column(name="email")
		private String email;
		public UserDetailsEntity(int userid, String username, String password, String firstname, String lastname, long phonenumber,
				String email) {
			super();
			this.userid = userid;
			this.username = username;
			this.password = password;
			this.firstname = firstname;
			this.lastname = lastname;
			this.phonenumber = phonenumber;
			this.email = email;
		}
		public UserDetailsEntity() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "UserEntity [userid=" + userid + ", username=" + username + ", password=" + password + ", firstname="
					+ firstname + ", lastname=" + lastname + ", phonenumber=" + phonenumber + ", email=" + email + "]";
		}
		

	}

