using System.Windows;
using System.Windows.Media;

namespace Ecm.DocViewer.Controls
{
    public class ArrowWithMultipleLine : ArrowBase
    {
        public static readonly DependencyProperty PointsProperty = DependencyProperty.Register("Points", typeof(PointCollection),
            typeof(ArrowWithMultipleLine), new FrameworkPropertyMetadata(null, FrameworkPropertyMetadataOptions.AffectsMeasure));

        public ArrowWithMultipleLine()
        {
            Points = new PointCollection();
        }

        public PointCollection Points
        {
            set
            {
                SetValue(PointsProperty, value);
            }
            get
            {
                return (PointCollection)GetValue(PointsProperty);
            }
        }

        protected override Geometry DefiningGeometry
        {
            get
            {
                // Clear out the PathGeometry.
                _pathgeo.Figures.Clear();

                // Try to avoid unnecessary indexing exceptions.
                if (Points.Count > 0)
                {
                    // Define a PathFigure containing the points.
                    _pathfigLine.StartPoint = Points[0];
                    _polysegLine.Points.Clear();

                    for (int i = 1; i < Points.Count; i++)
                    {
                        _polysegLine.Points.Add(Points[i]);
                    }

                    _pathgeo.Figures.Add(_pathfigLine);
                }

                // Call the base property to add arrows on the ends.
                return base.DefiningGeometry;
            }
        }
    }
}