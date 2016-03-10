  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm7  #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmovdqu %xmm1, %xmm0        #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  vmovapd %xmm0, %xmm3        #  3     0x8   4      OPC=vmovapd_xmm_xmm     
  vaddps %xmm7, %xmm3, %xmm0  #  4     0xc   4      OPC=vaddps_xmm_xmm_xmm  
  movss %xmm0, %xmm1          #  5     0x10  4      OPC=movss_xmm_xmm       
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
