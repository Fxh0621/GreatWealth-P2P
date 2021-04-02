package com.igeek.service.impl;

import com.igeek.entity.Invest;
import com.igeek.entity.InvestInfromation;
import com.igeek.entity.User;
import com.igeek.mapper.InvestMapper;
import com.igeek.mapper.UserMapper;
import com.igeek.service.InvestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/8 0008 18:21
 */
@Service
public class InvestServiceImpl implements InvestService {
    @Autowired
    private InvestMapper investMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<InvestInfromation> selectInvestInformation(Integer investtimetype) {
        List<InvestInfromation> investInfromation = investMapper.getInvestInfromation(investtimetype);
        return investInfromation;
    }

    @Override
    public Double getAvgPerson() {
        Double avgPerson = investMapper.avgPerson();
        return avgPerson;
    }

    @Override
    public Double getAvgPen(Integer investtimetype) {
        Double avgPen = investMapper.avgPen(investtimetype);
        return avgPen;
    }

    @Override
    public User getUserById(Integer userid) {
        User user = userMapper.selectByPrimaryKey(userid);
        return user;
    }

    @Override
    //@Transactional
    public void insertInvest(Invest invest) {
       investMapper.insert(invest);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }

    @Override
    public Double getAllInvestInterest(Integer userid) {
        Double allInvestInterest = investMapper.getAllInvestInterest(userid);
        return allInvestInterest;
    }
}
 
  