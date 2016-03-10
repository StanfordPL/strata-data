  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  subps %xmm3, %xmm2                  #  1     0     3      OPC=subps_xmm_xmm       
  vandpd %xmm2, %xmm2, %xmm1          #  2     0x3   4      OPC=vandpd_xmm_xmm_xmm  
  callq .move_byte_18_of_ymm1_to_r8b  #  3     0x7   5      OPC=callq_label         
  callq .move_r8b_to_byte_24_of_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
