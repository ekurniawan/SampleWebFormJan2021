﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleWebForm.Models
{
    public class Employee
    {
        public int EmpId { get; set; }
        public string EmpName { get; set; }
        public string Designation { get; set; }
        public string Department { get; set; }
        public string Qualification { get; set; }
    }
}