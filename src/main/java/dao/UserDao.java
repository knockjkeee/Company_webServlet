package dao;

import model.Role;
import model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private final List<User> store = new ArrayList<User>();

    public User getById(int id) {
        User result = new User();
        result.setId(-1);

        for (User user : store) {
            if (user.getId() == id) {
                result = user;
            }
        }
        return result;
    }

    public User getUserByLoginPassword(final String login, final String password) {
        User result = new User();
        result.setId(-1);

        for (User user : store) {
            if (user.getLogin().equals(login) && user.getPassword().equals(password)) {
                result = user;
            }
        }
        return result;
    }

    public boolean add(final User user){
        for (User u : store) {
            if (u.getLogin().equals(user.getLogin()) && u.getPassword().equals(user.getPassword())){
                return false;
            }
        }
        return store.add(user);
    }

    public Role getRoleByLoginPassword(final String login, final String password) {
        Role result = Role.UNKNOWN;
        for (User user : store) {
            if (user.getLogin().equals(login) && user.getPassword().equals(password)) {
                result = user.getRole();
            }
        }
        return result;
    }

    public boolean userIsExist(final String login, final String password){
        boolean result = false;
        for (User user : store) {
            if (user.getLogin().equals(login) && user.getPassword().equals(password)){
                result = true;
                break;
            }
        }
        return result;
    }
}
