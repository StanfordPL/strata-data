  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovapd %xmm3, %xmm8        #  1     0     4      OPC=vmovapd_xmm_xmm     
  vandps %xmm2, %xmm2, %xmm1  #  2     0x4   4      OPC=vandps_xmm_xmm_xmm  
  vdivpd %ymm8, %ymm1, %ymm5  #  3     0x8   5      OPC=vdivpd_ymm_ymm_ymm  
  vmovapd %xmm5, %xmm1        #  4     0xd   4      OPC=vmovapd_xmm_xmm     
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
