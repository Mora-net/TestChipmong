package chipmong.com.employeemanagement.service;




import chipmong.com.employeemanagement.mapper.EmployeeMapper;
import chipmong.com.employeemanagement.model.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    private final EmployeeMapper employeeMapper;

    public EmployeeService(EmployeeMapper employeeMapper) {
        this.employeeMapper = employeeMapper;
    }

    public List<Employee> getAllEmployees() {
        return employeeMapper.findAll();
    }

    public Employee getEmployeeById(int id) {
        return employeeMapper.findById(id);
    }

    public Employee createEmployee(Employee employee) {
        employeeMapper.insert(employee);
        return employee;
    }

    public Employee updateEmployee(int id, Employee employee) {
        Employee existing = employeeMapper.findById(id);
        if (existing == null) {
            return null;
        }
        employee.setId(id);
        employeeMapper.update(employee);
        return employee;
    }

    public boolean deleteEmployee(int id) {
        Employee existing = employeeMapper.findById(id);
        if (existing == null) {
            return false;
        }
        employeeMapper.delete(id);
        return true;
    }
}
