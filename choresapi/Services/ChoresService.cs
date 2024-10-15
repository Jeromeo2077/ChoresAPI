using System.Security.Cryptography.X509Certificates;

namespace choresapi.Services;


public class ChoresService
{
  public ChoresService(ChoresRepository choresRepository)
  {
    _choresRepository = choresRepository;
  }
  private readonly ChoresRepository _choresRepository;


  internal List<Chore> GetAllChores()
  {
    return _choresRepository.GetAllChores();
  }
}