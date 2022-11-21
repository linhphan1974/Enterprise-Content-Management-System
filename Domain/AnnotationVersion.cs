using System;
using System.Runtime.Serialization;

namespace Ecm.Domain
{
    /// <summary>
    /// Represent the version of each annotation in a document.
    /// </summary>
    [DataContract]
    public class AnnotationVersion
    {
        /// <summary>
        /// Identifier of the version of the page contains the annotation.
        /// </summary>
        [DataMember]
        public Guid PageVersionId { get; set; }

        /// <summary>
        /// Identifier of the version of annotation.
        /// </summary>
        [DataMember]
        public Guid Id { get; set; }

        /// <summary>
        /// Identifier of the annotation.
        /// </summary>
        [DataMember]
        public Guid AnnotationId { get; set; }

        /// <summary>
        /// Identifier of the page which contains the annotation.
        /// </summary>
        [DataMember]
        public Guid PageId { get; set; }

        /// <summary>
        /// Type of annotation. There are 5 types of annotation: Redaction, Highlight, Text, Line, OCRZone.
        /// </summary>
        [DataMember]
        public string Type { get; set; }

        /// <summary>
        /// Height of annotation
        /// </summary>
        [DataMember]
        public double Height { get; set; }

        /// <summary>
        /// Width of annotation
        /// </summary>
        [DataMember]
        public double Width { get; set; }

        /// <summary>
        /// Left position of annotation on the page.
        /// </summary>
        [DataMember]
        public double Left { get; set; }

        /// <summary>
        /// Only apply for Line annotation. The value can be: TopLeft, TopRight, BottomLeft, BottomRight
        /// </summary>
        [DataMember]
        public string LineEndAt { get; set; }

        /// <summary>
        /// Only apply for Line annotation. The value can be: TopLeft, TopRight, BottomLeft, BottomRight
        /// </summary>
        [DataMember]
        public string LineStartAt { get; set; }

        /// <summary>
        /// Only apply for Line annotation. The value can be: ArrowAtEnd, ArrowAtStart, ArrowAtBoth, NoArrow
        /// </summary>
        [DataMember]
        public string LineStyle { get; set; }

        /// <summary>
        /// Only apply for Line annotation. This property define the thickness of the line.
        /// </summary>
        [DataMember]
        public int LineWeight { get; set; }

        /// <summary>
        /// The rotation angle of the annotation. The angle can be positive or negative and must be divisible by 90. 
        /// </summary>
        [DataMember]
        public double RotateAngle { get; set; }

        /// <summary>
        /// Define the top position of the annotation
        /// </summary>
        [DataMember]
        public double Top { get; set; }

        /// <summary>
        /// Only apply for Line annotation. This property define the color of the line.
        /// </summary>
        [DataMember]
        public string LineColor { get; set; }

        /// <summary>
        /// The content of the Text annotation.
        /// </summary>
        [DataMember]
        public string Content { get; set; }

        /// <summary>
        /// The user name of the user create the annotation
        /// </summary>
        [DataMember]
        public string CreatedBy { get; set; }

        /// <summary>
        /// The time when the annotation is created
        /// </summary>
        [DataMember]
        public DateTime CreatedOn { get; set; }

        /// <summary>
        /// The user name of the user modify the annotation. The modification can be the change of position or change content,...
        /// </summary>
        [DataMember]
        public string ModifiedBy { get; set; }

        /// <summary>
        /// The time when the annotation is modified.
        /// </summary>
        [DataMember]
        public DateTime? ModifiedOn { get; set; }
    }
}