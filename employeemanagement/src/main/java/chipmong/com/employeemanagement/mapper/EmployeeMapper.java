package chipmong.com.employeemanagement.mapper;

// package com.example.employee_management.mapper;

import chipmong.com.employeemanagement.model.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EmployeeMapper {
    List<Employee> findAll();
    Employee findById(@Param("id") int id);
    int insert(Employee employee);
    int update(Employee employee);
    int delete(@Param("id") int id);
}



