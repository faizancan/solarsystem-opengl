#include <iostream>
#include <sys/stat.h>
#include <GLUT/glut.h>  // GLUT, include glu.h and gl.h
#include "solarsystem.h"
#include <string>

// global variable
GLfloat angle = 0.0f;  // rotational angle of the shapes
GLint refreshMills = 30; // refresh GLinterval in milliseconds
GLfloat earthDays = 0.0f;
GLfloat earthYears = 0.0f;
GLfloat earthDaysPerYear = 0.0f;
GLfloat earthTimeInterval = 1.0f;
GLfloat earthTimeIntervalTemp = earthTimeInterval;
GLint earthDaysTotal = 0;
GLint earthYearsTotal = 0;
GLint earthDaysSingleYr = 0;

// Strings for key functions
unsigned char string_legendTitle[] = "Key Functions:"; // length = 14
unsigned char string_q[] = "q - Quit"; // length = 9
unsigned char string_p[] = "p - Pause"; // length = 9
unsigned char string_c[] = "c - Continue"; // length = 12
unsigned char string_r[] = "r - Reverse"; // length = 11
unsigned char string_UP[] = "up arrow - Speed Up"; // length = 19
unsigned char string_DOWN[] = "down arrow - Slow down"; // length = 22

// Strings for counter display
unsigned char string_years[] = "Earth Years Elapsed:"; // length = 21
unsigned char string_days[] = "Day of Current Year:"; // length = 20
unsigned char string_daysTotal[] = "Earth Days Elapsed:"; // length = 19;
char numYears[10];
char numDays[10];
//char numSDays[10];
unsigned char yrCount[] = "0";
unsigned char dayCount[] = "0";
//unsigned char sDayCount[] = "0";

void displaySun();
void displayPlanets();
void displayEachPlanet(GLfloat tilt, GLfloat distanceFromSun, GLfloat rotationPeriod, GLfloat orbitPeriod, GLfloat color1, GLfloat color2, GLfloat color3);
void displayKeyFunctions();
void displayCounter();

/* Initialize OpenGL Graphics */
void initGL() {
    // Set "clearing" or background color
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black and opaque
}

/* Called back when timer expired */
void Timer(GLint value) {
    earthDaysTotal += 1*earthTimeInterval; //not correct bc update can happen not at 1 day rate - place holder
    earthDays += earthTimeInterval;
    earthDaysPerYear += earthTimeInterval;
    earthYearsTotal = earthDaysTotal / 365;
    earthDaysSingleYr = earthDaysTotal % 365;
    if (earthDays >= 365) //this was earthDaysPerYear but I changed it because then it only set earthDays back to zero once
        earthDays -= 365;
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
    displayKeyFunctions();
    displayCounter();

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
    glVertex2f(0.0f, -0.04f); //point 1 (bottom)
    glVertex2f( 0.01f, -0.02f);
    glVertex2f(0.035f, -0.015f); //point 2
    glVertex2f( 0.02f,  0.00f);
    glVertex2f(0.035f, 0.015f); //point 3
    glVertex2f( 0.01f,  0.02f);
    glVertex2f(0.0f, 0.04f); //point 4
    glVertex2f(-0.01f,  0.02f);
    glVertex2f(-0.035f, 0.015f); //point 5
    glVertex2f(-0.02f,  0.0f);
    glVertex2f(-0.035f, -0.015f); //point 6
    glEnd();

    glPopMatrix();
}

void displayPlanets() {
    displayEachPlanet(MERCURY_INCLINATION,
                      MERCURY_DISTANCE, MERCURY_ROTATION, MERCURY_ORBIT, 1.0, 0.0, 0.0); // red
    displayEachPlanet(VENUS_INCLINATION,
                      VENUS_DISTANCE, VENUS_ROTATION, VENUS_ORBIT, 0.25, 0.0, 0.25); // dark purple
    displayEachPlanet(EARTH_INCLINATION,
                      EARTH_DISTANCE, EARTH_ROTATION, EARTH_ORBIT, 0.0, 0.5 ,0.0); //dark green
    displayEachPlanet(MARS_INCLINATION,
                      MARS_DISTANCE, MARS_ROTATION, MARS_ORBIT, 0.5, 0.0,0.0); //dark red
    displayEachPlanet(JUPITER_INCLINATION,
                      JUPITER_DISTANCE, JUPITER_ROTATION, JUPITER_ORBIT, 1.0, 0.5, 0.0); // orange
    displayEachPlanet(SATURN_INCLINATION,
                      SATURN_DISTANCE, SATURN_ROTATION, SATURN_ORBIT, 0.5, .25, 0.0); // dark orange
    displayEachPlanet(URANUS_INCLINATION,
                      URANUS_DISTANCE, URANUS_ROTATION, URANUS_ORBIT, 0.5, 0.0,0.5); // purple
    displayEachPlanet(NEPTUNE_INCLINATION,
                      NEPTUNE_DISTANCE, NEPTUNE_ROTATION, NEPTUNE_ORBIT, 0.0, 0.0,1.0); // blue
    displayEachPlanet(PLUTO_INCLINATION,
                      PLUTO_DISTANCE, PLUTO_ROTATION, PLUTO_ORBIT, 0.5, 0.5, 1.0); // light blue

}

