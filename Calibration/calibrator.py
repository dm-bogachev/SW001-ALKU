#!/usr/bin/python3

"""
Performs camera calibration using checkerboard pattern. Saves calibration
values into a file.
More: https://docs.opencv.org/4.x/dc/dbb/tutorial_py_calibration.html
"""

import cv2
import numpy as np
import glob
import time
import sys
import os

from pandas.core import frame

from HikCamera import HikCamera


def get_images_from_folder(folder_name, file_type="*.jpg"):
    """
    Retreive images from a directory using a provided path (`folder_name`)
    """
    images_list = glob.glob(folder_name + "/" + file_type)
    images = []
    for fname in images_list:
        img = cv2.imread(fname)
        images.append(img)
    return images

def calibrate(images):
    # Defining the dimensions of checkerboard
    CHECKERBOARD = (6, 9)
    criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

    # Creating vector to store vectors of 3D points for each checkerboard image
    objpoints = []
    # Creating vector to store vectors of 2D points for each checkerboard image
    imgpoints = []

    # Defining the world coordinates for 3D points
    objp = np.zeros((1, CHECKERBOARD[0] * CHECKERBOARD[1], 3), np.float32)
    objp[0, :, :2] = np.mgrid[0 : CHECKERBOARD[0], 0 : CHECKERBOARD[1]].T.reshape(-1, 2)
    cv2.namedWindow("img", cv2.WINDOW_FREERATIO)
    # Extracting path of individual image stored in a given directory
    for img in images:
        
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        # Find the chess board corners
        # If desired number of corners are found in the image then ret = true
        ret, corners = cv2.findChessboardCorners(
            gray,
            CHECKERBOARD,
            cv2.CALIB_CB_ADAPTIVE_THRESH
            + cv2.CALIB_CB_FAST_CHECK
            + cv2.CALIB_CB_NORMALIZE_IMAGE,
        )

        if ret == True:
            objpoints.append(objp)
            # refining pixel coordinates for given 2d points.
            # Using 11x11 pixels as the window size for sub-pixel refinement
            corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)

            imgpoints.append(corners2)

            # Draw and display the corners
            img = cv2.drawChessboardCorners(img, CHECKERBOARD, corners2, ret)
        
        cv2.imshow("img", img)
        cv2.waitKey(0)

    cv2.destroyAllWindows()

    ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(
        objpoints, imgpoints, gray.shape[::-1], None, None
    )

    return mtx, dist


def save_coefficients(mtx, dist, path):
    """Save the camera matrix and the distortion coefficients to given path/file."""
    cv_file = cv2.FileStorage(path, cv2.FILE_STORAGE_WRITE)
    cv_file.write("mtx", mtx)
    cv_file.write("dist", dist)
    # note you *release* you don't close() a FileStorage object
    cv_file.release()


def load_coefficients(path):
    """Loads camera matrix and distortion coefficients."""
    # FILE_STORAGE_READ
    cv_file = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)

    # note we also have to specify the type to retrieve other wise we only get a
    # FileNode object back instead of a matrix
    camera_matrix = cv_file.getNode("mtx").mat()
    dist_coeffs = cv_file.getNode("dist").mat()

    cv_file.release()
    return camera_matrix, dist_coeffs



images = get_images_from_folder('Calibration/data')
mtx, dist = calibrate(images)
save_coefficients(mtx, dist, "Calibration/data.yml")

mtx_dist = load_coefficients("Calibration/camera_matrix.yml")
hik_camera = HikCamera()
hik_camera.open()

frame = hik_camera.get_frame()
frame = cv2.resize(frame, (frame.shape[1] // 4, frame.shape[0] // 4))
if frame is not None:
    cv2.imshow("frame", frame)
    frame = cv2.undistort(frame, mtx_dist[0], mtx_dist[1])
    cv2.imshow("undistorted", frame)
    cv2.waitKey(0)
    cv2.destroyAllWindows()
