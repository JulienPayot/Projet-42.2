#ifndef ASSETS_MANAGER_HPP
#define ASSETS_MANAGER_HPP

#include <string>
#include <map>
#include <fstream>
#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include <iostream>

class AssetsManager
{
public:
    AssetsManager();
    AssetsManager(const std::string& path_list_assets, const std::string& name);

    bool loadAssetsList(const std::string& path ,  const std::string& name);

    bool loadTextureFrom(const std::string& path, const std::string& name, const sf::IntRect area = sf::IntRect(0,0,0,0), bool smoothed = true);
    bool loadFontFrom(const std::string& path, const std::string& name);
    bool loadShaderFrom(const std::string& path, const std::string& name, const sf::Shader::Type type);
    bool loadSoundBufferFrom(const std::string& path, const std::string& name);

    const sf::Texture* getTexture( const std::string& name ) const ;
    const sf::Font* getFont( const std::string& name ) const ;
    const sf::Shader* getShader( const std::string& name ) const ;
    const sf::SoundBuffer* getSoundBuffer( const std::string& name ) const ;


private:
    std::map<std::string,sf::Texture>       m_textures;
    std::map<std::string,sf::Font>          m_fonts;
    std::map<std::string,sf::Shader>        m_shaders;
    std::map<std::string,sf::SoundBuffer>   m_soundBuffers;

    sf::Texture             m_default_texture;
    sf::Shader              m_default_shader;
    sf::Font                m_default_font;
    sf::SoundBuffer         m_default_soundBuffer;

    typedef struct
    {
        std::string name = "";
        std::string path = "";
        int option_1 = 0;
        int option_2 = 0;
        int option_3 = 0;
        int option_4 = 0;
        int option_5 = 0;
    }Asset_informations;

    Asset_informations _process_line(std::string& line);

};

#endif // ASSETS_MANAGER_HPP
