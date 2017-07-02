#include "AssetsManager.hpp"

AssetsManager::AssetsManager()
{
    m_default_texture.create(1,1);

    std::vector<sf::Int16> samples = {0};
    m_default_soundBuffer.loadFromSamples(&samples[0],samples.size(),1,44100);

    m_default_font.loadFromFile("Projet-42.2/Game/ressources/fonts/arial.ttf");

    const std::string dfshtmp =
    "void main(){gl_Position=gl_ModelViewProjectionMatrix*gl_Vertex;gl_TexCoord[0]=gl_TextureMatrix[0]*gl_MultiTexCoord0;gl_FrontColor=gl_Color;}";
    m_default_shader.loadFromMemory(dfshtmp,sf::Shader::Vertex);

}

AssetsManager::AssetsManager( const std::string& path_list_assets , const std::string& name)
{
    AssetsManager();
    loadAssetsList(path_list_assets,name);
}

bool AssetsManager::loadAssetsList( const std::string& path  , const std::string& name )
{
    std::ifstream file(path+name,std::ios::in);
    if( !file.is_open() )
        return false;
    else
    {
        std::string buffer;
        char section = 0x00;  //'t'=>TEXTURES / 'f'=>FONTS / 's'=>SHADERS / 'b'=>SOUNDBUFFERS
        Asset_informations inf;
        while( !file.eof() )
        {
            buffer.clear();
            file >> buffer;
            if( buffer[0] == '#' || buffer.empty() )
                continue;
            else if( buffer[0] == '[' )
            {
                if( buffer == "[TEXTURES]" )section = 't';
                else if( buffer == "[FONTS]" )section = 'f';
                else if( buffer == "[SHADERS]" )section = 's';
                else if( buffer == "[SOUNDBUFFERS]" )section = 'b';
                else section = 0x00;
                continue;
            }
            inf = _process_line(buffer);
            if( inf.name.empty() || inf.path.empty() )
                continue;

            switch(section)
            {
                case 't' : loadTextureFrom(path+inf.path,inf.name,sf::IntRect(inf.option_1,inf.option_2,inf.option_3,inf.option_4),inf.option_5); break;
                case 'f' : loadFontFrom(path+inf.path,inf.name); break;
                case 's' : loadShaderFrom(path+inf.path,inf.name,static_cast<sf::Shader::Type>(inf.option_1)); break;
                case 'b' : loadSoundBufferFrom(path+inf.path,inf.name); break;
                default : continue;
            }


        }
    }
}

AssetsManager::Asset_informations AssetsManager::_process_line(std::string& line)
{
    Asset_informations inf;
    std::size_t found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.name = line.substr(0,found);
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.path = line.substr(0,found);
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.option_1 = std::atoi(line.substr(0,found).c_str());
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.option_2 = std::atoi(line.substr(0,found).c_str());
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.option_3 = std::atoi(line.substr(0,found).c_str());
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.option_4 = std::atoi(line.substr(0,found).c_str());
        line = line.substr(found+1);
    }
    found = line.find_first_of(";",0);
    if(found != std::string::npos)
    {
        inf.option_5 = std::atoi(line.substr(0,found).c_str());
        line = line.substr(found+1);
    }

    return inf;
}

bool AssetsManager::loadTextureFrom(const std::string& path, const std::string& name, const sf::IntRect area, bool smoothed)
{
    sf::Texture tmp;
    bool b = false;

    if(area.height != 0 && area.width != 0)
        b = tmp.loadFromFile(path,area);
    else
        b = tmp.loadFromFile(path);

    if(b){
        tmp.setSmooth(smoothed);
        m_textures[name] = tmp;
        return true;
    }
    return false;
}

bool AssetsManager::loadFontFrom(const std::string& path, const std::string& name)
{
    sf::Font tmp;
    if( tmp.loadFromFile(path) )
    {
        m_fonts[name] = tmp;
        return true;
    }
    return false;
}

bool AssetsManager::loadShaderFrom(const std::string& path, const std::string& name, sf::Shader::Type type)
{
    return m_shaders[name].loadFromFile(path,type);
}

bool AssetsManager::loadSoundBufferFrom(const std::string& path, const std::string& name)
{
    sf::SoundBuffer tmp;
    if( tmp.loadFromFile(path) )
    {
        m_soundBuffers[name] = tmp;
        return true;
    }
    return false;
}

const sf::Texture*  AssetsManager::getTexture( const std::string& name ) const
{
    const auto& it = m_textures.find(name);
    if( it != m_textures.end() )
        return &m_textures.at(name);
    else
        return &m_default_texture;
}

const sf::Font* AssetsManager::getFont( const std::string& name ) const
{
    const auto& it = m_fonts.find(name);
    if( it != m_fonts.end() )
        return &m_fonts.at(name);
    else
        return nullptr;
}

const sf::Shader* AssetsManager::getShader( const std::string& name ) const
{
    const auto& it = m_shaders.find(name);
    if( it != m_shaders.end() )
        return &m_shaders.at(name);
    else
        return &m_default_shader;
}

const sf::SoundBuffer* AssetsManager::getSoundBuffer( const std::string& name ) const
{
    const auto& it = m_soundBuffers.find(name);
    if( it != m_soundBuffers.end() )
        return &m_soundBuffers.at(name);
    else
        return &m_default_soundBuffer;
}
