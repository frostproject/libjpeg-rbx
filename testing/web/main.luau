local net = require("@lune/net")
local fs = require("@lune/fs")
local process = require("@lune/process")
local ASSETS_PATH = "./testing/web/assets/"
local ARGUMENTS = process.args
local IMAGE_PATH: string
local PORT: number = tonumber(process.env.PORT) or 8080
local DEBUG_MODE: boolean = true

if ARGUMENTS[1] == "--image" or ARGUMENTS[1] == "-i" then
	if ARGUMENTS[2] ~= nil then
		if fs.isFile(ARGUMENTS[2]) then
			IMAGE_PATH = ARGUMENTS[2]
		elseif fs.isFile(ASSETS_PATH .. ARGUMENTS[2]) then
			IMAGE_PATH = ASSETS_PATH .. ARGUMENTS[2]
		else
			error(`Invalid path or file name given "{ARGUMENTS[2]}"`)
		end
	else
		error(`Invalid path or file name given "{ARGUMENTS[2]}"`)
	end
elseif ARGUMENTS[1] ~= nil then
	error(`Invalid argument "{ARGUMENTS[1]}"`)
else
	IMAGE_PATH = ASSETS_PATH .. "high-quality.jpg"
end

local imageData: string = fs.readFile(IMAGE_PATH)

local function requestDebug(status: number, method: string, path: string): ()
	if DEBUG_MODE then
		print(`{os.date()} --> {status} {method} on {path}`)
	end
end

net.serve(PORT, function(request: net.ServeRequest): net.ServeResponse
	if request.method == "GET" and request.path == "/" then
		requestDebug(200, "GET", "/")
		return {
			status = 200,
			headers = {
				["Content-Type"] = "image/jpeg",
			},
			body = imageData :: any,
		}
	else
		requestDebug(404, request.method, request.path :: string)
		return {
			status = 404,
			body = "Not found 404",
		}
	end
end)

print(`\nNow listening on port {PORT}`)
print(`You can get a test image at http://localhost:{PORT}/`)
print(`To change it use the -i or --image arguments. Example: pesde run serve -- --image high-quality.jpg`)
print(`Relative paths from the project root also work: pesde run serve -- --image ./testing/web/assets/high-quality.jpg`)