// instead of bitmap field, we can use the color field
void displayEachPlanet(GLfloat inclination, GLfloat distanceFromSun, GLfloat rotationPeriod, GLfloat orbitPeriod, GLfloat color1, GLfloat color2, GLfloat color3) {
    glPushMatrix();

    glRotatef(inclination, 0.0f, 0.0f, 1.0f);
    glRotatef(360.0f * earthDaysPerYear / orbitPeriod, 0.0f, 1.0f, 0.0f);
    glTranslatef(distanceFromSun/5.0f + 0.125f, 0.0f, 0.0f); // add offset to display sun and scale down real distance
    glRotatef(360.0f * earthDays / rotationPeriod, 0.0f, 1.0f, 0.0f);

    glColor3f(color1, color2, color3);

//    glBegin(GL_POLYGON);
//    glColor3f(color, 1.0f / color, 0.0f);
//    glVertex2f(-0.01f, -0.02f);
//    glVertex2f( 0.01f, -0.02f);
//    glVertex2f( 0.02f,  0.00f);
//    glVertex2f( 0.01f,  0.02f);
//    glVertex2f(-0.01f,  0.02f);
//    glVertex2f(-0.02f,  0.00f);
//    glEnd();

    glPushMatrix();
    glTranslatef(0, 0.0, 0.0);
    glutSolidSphere(0.03, 50, 50);

    glPopMatrix();

    glPopMatrix();
}
void displayKeyFunctions(){
    glPushMatrix();
    glColor3f(1.0f,1.0f,1.0f);

    // title
    int key_title = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_legendTitle);
    glRasterPos2d(-2.2,-0.85);
    int len = 14;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_legendTitle[i]);
    }

    // quit
    int key_q = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_q);
    glRasterPos2d(-1.7,-0.85);
    len = 9;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_q[i]);
    }

    // pause
    int key_p = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_p);
    glRasterPos2d(-1.35,-0.85);
    len = 9;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_p[i]);
    }

    // continue
    int key_c = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_c);
    glRasterPos2d(-1.0,-0.85);
    len = 12;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_c[i]);
    }

    // reverse
    int key_r = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_r);
    glRasterPos2d(-0.5,-0.85);
    len = 11;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_r[i]);
    }

    // Speed up
    int key_UP = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_UP);
    glRasterPos2d(-1.7,-0.95);
    len = 19;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_UP[i]);
    }

    // Slow down
    int key_DOWN = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_DOWN);
    glRasterPos2d(-0.95,-0.95);
    len = 22;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_DOWN[i]);
    }

    glPopMatrix();
}
void displayCounter(){

    glPushMatrix();
    glColor3f(1.0f,1.0f,1.0f);

    sprintf(numYears, "%i", earthYearsTotal);
    sprintf(numDays, "%i", earthDaysTotal);
    //sprintf(numSDays, "%i", earthDaysSingleYr);

    int yrLength = 0;
    if(earthYearsTotal < 10) {
        yrCount[0] = static_cast<unsigned char>(numYears[0]);
        yrLength = 1;
    }else if(earthYearsTotal<100){
        yrCount[0] = static_cast<unsigned char>(numYears[0]);
        yrCount[1] = static_cast<unsigned char>(numYears[1]);
        yrLength = 2;
    }else if(earthYearsTotal<1000){
        yrCount[0] = static_cast<unsigned char>(numYears[0]);
        yrCount[1] = static_cast<unsigned char>(numYears[1]);
        yrCount[2] = static_cast<unsigned char>(numYears[2]);
        yrLength = 3;
    }else{
        exit(0);
    }

    //can't figure out how to get the days of that year to work correctly so taking out
    /*int sDayLength = 0;
    if(earthDaysSingleYr < 10) {
        sDayCount[0] = static_cast<unsigned char>(numSDays[0]);
        sDayLength = 1;
    }else if(earthDaysSingleYr < 100){
        sDayCount[0] = static_cast<unsigned char>(numSDays[0]);
        sDayCount[1] = static_cast<unsigned char>(numSDays[1]);
        sDayLength = 2;
    }else if(earthDaysSingleYr < 365){
        sDayCount[0] = static_cast<unsigned char>(numSDays[0]);
        sDayCount[1] = static_cast<unsigned char>(numSDays[1]);
        sDayCount[2] = static_cast<unsigned char>(numSDays[2]);
        sDayLength = 3;
    }else{
        exit(0);
    }*/

    int dayLength = 0;
    if(earthDaysTotal < 10) {
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayLength = 1;
    }else if(earthDaysTotal<100){
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayCount[1] = static_cast<unsigned char>(numDays[1]);
        dayLength = 2;
    }else if(earthDaysTotal<1000){
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayCount[1] = static_cast<unsigned char>(numDays[1]);
        dayCount[2] = static_cast<unsigned char>(numDays[2]);
        dayLength = 3;
    }else if(earthDaysTotal<10000){
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayCount[1] = static_cast<unsigned char>(numDays[1]);
        dayCount[2] = static_cast<unsigned char>(numDays[2]);
        dayCount[3] = static_cast<unsigned char>(numDays[3]);
        dayLength = 4;
    }else if(earthDaysTotal<100000){
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayCount[1] = static_cast<unsigned char>(numDays[1]);
        dayCount[2] = static_cast<unsigned char>(numDays[2]);
        dayCount[3] = static_cast<unsigned char>(numDays[3]);
        dayCount[4] = static_cast<unsigned char>(numDays[4]);
        dayLength = 5;
    }else if(earthDaysTotal<1000000){
        dayCount[0] = static_cast<unsigned char>(numDays[0]);
        dayCount[1] = static_cast<unsigned char>(numDays[1]);
        dayCount[2] = static_cast<unsigned char>(numDays[2]);
        dayCount[3] = static_cast<unsigned char>(numDays[3]);
        dayCount[4] = static_cast<unsigned char>(numDays[4]);
        dayCount[5] = static_cast<unsigned char>(numDays[5]);
        dayLength = 6;
    } else{
        exit(0);
    }

    // Years
    int key_years = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_years);
    glRasterPos2d(-2.2, 0.9);
    int len = 21;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_years[i]);
    }

    // Year Count
    int key_yearNum = glutBitmapLength(GLUT_BITMAP_8_BY_13, yrCount);
    glRasterPos2d(-1.5, 0.9);
    len = yrLength;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,yrCount[i]);
    }

    /*// Days
    int key_days = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_days);
    glRasterPos2d(-2.2, 0.7);
    len = 20;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_days[i]);
    }

    // Day Count
    int key_dayNum = glutBitmapLength(GLUT_BITMAP_8_BY_13, sDayCount);
    glRasterPos2d(-1.5, 0.7);
    len = sDayLength;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13, sDayCount[i]);
    }*/

    // Total Days
    int key_daysTotal = glutBitmapLength(GLUT_BITMAP_8_BY_13, string_daysTotal);
    glRasterPos2d(-2.2, 0.8);
    len = 19;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,string_daysTotal[i]);
    }
    // Total Day Count
    int key_dayTotalNum = glutBitmapLength(GLUT_BITMAP_8_BY_13, dayCount);
    glRasterPos2d(-1.5, 0.8);
    len = dayLength;
    for(int i=0;i<len;i++){
        glutBitmapCharacter(GLUT_BITMAP_8_BY_13,dayCount[i]);
    }

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
        case GLUT_KEY_UP:    // for pressing the up key, increases earth day speed by 2x
            earthTimeInterval += 1.0;
            earthTimeIntervalTemp = earthTimeInterval; //set temp speed var to current speed
            break;
        case GLUT_KEY_DOWN:    // for pressing the down key, decreases earth day speed 0.5x
            if (earthTimeInterval > 1.0) {
            earthTimeInterval -= 1.0;
            earthTimeIntervalTemp = earthTimeInterval; //set temp speed var to current speed
            }
            break;
    }
}

