# 关于生产订单的相关内容-----
# 生产订单的单据类型-----
#' 生产订单单据类型-汇报入库普通订单
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_billType_rpt_common()
mo_billType_rpt_common <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_billType_rpt_common()
  return(res)

}


#' 生产订单的单据类型-汇总入库返工生产
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_billType_rpt_reWork()
mo_billType_rpt_reWork <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_billType_rpt_reWork()
  return(res)

}


#' 生产订单的单据类型-直接入库普通生产
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_billType_stockIn_common()
mo_billType_stockIn_common <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_billType_stockIn_common()
  return(res)

}


#' 生产订单单据类型-直接入库组装车间专用
#'
#' @return 返回单据类型代码
#' @import reticulate
#' @export
#'
#' @examples
#' mo_billType_stockIn_zz()
mo_billType_stockIn_zz <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_billType_stockIn_zz()
  return(res)

}


#' 生产订单单据类型-直接入库返工生产
#'
#' @return 返回单据类型代码
#' @import reticulate
#' @export
#'
#' @examples
#' mo_billType_stockIn_reWork()
mo_billType_stockIn_reWork <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_billType_stockIn_reWork()
  return(res)

}


# 生产订单的单据操作------

#' 生产订单按单查看并格式化结果数据
#'
#' @param config_path 配置文件
#' @param kdc_url k3cloud网址
#' @param FBillNo 单据编号
#'
#' @return 返回结果
#' @import reticulate
#' @export
#'
#' @examples
#' mo_view()
mo_view <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',FBillNo='MO033489') {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_view(config_path=config_path,kdc_url=kdc_url,FBillNo =FBillNo)
  return(res)
}




#' 生产订单的测试数据
#'
#' @return 返回测试数据
#' @import reticulate
#' @export
#'
#' @examples
#' mo_testData()
mo_testData <- function() {
  res = list(FId=  135534,
             FDate= '2020-10-06T00:00:00',
             FPrdOrgNumber = '100.01',
             FDescription  = '',
             F_NLJ_delivery =  ' ',
             F_NLJ_calcBatch = FALSE,
             F_NLJ_insideID =  FALSE,
             FProductType = list('1'),
             FMaterialNumber = list('1.1.01.1.03.0019'),
             FUnitNumber = list('0101'),
             FBaseUnitNumber = list('0101'),
             FQty = list(27000.0),
             FStockNumber =  list('01.001'),
             F100001_Id = list(0),
             F100001 = list(NULL),
             F100004_Id = list(100124),
             F100004 = list(list(Id = 100124,
                             Number = '0105065',
                             MultiLanguageText = list(list(PkId= 100124,
                                                           LocaleId = 2052,
                                                           Name = 'A06-1a')),
                             Name = list(list(Key = 2052,
                                              Value = 'A06-1a')))),
             F100005_Id = list(0),
             F100005 =  list(NULL),
             F100006_Id = list(0),
             F100006 = list(NULL),
             F100007_Id = list(0),
             F100007 = list(NULL),
             F100008_Id = list(0),
             F100008 = list(NULL),
             F100009_Id = list(0),
             F100009 = list(NULL),
             F100010_Id = list(0),
             F100010 = list(NULL),
             F100012_Id = list(0),
             F100012 = list(NULL),
             FStockLocId = list(list(FSTOCKLOCID__FF100001  = list(FNumber = ''),
                                     FSTOCKLOCID__FF100004 = list(FNumber = '0105065'),
                                     FSTOCKLOCID__FF100005 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100006 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100007 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100008 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100009 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100010 = list(FNumber = ''),
                                     FSTOCKLOCID__FF100012 = list(FNumber = ''))),
             FWorkShopNumber = list('19.06'),
             FRequestOrgNumber = list('100.01'),
             FBomVerNumber = list('1.1.01.1.03.0019_V1.1'),
             FIsBackFlush = list(TRUE),
             FStockInOrgNumber = list('100.01'),
             F_NLJ_SONote = list(' '),
             F_NLJ_SOBODYNOTE2 = list(' '),
             F_NLJ_BatchNote = list(' '),
             F_NLJ_LableItemModel = list('分离胶-促凝管'),
             F_NLJ_LableItemModel_KWSJ = list(' '),
             F_NLJ_PrdColor = list('黄色'),
             F_NLJ_Additive = list('分离胶-促凝剂'),
             F_NLJ_BloodCollectionVol = list('3ml'),
             F_NLJ_CollectionVol  = list(' '),
             F_NLJ_Reagent = list(' '),
             F_NLJ_TubeModel = list('Φ13×75mm'),
             F_NLJ_TubeMaterial = list('玻璃'),
             F_NLJ_QtyShowText =  list('100支/盘×18盘'),
             F_NLJ_PkgQty = list('1800'),
             F_NLJ_ApplyAltitude = list('1500米'),
             F_NLJ_LabelNote1 = list(' '),
             F_NLJ_SpecialOR = list(' '),
             F_NLJ_SterilizationMethod = list(' '))
  return(res)

}


