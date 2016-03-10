  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vmovd %ebx, %xmm7                  #  1     0     4      OPC=vmovd_xmm_r32      
  callq .move_byte_0_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label        
  movupd %xmm7, %xmm0                #  3     0x9   4      OPC=movupd_xmm_xmm     
  vpmovsxdq %xmm0, %ymm4             #  4     0xd   5      OPC=vpmovsxdq_ymm_xmm  
  callq .move_r9b_to_byte_2_of_ymm1  #  5     0x12  5      OPC=callq_label        
  callq .move_r9b_to_byte_1_of_ymm1  #  6     0x17  5      OPC=callq_label        
  movss %xmm4, %xmm1                 #  7     0x1c  4      OPC=movss_xmm_xmm      
  retq                               #  8     0x20  1      OPC=retq               
                                                                                  
.size target, .-target
