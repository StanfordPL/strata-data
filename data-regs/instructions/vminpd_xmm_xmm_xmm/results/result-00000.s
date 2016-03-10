  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovups %xmm3, %xmm5        #  1     0     4      OPC=vmovups_xmm_xmm     
  vaddps %xmm5, %xmm5, %xmm1  #  2     0x4   4      OPC=vaddps_xmm_xmm_xmm  
  vandpd %xmm5, %xmm3, %xmm0  #  3     0x8   4      OPC=vandpd_xmm_xmm_xmm  
  movupd %xmm2, %xmm1         #  4     0xc   4      OPC=movupd_xmm_xmm      
  vminpd %ymm0, %ymm1, %ymm1  #  5     0x10  4      OPC=vminpd_ymm_ymm_ymm  
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
