  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm10  #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vmaxpd %xmm2, %xmm2, %xmm0  #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm    
  punpckhdq %xmm10, %xmm0     #  3     0x9   5      OPC=punpckhdq_xmm_xmm     
  vmovsd %xmm2, %xmm0, %xmm0  #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm    
  vmaxps %xmm0, %xmm0, %xmm1  #  5     0x12  4      OPC=vmaxps_xmm_xmm_xmm    
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
