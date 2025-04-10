import 'dart:io';

void main() {
  SecurityCamera myCamera = SecurityCamera(
      cameraMotionDetection: AreMotionDetected.no,
      myDeviceOnOff: DeviceOnOff.on,
      password: "123456",
      name: "My Camera",
      id: "9880754ID");
  myCamera.motionDetection("yes");
}

class Device {
  DeviceOnOff myDeviceOnOff;
  String isProtected = "no";
  String password;
  String name;
  String id;

  Device(
      {required this.name,
      required this.id,
      required this.myDeviceOnOff,
      required this.password});

  void displayInfo() {
    print("Device info 🤖");
    print("Name: $name");
    print("Password: $password");
    print("ID: $id");
    print("If this Device is on or off: $myDeviceOnOff");
    print("If this Device is protected: $isProtected");
  }

  void run() {
    print("Welcome to my Smart Home Automation 🏡");
    isProtectedDevice();
  }

  void withAccessControl(Function protectedAction) {
    if (isProtected == "no" || checkPassword()) {
      protectedAction();
    } else {
      print("Access denied ❌");
    }
  }

  void isProtectedDevice() {
    stdout.write("Do you want your device to be protected: [yes, no]: ");
    isProtected = stdin.readLineSync()!;
    if (isProtected.toLowerCase() == "yes") {
      stdout.write("Please set your password 🔒: ");
      password = stdin.readLineSync()!;
      print("Your password has been set successfully");
    }
  }

  bool checkPassword() {
    if (isProtected.toLowerCase() == "yes") {
      stdout.write("Please, Enter your password here 🔒: ");
      String checkedPassword = stdin.readLineSync()!;
      if (password == checkedPassword) {
        print("The password is correct ✅");
        return true;
      } else {
        print("Incorrect password ❌");
      }
    }
    return false;
  }

  void instantTurnOnOff() {
    if (myDeviceOnOff == DeviceOnOff.off) {
      myDeviceOnOff = DeviceOnOff.on;
      print("Your Device has been turned on now 🟢");
    } else {
      myDeviceOnOff = DeviceOnOff.off;
      print("Your Device has been turned off now 🔴");
    }
  }

  void scheduleOnOff(String turnOnTime, String turnOffTime) {
    print(
        "Your Device gonna be Turned on at $turnOnTime, and turned off at $turnOffTime");
  }
}

enum DeviceOnOff { on, off }

// ======================================================================================

class Lights extends Device {
  int intensity;
  LightColors lightColors;
  Lights(
      {required this.intensity,
      required this.lightColors,
      required super.myDeviceOnOff,
      required super.password,
      required super.name,
      required super.id});

  void lightIntensity(int newIntensity) {
    withAccessControl(() {
      if (newIntensity > 100 || newIntensity < 0) {
        print(
            "The light intensity has to be between 0 and 100, The current Light intensity is $intensity");
      } else {
        intensity = newIntensity;
        print("The intensity of your light = $intensity");
      }
    });
  }

  void lightColor(LightColors newLightColor) {
    print("The lights has been turned to $newLightColor successfully");
  }
}

enum LightColors { red, green, yellow, purple, blue, pink }

// ======================================================================================

class AirConditioner extends Device {
  int temperature;
  AirConditioner(
      {required this.temperature,
      required super.myDeviceOnOff,
      required super.password,
      required super.name,
      required super.id});

  void adjustTemperature(int newTemperature) {
    withAccessControl(() {
      if (newTemperature > 30 || newTemperature < 16) {
        print("The AC temperatures don’t go below 16°C or above 30°C");
      } else {
        temperature = newTemperature;
      }
    });
  }
}

// ======================================================================================

class SecurityCamera extends Device {
  AreMotionDetected cameraMotionDetection;
  SecurityCamera(
      {required this.cameraMotionDetection,
      required super.myDeviceOnOff,
      required super.password,
      required super.name,
      required super.id});

  void motionDetection(String newDetection) {
    withAccessControl(() {
      if (newDetection.toLowerCase() == "yes") {
        cameraMotionDetection = AreMotionDetected.yes;
        print("Warning ⚠️");
        print("Your Security camera has detected a motion");
      } else {
        cameraMotionDetection = AreMotionDetected.no;
        print("Your Security camera has not detected any motion");
      }
    });
  }
}

enum AreMotionDetected { yes, no }

// ======================================================================================

class SmartHomeAutomation {
  List<Device> myDevices = [];
  void addNewDevice(Device newDevice) {
    myDevices.add(newDevice);
    print("New device has been added successfully");
  }

  void removeDevice(Device device) {
    if (myDevices.contains(device)) {
      myDevices.remove(device);
      print("Your Device: has been removed successfully");
    } else {
      print("Your list does not have this device already");
    }
  }

  void listAllDevices() {
    if (myDevices.isEmpty) {
      print("No devices are currently added.");
      return;
    } else {
      for (var device in myDevices) {
        device.displayInfo();
      }
    }
  }
}
