#include <sb6.h>

class Sandbox : public sb6::application
{
    void render(double currentTime)
    {
        static const GLfloat red[] = {1.0f, 0.0f, 0.0f, 1.0f};
        glClearBufferfv(GL_COLOR, 0, red);
    }
};


DECLARE_MAIN(Sandbox);