using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace WardrobeMVCVer1
{
    [MetadataType(typeof(TopMetadata))]
    public partial class Top
    {
    }
        public class TopMetadata
        {
            public int TopID { get; set; }

            [DisplayName("Item Name")]
            public string Name { get; set; }

            [DisplayName("Image")]
            public string Photo { get; set; }
            public string Type { get; set; }
            public string Season { get; set; }
            public string Occasion { get; set; }
        }
    
}