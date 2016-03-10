  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  shrxl %ecx, %ebx, %ecx  #  1     0     5      OPC=shrxl_r32_r32_r32  
  tzcntw %cx, %r10w       #  2     0x5   6      OPC=tzcntw_r16_r16     
  tzcntw %r10w, %r8w      #  3     0xb   6      OPC=tzcntw_r16_r16     
  retq                    #  4     0x11  1      OPC=retq               
                                                                       
.size target, .-target
