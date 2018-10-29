package bx_commodity.test;

public class CityVo {
	public String CountryCode;
	public String CityCode;
	public String CityName;//城市英文名
	public String CityLongName;//城市完整英文名
	public String CityName_CN;//城市中文名
	public String CityLongName_CN;//城市完整中文名
	public String ParentCityCode;//城市上级区域Code，当IncludeSubCity为true时，会返回
	public String Type;//城市类别，可以为这两个类型：Destination，city。Destination：为大级别区域,City：为小级别区域。当IncludeSubCity为true时。会返回。
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
