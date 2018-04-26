#include <iostream>
#include <sys/stat.h>
#include <GLUT/glut.h>  // GLUT, include glu.h and gl.h
#include "solarsystem.h"

// global variable
GLfloat angle = 0.0f;  // rotational angle of the shapes
GLint refreshMills = 30; // refresh GLinterval in milliseconds
GLfloat earthDays = 0.0f;
GLfloat earthDaysPerYear = 0.0f;
GLfloat earthTimeInterval = 0.5f;

void displaySun();
void displayPlanets();
void displayEachPlanet(GLfloat tilt, GLfloat distanceFromSun, GLfloat rotationPeriod, GLfloat orbitPeriod, GLfloat color);

/* Initialize OpenGL Graphics */
void initGL() {
    // Set "clearing" or background color
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black and opaque
}

/* Called back when timer expired */
void Timer(GLint value) {

    earthDays += earthTimeInterval;
    earthDaysPerYear += earthTimeInterval;
    if (earthDaysPerYear == 365)
        earthDays = 0;
    glutPostRedisplay();      // Post re-paGLint request to activate display()
    glutTimerFunc(refreshMills, Timer, 1); // next Timer call milliseconds later
}

/* Handler for window-repaGLint event. Call back when the window first appears and
   whenever the window needs to be re-paGLinted. */
void display() {
    glClear(GL_COLOR_BUFFER_BIT);   // Clear the color buffer
    glMatrixMode(GL_MODELVIEW);     // To operate on Model-View matrix
    glLoadIdentity();               // Reset the model-view matrix

    // display functions go here
    displaySun();
    displayPlanets();

    glutSwapBuffers();   // Double buffered - swap the front and back buffers

    // Change the rotational angle after each display()
    angle += 2.0f;
}

void displaySun() {
    glPushMatrix();

    glRotatef(360.0f * earthDays / 24.0, 0.0f, 1.0f, 0.0f); //


    // this animation is filler
    glBegin(GL_POLYGON);
    glColor3f(1.0f, 1.0f, 0.0f); // YELLOW SUN
    glVertex2f(-0.01f, -0.02f);
    glVertex2f( 0.01f, -0.02f);
    glVertex2f( 0.02f,  0.00f);
    glVertex2f( 0.01f,  0.02f);
    glVertex2f(-0.01f,  0.02f);
    glVertex2f(-0.02f,  0.00f);
    glEnd();

    glPopMatrix();
}

void displayPlanets() {
    displayEachPlanet(MERCURY_INCLINATION,
                      MERCURY_DISTANCE, MERCURY_ROTATION, MERCURY_ORBIT, 0.1);
    displayEachPlanet(VENUS_INCLINATION,
                      VENUS_DISTANCE, VENUS_ROTATION, VENUS_ORBIT, 0.2);
    displayEachPlanet(EARTH_INCLINATION,
                      EARTH_DISTANCE, EARTH_ROTATION, EARTH_ORBIT, 0.3);
    displayEachPlanet(MARS_INCLINATION,
                      MARS_DISTANCE, MARS_ROTATION, MARS_ORBIT, 0.4);
    displayEachPlanet(JUPITER_INCLINATION,
                      JUPITER_DISTANCE, JUPITER_ROTATION, JUPITER_ORBIT, 0.5);
    displayEachPlanet(SATURN_INCLINATION,
                      SATURN_DISTANCE, SATURN_ROTATION, SATURN_ORBIT, 0.6);
    displayEachPlanet(URANUS_INCLINATION,
                      URANUS_DISTANCE, URANUS_ROTATION, URANUS_ORBIT, 0.7);
    displayEachPlanet(NEPTUNE_INCLINATION,
                      NEPTUNE_DISTANCE, NEPTUNE_ROTATION, NEPTUNE_ORBIT, 0.8);
    displayEachPlanet(PLUTO_INCLINATION,
                      PLUTO_DISTANCE, PLUTO_ROTATION, PLUTO_ORBIT, 0.9);

}

// instead of bitmap field, we can use the color field
void displayEachPlanet(GLfloat inclination, GLfloat distanceFromSun, GLfloat rotationPeriod, GLfloat orbitPeriod, GLfloat color) {
    glPushMatrix();

    glRotatef(inclination, 0.0f, 0.0f, 1.0f);
    glRotatef(360.0f * earthDaysPerYear / orbitPeriod, 0.0f, 1.0f, 0.0f);
    glTranslatef(distanceFromSun, 0.0f, 0.0f);
    glRotatef(360.0f * earthDays / rotationPeriod, 0.0f, 1.0f, 0.0f);

    glBegin(GL_POLYGON);
    glColor3f(color, 1.0f / color, 0.0f);
    glVertex2f(-0.01f, -0.02f);
    glVertex2f( 0.01f, -0.02f);
    glVertex2f( 0.02f,  0.00f);
    glVertex2f( 0.01f,  0.02f);
    glVertex2f(-0.01f,  0.02f);
    glVertex2f(-0.02f,  0.00f);
    glEnd();

    glPopMatrix();
}

/* Handler for window re-size event. Called back when the window first appears and
   whenever the window is re-sized with its new width and height */
void reshape(GLsizei width, GLsizei height) {  // GLsizei for non-negative GLinteger
    // Compute aspect ratio of the new window
    if (height == 0) height = 1;                // To prevent divide by 0
    GLfloat aspect = (GLfloat)width / (GLfloat)height;

    // Set the viewport to cover the new window
    glViewport(0, 0, width, height);

    // Set the aspect ratio of the clipping area to match the viewport
    glMatrixMode(GL_PROJECTION);  // To operate on the Projection matrix
    glLoadIdentity();
    if (width >= height) {
        // aspect >= 1, set the height from -1 to 1, with larger width
        gluOrtho2D(-1.0 * aspect, 1.0 * aspect, -1.0, 1.0);
    } else {
        // aspect < 1, set the width to -1 to 1, with larger height
        gluOrtho2D(-1.0, 1.0, -1.0 / aspect, 1.0 / aspect);
    }
}

void specialKeys(GLint key, GLint x, GLint y) {
    switch (key) {
        case GLUT_KEY_UP:    // for pressing the up key, increases earth day speed
            earthTimeInterval *= 2;
            break;
    }
}

/* Main function: GLUT runs as a console application starting at main() */
GLint main(GLint argc, char** argv) {
    glutInit(&argc, argv);          // Initialize GLUT
    glutInitDisplayMode(GLUT_DOUBLE);  // Enable double buffered mode
    glutInitWindowSize(640, 480);   // Set the window's initial width & height - non-square
    glutInitWindowPosition(50, 50); // Position the window's initial top-left corner
    glutCreateWindow("Solar System");  // Create window with the given title
    glutDisplayFunc(display);       // Register callback handler for window re-paGLint event
    glutReshapeFunc(reshape);       // Register callback handler for window re-size event
    glutTimerFunc(0, Timer, 0);     // First timer call immediately
    glutSpecialFunc(specialKeys); // Register callback handler for special-key event
    initGL();                       // Our own OpenGL initialization
    glutMainLoop();                 // Enter the infinite event-processing loop
    return 0;
}