  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovd %ecx, %xmm1                   #  1     0     4      OPC=vmovd_xmm_r32    
  cmovngl %ecx, %ebx                  #  2     0x4   3      OPC=cmovngl_r32_r32  
  callq .move_byte_28_of_ymm1_to_r9b  #  3     0x7   5      OPC=callq_label      
  callq .move_r9b_to_byte_7_of_rbx    #  4     0xc   5      OPC=callq_label      
  retq                                #  5     0x11  1      OPC=retq             
                                                                                 
.size target, .-target
