  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovngel %ebx, %ecx  #  1     0    3      OPC=cmovngel_r32_r32  
  setnge %bl           #  2     0x3  3      OPC=setnge_r8         
  xchgl %ecx, %ebx     #  3     0x6  2      OPC=xchgl_r32_r32     
  retq                 #  4     0x8  1      OPC=retq              
                                                                  
.size target, .-target
