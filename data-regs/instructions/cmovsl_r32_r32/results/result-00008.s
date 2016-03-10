  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32    
  vmovd %ebx, %xmm1                  #  2     0x2   4      OPC=vmovd_xmm_r32    
  callq .move_byte_3_of_ymm1_to_r9b  #  3     0x6   5      OPC=callq_label      
  callq .move_r9b_to_byte_5_of_rbx   #  4     0xb   5      OPC=callq_label      
  cmovnsl %ecx, %ebx                 #  5     0x10  3      OPC=cmovnsl_r32_r32  
  retq                               #  6     0x13  1      OPC=retq             
                                                                                
.size target, .-target