void keyboard(unsigned char key, int x, int y)
{
    switch(key) {
        case 'q':
            exit(0);
            break;
        case 'p': // p = 'pause' and stops planet animation
            if(earthTimeInterval != 0.0f) { // if already paused, Temp var won't become 0
                earthTimeIntervalTemp = earthTimeInterval;
                earthTimeInterval = 0.0f;
            }
            break;
        case 'c': // c = 'continue' and restarts planet animation
            earthTimeInterval = earthTimeIntervalTemp;
            break;
        case 'r': // r = 'reverse' and reverses direction
            earthTimeInterval = -earthTimeInterval;
            earthTimeIntervalTemp = earthTimeInterval;
            break;
        default:
            break;
    }
    glutPostRedisplay();
}

/* Main function: GLUT runs as a console application starting at main() */
GLint main(GLint argc, char** argv) {
    glutInit(&argc, argv);          // Initialize GLUT
    glutInitDisplayMode(GLUT_DOUBLE);  // Enable double buffered mode
    glutInitWindowSize(1100, 480);   // Set the window's initial width & height - non-square
    glutInitWindowPosition(50, 50); // Position the window's initial top-left corner
    glutCreateWindow("Solar System");  // Create window with the given title
    glutDisplayFunc(display);       // Register callback handler for window re-paGLint event
    glutReshapeFunc(reshape);       // Register callback handler for window re-size event
    glutTimerFunc(0, Timer, 0);     // First timer call immediately
    glutSpecialFunc(specialKeys); // Register callback handler for special-key event
    glutKeyboardFunc(keyboard);
    initGL();                       // Our own OpenGL initialization
    glutMainLoop();                 // Enter the infinite event-processing loop
    return 0;
}