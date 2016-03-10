  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vmaxpd %xmm3, %xmm3, %xmm1                    #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm    
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label           
  vsubsd %xmm3, %xmm4, %xmm9                    #  3     0x9   4      OPC=vsubsd_xmm_xmm_xmm    
  vmovhlps %xmm2, %xmm9, %xmm6                  #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label           
  retq                                          #  6     0x16  1      OPC=retq                  
                                                                                                
.size target, .-target
