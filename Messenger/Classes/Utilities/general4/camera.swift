//
// Copyright (c) 2018 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

//-------------------------------------------------------------------------------------------------------------------------------------------------
func PresentPhotoCamera(target: Any, edit: Bool) -> Bool {

	let type = kUTTypeImage as String

	if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.mediaTypes = [type]
				imagePicker.sourceType = .camera

				if (UIImagePickerController.isCameraDeviceAvailable(.rear)) {
					imagePicker.cameraDevice = .rear
				} else if (UIImagePickerController.isCameraDeviceAvailable(.front)) {
					imagePicker.cameraDevice = .front
				}

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.showsCameraControls = true
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	return false
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
func PresentVideoCamera(target: Any, edit: Bool) -> Bool {

	let type = kUTTypeMovie as String

	if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.mediaTypes = [type]
				imagePicker.sourceType = .camera
				imagePicker.videoMaximumDuration = TimeInterval(VIDEO_LENGTH)

				if (UIImagePickerController.isCameraDeviceAvailable(.rear)) {
					imagePicker.cameraDevice = .rear
				} else if (UIImagePickerController.isCameraDeviceAvailable(.front)) {
					imagePicker.cameraDevice = .front
				}

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.showsCameraControls = true
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	return false
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
func PresentMultiCamera(target: Any, edit: Bool) -> Bool {

	let type1 = kUTTypeImage as String
	let type2 = kUTTypeMovie as String

	if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) {
			if (availableMediaTypes.contains(type1) && availableMediaTypes.contains(type2)) {

				let imagePicker = UIImagePickerController()
				imagePicker.mediaTypes = [type1, type2]
				imagePicker.sourceType = .camera
				imagePicker.videoMaximumDuration = TimeInterval(VIDEO_LENGTH)

				if (UIImagePickerController.isCameraDeviceAvailable(.rear)) {
					imagePicker.cameraDevice = .rear
				} else if (UIImagePickerController.isCameraDeviceAvailable(.front)) {
					imagePicker.cameraDevice = .front
				}

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.showsCameraControls = true
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	return false
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
func PresentPhotoLibrary(target: Any, edit: Bool) -> Bool {

	let type = kUTTypeImage as String

	if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.sourceType = .photoLibrary
				imagePicker.mediaTypes = [type]

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	if (UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .savedPhotosAlbum) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.sourceType = .savedPhotosAlbum
				imagePicker.mediaTypes = [type]

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	return false
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
func PresentVideoLibrary(target: Any, edit: Bool) -> Bool {

	let type = kUTTypeMovie as String

	if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.sourceType = .photoLibrary
				imagePicker.mediaTypes = [type]
				imagePicker.videoMaximumDuration = TimeInterval(VIDEO_LENGTH)

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	if (UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)) {
		if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .savedPhotosAlbum) {
			if (availableMediaTypes.contains(type)) {

				let imagePicker = UIImagePickerController()
				imagePicker.sourceType = .savedPhotosAlbum
				imagePicker.mediaTypes = [type]
				imagePicker.videoMaximumDuration = TimeInterval(VIDEO_LENGTH)

				let viewController = target as! UIViewController
				imagePicker.allowsEditing = edit
				imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
				viewController.present(imagePicker, animated: true)

				return true
			}
		}
	}

	return false
}
