  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm1                #  1     0     4      OPC=vmovupd_xmm_xmm     
  callq .move_byte_26_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label         
  vmaxps %xmm3, %xmm2, %xmm8          #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm  
  movss %xmm8, %xmm1                  #  4     0xd   5      OPC=movss_xmm_xmm       
  callq .move_r9b_to_byte_19_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
