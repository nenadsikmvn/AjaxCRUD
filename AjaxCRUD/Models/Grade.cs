//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AjaxCRUD.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class Grade
    {
        public int GradeId { get; set; }
        [DisplayName("Grade")]
        [Range(5, 10)]
        public int Grade1 { get; set; }
        [DisplayName("Teacher Name")]
        public Nullable<int> TeacherId { get; set; }
        [DisplayName("Student Name")]
        public Nullable<int> StudentId { get; set; }
    
        public virtual Student Student { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}
