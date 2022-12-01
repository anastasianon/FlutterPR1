# ПРАКТИЧЕСКАЯ РАБОТА №3

### Реализовать регистрацию и авторизацию пользователя.

### Каждое поле на экране авторизации и регистрации провалидировать минимум 3 критериями максимум 5.

### После успешной авторизации перейти на экран в зависимости от роли пользователя.

### Если авторизация или регистрация не удалась нужно вывести сообщение при помощи Snack Bar.

### Цель работы: реализовать регистрацию и авторизацию пользователя.

### Ход работы:

### Для начала работы с авторизацией и регистрации необходимо скачать следующие библиотеки:

<img src="dependency.png" alt="video demo"/>

### Рисунок 1 - библиотеки

### В папке core создаем папку usercase, здесь создаем файл auth

 <img src="auth.dart.png" alt="video demo"/>
 
### Рисунок 2 - auth.dart

### В папке data создаем папку repository, здесь файл auth_repositories_impl

 <img src="repIMPL.png" alt="video demo"/>
 
### Рисунок 3 - auth_repositories_impl.dart

### Далее необходимо изменить role_entity:

 <img src="roleEntity.png" alt="video demo"/>
 
### Рисунок 4 - role_entity.dart

### В папке entity создаем папку usercases, здесь файл auth

 <img src="authDomainUsecases.png" alt="video demo"/>
 
### Рисунок 5 - auth.dart

 <img src="authRepos.png" alt="video demo"/>

### Рисунок 6 - authRepository.dart

### Далее создаем папку screens, в ней файлы, в которых будет верстка авторизации, регистрации и окон для админа с пользователем.

 <img src="sceni.png" alt="video demo"/>
 
### Рисунок 7 – screens

 <img src="signUpvalidation1.png" alt="video demo"/>
 
### Рисунок 8 - окно регистрации с валидацией

 <img src="signUpvalidation2.png" alt="video demo"/>
 
### Рисунок 9 - окно авторизации с валидацией

 <img src="admin.png" alt="video demo"/>
 
### Рисунок 10 - окно админа

<img src="user.png" alt="video demo"/>

### Рисунок 11 - окно пользователя

<img src="DBase.png" alt="video demo"/>

### Рисунок 12 - пользователи в бд
 
### Вывод: в данной практической работе была реализована авторизация и регистрация для пользователей, также каждое поле на экране авторизации и регистрации было провалидированно.
