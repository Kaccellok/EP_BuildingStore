using HardwareStore.Model.Database;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HardwareStore.ViewModel
{
    internal class ClientVM
    {
        private ObservableCollection<ProductName> _productName;

        public ObservableCollection<ProductName> ProductName
        {
            get
            {
                return _productName;            
            }
            set 
            { 
                _productName = value;
            }
        }

        private void DataLoad()
        {
            using (TradeEntities context = new TradeEntities()) 
            {
                var _productNameList = context.ProductName.ToList();
                _productNameList.ForEach(pL=> ProductName.Add(pL));
            }
        }
        private void Initialize()
        {
            ProductName = new ObservableCollection<ProductName>();
        }

        public ClientVM() 
        {
            Initialize();
            DataLoad();
        }

    }
}
