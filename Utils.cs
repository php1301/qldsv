﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLDSV
{
    class Utils
    {
        // biding data từ datable vào combo box chi nhánh
        public static void BindingDataToComBo(ComboBox combo, Object data)
        {
            combo.DataSource = data;
            combo.DisplayMember = "TENKHOA";
            combo.ValueMember = "TENSERVER";

            // lệnh này quan trọng... phải bỏ vào. ==> để cho combo box chạy đúng.
            combo.SelectedIndex = 1;
            combo.SelectedIndex = 0;
        }
    }
}
