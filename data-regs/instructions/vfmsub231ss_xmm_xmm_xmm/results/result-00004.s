  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovaps %xmm1, %xmm1                #  1     0     4      OPC=vmovaps_xmm_xmm          
  callq .move_byte_29_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label              
  vfmsub132ps %xmm3, %xmm1, %xmm2     #  3     0x9   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  callq .move_r9b_to_byte_21_of_ymm1  #  4     0xe   5      OPC=callq_label              
  movss %xmm2, %xmm1                  #  5     0x13  4      OPC=movss_xmm_xmm            
  retq                                #  6     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
