package com.race.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.race.dto.RaceCartVo;
import com.race.sqlconfig.IBatisDBConnector;

public class RaceCartDaoImpl implements RaceDao<RaceCartVo, Integer>{

	private SqlMapClient client = IBatisDBConnector.getSqlMapInstance();
	private static RaceCartDaoImpl instance = new RaceCartDaoImpl();

	private RaceCartDaoImpl() {
	}

	public static RaceCartDaoImpl getInstance() {
		return instance;
	}
	
	@Override
	public List<RaceCartVo> selectAll() throws SQLException {
		ArrayList<RaceCartVo> list = (ArrayList<RaceCartVo>)client.queryForList("selectAllCart");
		return list;
	}

	@Override
	public RaceCartVo selectVo(Integer key) throws SQLException {
		RaceCartVo raceCartVo = (RaceCartVo)client.queryForObject("selectCart", key);
		return raceCartVo;
	}

	@Override
	public void insert(RaceCartVo vo) throws SQLException {
		client.update("insertCart", vo);
	}

	@Override
	public void update(RaceCartVo vo) throws SQLException {
		client.update("updateCart", vo);
	}
	
	public void updateOk(int key) throws SQLException {
		client.update("updateCartOk", key);
	}

	@Override
	public void delete(Integer key) throws SQLException {
		client.delete("deleteCart", key);
	}

}
