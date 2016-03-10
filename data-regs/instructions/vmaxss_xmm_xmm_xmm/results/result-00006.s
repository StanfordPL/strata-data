  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovapd %xmm2, %xmm1                #  1     0     4      OPC=vmovapd_xmm_xmm     
  callq .move_byte_29_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label         
  callq .move_r8b_to_byte_25_of_ymm1  #  3     0x9   5      OPC=callq_label         
  vmaxps %xmm3, %xmm2, %xmm13         #  4     0xe   4      OPC=vmaxps_xmm_xmm_xmm  
  movss %xmm13, %xmm1                 #  5     0x12  5      OPC=movss_xmm_xmm       
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
