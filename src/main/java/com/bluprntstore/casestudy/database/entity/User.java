package com.bluprntstore.casestudy.database.entity;

import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;
@RequiredArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NonNull
    @Column(name = "id")
    private Integer id;
    @NonNull
    @Column(name = "email")
    private String email;
    @NonNull
    @Column(name = "first_name")
    private String firstName;
    @NonNull
    @Column(name = "last_name")
    private String lastName;

    @NonNull
    @Column(name = "password")
    private String password;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private Set<Order> orders;


    @Column(name = "create_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate = new Date();


}