#' 测试数据集的主键
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_testData_keys()
mo_testData_keys <- function() {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_testData_keys()
  return(res)

}



# 生产订单的相关操作

#' 生产订单新增
#'
#' @param config_path 配置文件
#' @param kdc_url 链接
#' @param data 数据
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @export
#'
#' @examples
#' mo_create()
mo_create <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
                      data=mo_testData(),FBillType="SCDD01_SYS") {
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_create(config_path=config_path,kdc_url=kdc_url,
                      data=data,FBillType=FBillType)
  return(res)

}



#生产订单复制
#' 生产订单的复制新增
#'
#' @param config_path 配置文件
#' @param kdc_url k3cloud网址
#' @param FBillNo 源单编号
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_copy()
mo_copy <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
        FBillNo='MO033489',FBillType="SCDD01_SYS"){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_copy(config_path=config_path,kdc_url=kdc_url,
                      FBillNo = FBillNo,FBillType=FBillType)
  return(res)

}

# 生产订单理更新
#' 生产订单更新
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param data 数据
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_update()
mo_update <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
              data=mo_testData(),FBillType="SCDD01_SYS"){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_update(config_path=config_path,kdc_url=kdc_url,
                      data=data,FBillType=FBillType)
  return(res)

}

#生产订单重新保存
#' 生产订单的重新保存
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillNo 单据编号
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_reSave()
mo_reSave <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
              FBillNo='MO033489',FBillType="SCDD01_SYS"){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_reSave(config_path=config_path,kdc_url=kdc_url,
                      FBillNo = FBillNo,FBillType=FBillType)
  return(res)


}



#' 生产订单批量重新保存
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillNoList 单据列表
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_reSave_batch()
mo_reSave_batch <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
                    FBillNoList=list('MO032949','MO033541'),FBillType="SCDD01_SYS"){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_reSave_batch(config_path=config_path,kdc_url=kdc_url,
                      FBillNoList = FBillNoList,FBillType=FBillType)
  return(res)

}





#' 自动对新增或重新审核的生产订单再次保存
#'
#' @param config_path 配置
#' @param kdc_url 网址
#' @param FBillType 单据类型
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_reSave_auto()
mo_reSave_auto <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
                   FBillType="SCDD01_SYS"){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_reSave_auto(config_path=config_path,kdc_url=kdc_url,
                            FBillType=FBillType)
  return(res)

}

#生产订单提交
#' 生产订单提交
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillList 单据列表
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_submit()
mo_submit <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
          FBillList=list('MO033473')){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_submit(config_path=config_path,kdc_url=kdc_url,
                           FBillList = FBillList)
  return(res)

}

#生产订单审核

#' 生产订单审核
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillList 单据列表
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_audit()
mo_audit <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
         FBillList=list('MO033473')){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_audit(config_path=config_path,kdc_url=kdc_url,
                      FBillList = FBillList)
  return(res)

}
# 生产订单反审核----------
#' 生产订单反审核
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillList 单据列表
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_unAudit()
mo_unAudit <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
           FBillList=list('MO033473')){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_unAudit(config_path=config_path,kdc_url=kdc_url,
                     FBillList = FBillList)
  return(res)

}

# 生产订单删除-----------
#' 生产订单删除
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillList 单据列表
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_delete()
mo_delete <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
          FBillList=list('MO033473')){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_delete(config_path=config_path,kdc_url=kdc_url,
                       FBillList = FBillList)
  return(res)

}

# 生产订单下达
#' 生产订单下达
#'
#' @param config_path 配置文件
#' @param kdc_url 网址
#' @param FBillList 单据列表
#'
#' @return 返回值
#' @import reticulate
#' @export
#'
#' @examples
#' mo_release()
mo_release <- function(config_path='data-raw/conf.ini',kdc_url='http://47.103.221.12:8126/k3cloud',
           FBillList=list('MO033473')){
  #library(reticulate)
  tsda::set_py()
  mo <-import('pykdc.mfg.mo')
  res <- mo$mo_release(config_path=config_path,kdc_url=kdc_url,
                      FBillList = FBillList)
  return(res)
}

