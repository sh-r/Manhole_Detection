# Manhole_Detection

In this project we focused on manhole detection for self-driving vehicles. The dataset collected from various sources is minimal, with only 1032 images and annotations.

1. CNN for classification
2. Visual Transformers (ViT) for classification

3. Classical CV for localization followed by ANN for classification
4. YOLOv3 and YOLOv3-tiny for object detection (CNN backbone)
5. YOLOS for object detection (Transformer backbone)

There is also a script for detection of size of the hole in a broken/open manhole with respect to the size of the manhole.
If the size of the hole is greater than 50% of the manhole size, the hole is recorded as an important one in need of fixing.


