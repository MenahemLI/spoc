package cn.edu.tit.iservice;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.tit.bean.AOCSC;
import cn.edu.tit.bean.AchievementAccessory;
import cn.edu.tit.bean.AchievementComment;
import cn.edu.tit.bean.AchievementPicture;
import cn.edu.tit.bean.CourseExpand;
import cn.edu.tit.bean.GDFCS;
import cn.edu.tit.bean.IURP;
import cn.edu.tit.bean.SIAE;

public interface IAchievementService {
	/**
	 * @author LiMing
	 * 产学研的操作
	 */
	public List<IURP> queryIURP() throws Exception;
	public List<IURP> queryIURPByName(String search)throws Exception;
	public List<IURP> queryIURPByAuthor(String search)throws Exception;
	public void insertIURP(IURP iu)throws Exception;
	public IURP queryIURPById(String achievementId)throws Exception;
	public void updateIURPBrowseVolume(String achievementId)throws Exception;

	/**
	 * @author LiMing
	 * 大学生竞赛成果
	 */
	public List<AOCSC> queryAOCSC() throws Exception;
	public List<AOCSC> queryAOCSCByName(String search)throws Exception;
	public List<AOCSC> queryAOCSCByAuthor(String search)throws Exception;
	public void insertAOCSC(AOCSC iu)throws Exception;
	public AOCSC queryAOCSCById(String achievementId)throws Exception;
	public void updateAOCSCBrowseVolume(String achievementId)throws Exception;

	/**
	 * @author LiMing
	 * 课程拓展作品
	 */
	public List<CourseExpand> queryCourseExpand() throws Exception;
	public List<CourseExpand> queryCourseExpandByName(String search)throws Exception;
	public List<CourseExpand> queryCourseExpandByAuthor(String search)throws Exception;
	public void insertCourseExpand(CourseExpand iu)throws Exception;
	public CourseExpand queryCourseExpandById(String achievementId)throws Exception;
	public void updateCourseExpandBrowseVolume(String achievementId)throws Exception;

	/**
	 * @author LiMing
	 * 大学生毕业设计
	 */
	public List<GDFCS> queryGDFCS() throws Exception;
	public List<GDFCS> queryGDFCSByName(String search)throws Exception;
	public List<GDFCS> queryGDFCSByAuthor(String search)throws Exception;
	public void insertGDFCS(GDFCS gdfcs)throws Exception;
	public GDFCS queryGDFCSById(String achievementId)throws Exception;
	public void updateGDFCSBrowseVolume(String achievementId)throws Exception;

	/**
	 * @author LiMing
	 * 大学生创新创业
	 */
	public List<SIAE> querySIAE() throws Exception;
	public List<SIAE> querySIAEByName(String search)throws Exception;
	public List<SIAE> querySIAEByAuthor(String search)throws Exception;
	public void insertSIAE(SIAE siae)throws Exception;
	public SIAE querySIAEById(String achievementId);
	public void updateSIAEBrowseVolume(String achievementId)throws Exception;

	/**
	 * @author LiMing
	 * 附件图片操作
	 */
	public List<AchievementPicture> queryAchievementPicture(String achievementId) throws Exception;
	public void insertAchievementPicture(List<AchievementPicture> ap)throws Exception;

	/**
	 * @author LiMing
	 * 附件操作
	 */
	public List<AchievementAccessory> queryAchievementAccessory(String achievementId) throws Exception;
	public void insertAchievementAccessory(List<AchievementAccessory> ap)throws Exception;
	/**
	 * 查找评论
	 * */
	public void insertAchievementComment(AchievementComment comment)throws Exception;
	public List<AchievementComment> queryComment(String achievementId,String category)throws Exception;

}