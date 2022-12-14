using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Activities.Presentation.PropertyEditing;
using System.Activities.Presentation.View;
using System.Activities.Presentation.Model;
using System.Activities.Presentation.Converters;
using System.IO;
using System.Windows.Markup;
using System.Windows;
using System.Reflection;
using System.Resources;
using Ecm.CaptureDomain;
using Ecm.Workflow.Activities.BarcodeExecutorDesigner.View;
using Ecm.Workflow.Activities.BarcodeExecutorDesigner.ViewModel;

namespace Ecm.Workflow.Activities.BarcodeExecutorDesigner
{
    public class BarcodeConfigurationDesigner : DialogPropertyValueEditor
    {
        private readonly ResourceManager _resource = new ResourceManager("Ecm.Workflow.Activities.BarcodeExecutorDesigner.Resource", Assembly.GetExecutingAssembly());
        private DialogViewer dialog;
        public BarcodeConfigurationDesigner()
        {
            string template = @"<DataTemplate xmlns='http://schemas.microsoft.com/winfx/2006/xaml/presentation'
                                                    xmlns:x='http://schemas.microsoft.com/winfx/2006/xaml'
                                                    xmlns:pe='clr-namespace:System.Activities.Presentation.PropertyEditing;assembly=System.Activities.Presentation'>
                                        <DockPanel LastChildFill='True'>
                                            <pe:EditModeSwitchButton TargetEditMode='Dialog' Name='EditButton' DockPanel.Dock='Right'>...</pe:EditModeSwitchButton>
                                            <TextBlock Margin='2,0,0,0' IsHitTestVisible='False' VerticalAlignment='Center' Foreground='Gray'><Italic>" + _resource.GetString("uiBarcodeConfigText") + @"</Italic></TextBlock>
                                        </DockPanel>
                                    </DataTemplate>";

            using (MemoryStream sr = new MemoryStream(Encoding.UTF8.GetBytes(template)))
            {
                InlineEditorTemplate = XamlReader.Load(sr) as DataTemplate;
            }

        }

        public override void ShowDialog(PropertyValue propertyValue, IInputElement commandSource)
        {
            var ownerActivityConverter = new ModelPropertyEntryToOwnerActivityConverter();
            ModelItem activityItem = ownerActivityConverter.Convert(propertyValue.ParentProperty, typeof(ModelItem), false, null) as ModelItem;
            ModelItem root = activityItem.Root;
            ViewStateService vss = root.GetEditingContext().Services.GetService<ViewStateService>();

            User loginUser = vss.RetrieveViewState(root, "_vsAvailableLoginUser") as User;
            List<DocumentType> docTypes = vss.RetrieveViewState(root, "_vsAvailableDocTypes") as List<DocumentType>;
            BatchType batchType = vss.RetrieveViewState(root, "_vsAvailableBatchTypes") as BatchType;
            List<CustomActivitySetting> CustomActivitySettings = vss.RetrieveViewState(root, "_vsWorkflowCustomActivitySetting") as List<CustomActivitySetting>;
            Guid activityId = (Guid)activityItem.Properties["UniqueID"].ComputedValue;
            int currentSettingIndex = CustomActivitySettings.FindIndex(p => p.ActivityId == activityId);
            CustomActivitySetting activitySetting;

            if (currentSettingIndex < 0)
            {
                activitySetting = new CustomActivitySetting
                {
                    ActivityId = activityId
                };

            }
            else
            {
                activitySetting = CustomActivitySettings[currentSettingIndex].Clone();
            }

            var viewModel = new BarcodeConfigurationViewModel(batchType, docTypes, activitySetting.Value);
            var view = new BarcodeConfigurationView(viewModel);

            dialog = new DialogViewer(view);
            dialog.Width = 850;
            dialog.Height = 700;
            dialog.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            dialog.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            dialog.MaximizeBox = false;
            dialog.MinimizeBox = false;
            dialog.Text = _resource.GetString("uiDialogTitle");
            dialog.FormClosed += (s, o) =>
            {
                if (dialog.DialogResult == System.Windows.Forms.DialogResult.OK)
                {
                    activitySetting.Value = viewModel.BarcodeConfigurationXml;

                    if (currentSettingIndex < 0)
                    {
                        CustomActivitySettings.Add(activitySetting);
                    }
                    else
                    {
                        CustomActivitySettings[currentSettingIndex] = activitySetting;
                    }
                    propertyValue.Value = Guid.NewGuid();
                }
            };

            view.Dialog = dialog;
            dialog.ShowDialog();
        }
    }
}
