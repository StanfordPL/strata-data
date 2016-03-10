  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnlel %ebx, %ecx  #  1     0    3      OPC=cmovnlel_r32_r32  
  xchgl %ebx, %ecx     #  2     0x3  2      OPC=xchgl_r32_r32     
  retq                 #  3     0x5  1      OPC=retq              
                                                                  
.size target, .-target
