﻿using AutoMapper;
using CasePortal.Repositories;
using CasePortal.ViewModel;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace CasePortal.Controllers
{
    public class DistrictController : Controller
    {
        private readonly DistrictRepository _districtRepository = new DistrictRepository();

        [HttpGet]
        public JsonResult GetAllDistrict()
        {
            var list = Mapper.Map<IEnumerable<DistrictViewModel>>(_districtRepository.GetAllDistrict()).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}