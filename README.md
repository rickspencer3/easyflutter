
# What is App to Store(a2s)?
## Open Source
App to Store is an open source mobile application development framework built on top of flutter. Our guiding principles are:

 1. Make what should be low code, low code.
 2. Programming and app should be easy and fun.

## Make what should be low code, low code
We mean here that many or even most applications have a significant amount of common functionality. Everything from UI elements and navigation, to authentication and interaction with servers.

A2S strives to allow developers to quickly customize those common parts of an application with simple configuration, so they can quickly move on to programming the parts of their application that are unique. This also allows developers to show rapid progress to clients, and to set up a fast feedback loop for the design of the mobile apps they are developing.

## Easy and Fun
We come from 2 decade background of developer usability. We believe that a well thought out framework with the right abstractions can be a pleasure to use, and allow developers to go from envision functionality to implementing it quickly. And realizing vision is what makes programming fun for developers.

We accomplish this by following some principles:

### Be opinionated
Frameworks and libraries that try to support every application architecture and every technology are, in fact, limited. They cannot be easy and fun to use because they cannot make assumptions about how their users are developing the code. They can't be developed quickly, because they end up with so many dependencies and dependents, that they can't be easily modified without breaking or breaking something.

Additionally, being opinionated makes it easy to build compatible tools, such as the low-config cross platform build system we are working on in parallel. 

## Use, Configure, Extend
You will see the notion "use, configure, and extend" throughout our documentation. What this means is that we try to build everything so that:
1. It will often suit your needs with no modifications. You can just use the widget or tool as is, and quickly move on to your next task. This involves providing the right set of defaults and minimum required input to get results.
2. It should be easy to configure the widget or tool for the cases where it does not "just work" out of the box. This typically means providing a smart set of options that can be set and tweaked in sensible ways.
3. In the cases where you need to go beyond the include functionality, it should be clear how to extend the functionality yourself, and reasonably easy to do so. This typically involves creating a clean inheritance hierarchy and a set of overridable functions so that you can reach into base class library at whatever level of abstraction suits your needs.

# Roadmap
## Current Status
a2s is an open source project that is being developed fully in the open. We have just made our initial commit to the project. This includes:

1. A set of powerful and easy to use widgets that we believe provide the most common functionality in mobile applications. This is only the starter set, we envision a much richer library of widgets to cover most development needs.
2. A small cli tool written in Python. This tool currently only has a single function, which is creating a starter application. 
3. A starter application that puts the widgets together and makes it very easy and fast to get a cross platform mobile application off the ground.

## A2S Cross Platform Build Tool
We are developing, in parallel, a cross platform build tool for A2S applications aimed at making it easy to prepare your application for the iOS and Android app stores. Initially, it is a tool that will run locally on a Mac. It will be built specifically for A2S applications, so it will not require any application specific configuration to create builds ready for both app stores. 

## Tools Usability
Writing cross platform applications, today, requires a lot of messing with build files. Even just using a local image in your application requires editing a manifest file. We believe that your code should be the source of truth for your build system, not the other way around. Part of the project, therefore, will be to add functionality to a2s that manages the underlying build files (everything in the iOS and Android directories) based on what is in your code. For example, if your code includes a reference to "images/main_logo.png" the tool will automatically add that to your assets stanza in the manifest yaml. Same with package dependencies, permissions, etc...
 


