package bx_commodity.test;

public class CityVo {
	public String CountryCode;
	public String CityCode;
	public String CityName;//����Ӣ����
	public String CityLongName;//��������Ӣ����
	public String CityName_CN;//����������
	public String CityLongName_CN;//��������������
	public String ParentCityCode;//�����ϼ�����Code����IncludeSubCityΪtrueʱ���᷵��
	public String Type;//������𣬿���Ϊ���������ͣ�Destination��city��Destination��Ϊ�󼶱�����,City��ΪС�������򡣵�IncludeSubCityΪtrueʱ���᷵�ء�
	public String getCountryCode() {
		return CountryCode;
	}
	public void setCountryCode(String countryCode) {
		CountryCode = countryCode;
	}
	public String getCityCode() {
		return CityCode;
	}
	public void setCityCode(String cityCode) {
		CityCode = cityCode;
	}
	public String getCityName() {
		return CityName;
	}
	public void setCityName(String cityName) {
		CityName = cityName;
	}
	public String getCityLongName() {
		return CityLongName;
	}
	public void setCityLongName(String cityLongName) {
		CityLongName = cityLongName;
	}
	public String getCityName_CN() {
		return CityName_CN;
	}
	public void setCityName_CN(String cityName_CN) {
		CityName_CN = cityName_CN;
	}
	public String getCityLongName_CN() {
		return CityLongName_CN;
	}
	public void setCityLongName_CN(String cityLongName_CN) {
		CityLongName_CN = cityLongName_CN;
	}
	public String getParentCityCode() {
		return ParentCityCode;
	}
	public void setParentCityCode(String parentCityCode) {
		ParentCityCode = parentCityCode;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	
	

}
