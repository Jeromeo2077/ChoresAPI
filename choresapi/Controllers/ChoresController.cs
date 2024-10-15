namespace choresapi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ChoresController : ControllerBase
{

  public ChoresController(ChoresService choresService)
  {
    _choresService = choresService;
  }

  private readonly ChoresService _choresService;


  [HttpGet]
  public ActionResult<List<Chore>> GetAllChores()
  {
    try
    {
      List<Chore> chores = _choresService.GetAllChores();
      return Ok(chores);
    }
    catch (System.Exception error)
    {
      return BadRequest(error.Message);
    }
  }
}