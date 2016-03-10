  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovss %xmm2, %xmm2, %xmm12         #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  vorpd %xmm2, %xmm3, %xmm9           #  2     0x4   4      OPC=vorpd_xmm_xmm_xmm   
  vxorps %xmm12, %xmm9, %xmm1         #  3     0x8   5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_byte_19_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label         
  callq .move_r9b_to_byte_23_of_ymm1  #  5     0x12  5      OPC=callq_label         
  callq .move_r9b_to_byte_29_of_ymm1  #  6     0x17  5      OPC=callq_label         
  retq                                #  7     0x1c  1      OPC=retq                
                                                                                    
.size target, .-target
