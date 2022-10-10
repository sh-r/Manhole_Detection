# https://github.com/Practical-CV/Measuring-Size-of-Objects-with-OpenCV/blob/master/object_size.py

#cmd: python object_size.py --image images/example_01.png

# import the necessary packages
from scipy.spatial import distance as dist
from imutils import perspective
from imutils import contours
import numpy as np
import argparse
import imutils
import cv2

def midpoint(ptA, ptB):
    return ((ptA[0] + ptB[0]) * 0.5, (ptA[1] + ptB[1]) * 0.5)

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", required=True,
    help="path to the input image")
args = vars(ap.parse_args())

# load the image, convert it to grayscale, and blur it slightly
image = cv2.imread(args["image"])
height, width, channels = image.shape 
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
#kernel size only odd
gray = cv2.GaussianBlur(gray, (11, 11), 0)
edged = cv2.Canny(gray, 50, 100)
edged = cv2.dilate(edged, None, iterations=1)
edged = cv2.erode(edged, None, iterations=1)
cv2.imshow('edge', edged)
cv2.waitKey(0)

# find contours in the edge map
cnts = cv2.findContours(edged.copy(), cv2.RETR_EXTERNAL,
    cv2.CHAIN_APPROX_SIMPLE)
cnts = imutils.grab_contours(cnts)
(cnts, _) = contours.sort_contours(cnts)
pixelsPerMetric = None

cx = 0
cy = 0
max_contour = []

if len(cnts) != 0:
    # find the largest contour by its area
    max_contour = max(cnts, key = cv2.contourArea)
    M = cv2.moments(max_contour)

for c in cnts:
    if cv2.contourArea(c) < 50:
        continue

    if M["m00"] != 0:
        cx = int(M["m10"] / M["m00"])
        cy = int(M["m01"] / M["m00"])
        
    orig = image.copy()
    box1 = cv2.minAreaRect(c)
    box1 = cv2.cv.BoxPoints(box1) if imutils.is_cv2() else cv2.boxPoints(box1)
    box1 = np.array(box1, dtype="int")
    box1 = perspective.order_points(box1)

    box2 = cv2.minAreaRect(max_contour)
    box2 = cv2.cv.BoxPoints(box2) if imutils.is_cv2() else cv2.boxPoints(box2)
    box2 = np.array(box2, dtype="int")
    box2 = perspective.order_points(box2)

    cv2.drawContours(orig, [box1.astype("int")], -1, (0, 255, 0), 2)
    cv2.drawContours(orig, [box2.astype("int")], -1, (0, 255, 0), 2)

    # loop over the original points and draw them
    for (x1, y1) in box1:
        cv2.circle(orig, (int(x1), int(y1)), 5, (0, 0, 255), -1)

    # unpack the ordered bounding box, then compute the midpoint
    # between the top-left and top-right coordinates, followed by
    # the midpoint between bottom-left and bottom-right coordinates
    (tl, tr, br, bl) = box1
    (tltrX, tltrY) = midpoint(tl, tr)
    (blbrX, blbrY) = midpoint(bl, br)

    # compute the midpoint between the top-left and top-right points,
    # followed by the midpoint between the top-righ and bottom-right
    (tlblX, tlblY) = midpoint(tl, bl)
    (trbrX, trbrY) = midpoint(tr, br)

    # draw the midpoints on the image
    cv2.circle(orig, (int(tltrX), int(tltrY)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(blbrX), int(blbrY)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(tlblX), int(tlblY)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(trbrX), int(trbrY)), 5, (255, 0, 0), -1)

    # draw lines between the midpoints
    cv2.line(orig, (int(tltrX), int(tltrY)), (int(blbrX), int(blbrY)),
        (255, 0, 255), 2)
    cv2.line(orig, (int(tlblX), int(tlblY)), (int(trbrX), int(trbrY)),
        (255, 0, 255), 2)

    # compute the Euclidean distance between the midpoints
    dA1 = dist.euclidean((tltrX, tltrY), (blbrX, blbrY))
    dB1 = dist.euclidean((tlblX, tlblY), (trbrX, trbrY))

    for (x2, y2) in box2:
        cv2.circle(orig, (int(x2), int(y2)), 5, (0, 0, 255), -1)
    (tl2, tr2, br2, bl2) = box2
    (tltrX2, tltrY2) = midpoint(tl2, tr2)
    (blbrX2, blbrY2) = midpoint(bl2, br2)
    (tlblX2, tlblY2) = midpoint(tl2, bl2)
    (trbrX2, trbrY2) = midpoint(tr2, br2)
    cv2.circle(orig, (int(tltrX2), int(tltrY2)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(blbrX2), int(blbrY2)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(tlblX2), int(tlblY2)), 5, (255, 0, 0), -1)
    cv2.circle(orig, (int(trbrX2), int(trbrY2)), 5, (255, 0, 0), -1)
    cv2.line(orig, (int(tltrX2), int(tltrY2)), (int(blbrX2), int(blbrY2)),
        (255, 0, 255), 2)
    cv2.line(orig, (int(tlblX2), int(tlblY2)), (int(trbrX2), int(trbrY2)),
        (255, 0, 255), 2)
    dA2 = dist.euclidean((tltrX2, tltrY2), (blbrX2, blbrY2))
    dB2 = dist.euclidean((tlblX2, tlblY2), (trbrX2, trbrY2))
    # if the pixels per metric has not been initialized, then
    # compute it as the ratio of pixels to supplied metric
    # (in this case, inches)
    if pixelsPerMetric is None:
        pixelsPerMetric = dB1 / dB2

    # compute the size of the object
    dimA1 = dA1 / pixelsPerMetric
    dimB1 = dB1 / pixelsPerMetric

    #compute the size of the maximum contour
    dimA2 = dA2 / pixelsPerMetric
    dimB2 = dB2 / pixelsPerMetric

    count=0
    if (dimA1/dimA2!=1 and dimB1/dimB2!=1):
        if (dimA1/dimA2>0.5 and dimB1/dimB2>0.5):
            print("High Importance")
            count = count+1
        else:
            print("Low Importance")

    if (count>=1):
        print("This manhole needs to be fixed immediately")

    # draw the object sizes on the image
    cv2.putText(orig, "{:.1f}in".format(dimA1),
        (int(tltrX - 15), int(tltrY - 10)), cv2.FONT_HERSHEY_SIMPLEX,
        0.65, (255, 255, 255), 2)
    cv2.putText(orig, "{:.1f}in".format(dimB1),
        (int(trbrX + 10), int(trbrY)), cv2.FONT_HERSHEY_SIMPLEX,
        0.65, (255, 255, 255), 2)

    # show the output image
    cv2.imshow("Image", orig)
    cv2.waitKey(0)