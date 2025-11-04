package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.util.Date;

import in.co.rays.proj4.bean.RoleBean;
import in.co.rays.proj4.exception.ApplicationException;
import in.co.rays.proj4.exception.DatabaseException;
import in.co.rays.proj4.model.RoleModel;

public class TestRoleModel {
	public static void main(String[] args) {

//		RoleModel model = new RoleModel();
//		System.out.println(model.nextPk());
//		testAdd();
//		testDelete();
		testUpdate();

	}

	public static void testAdd() {

		RoleBean bean = new RoleBean();
		bean.setName("hr");
		bean.setDescription("hr");
		bean.setCreatedBy("admin");
		bean.setModifiedBy("admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));

		RoleModel model = new RoleModel();

		try {
			model.add(bean);
			System.out.println("Role Added Successfully");
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	public static void testDelete() {

		RoleBean bean = new RoleBean();
		bean.setId(1);

		RoleModel model = new RoleModel();

		try {
			model.delete(bean);
			System.out.println("Role deleted Successfully");
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	public static void testUpdate() {

		RoleBean bean = new RoleBean();
		bean.setName("developer");
		bean.setDescription("hr");
		bean.setCreatedBy("admin");
		bean.setModifiedBy("admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));
		bean.setId(1);

		RoleModel model = new RoleModel();
		try {
			model.update(bean);
		} catch (ApplicationException e) {

			e.printStackTrace();
		}
		System.out.println("Record update successfully");
	}

}
