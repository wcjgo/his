package cn.neu.service;

import cn.neu.dao.RegPriceDao;
import cn.neu.po.RegPrice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class RegPriceService {
    @Autowired
    private RegPriceDao regPriceDao;


    /**
     * 查询挂号费
     * @param title
     * @return
     */
    public Double findPrice(String title){
        Optional<RegPrice> price = regPriceDao.findById(title);
        RegPrice regPrice = price.get();
        return regPrice.getPrice();
    }
}
