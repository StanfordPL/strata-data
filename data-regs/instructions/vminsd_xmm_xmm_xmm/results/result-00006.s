  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovapd %xmm2, %xmm1        #  1     0     4      OPC=vmovapd_xmm_xmm     
  vminpd %xmm3, %xmm2, %xmm0  #  2     0x4   4      OPC=vminpd_xmm_xmm_xmm  
  vmovsd %xmm0, %xmm1, %xmm1  #  3     0x8   4      OPC=vmovsd_xmm_xmm_xmm  
  vmovups %ymm1, %ymm1        #  4     0xc   4      OPC=vmovups_ymm_ymm     
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
