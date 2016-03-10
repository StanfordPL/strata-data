  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovdqu %xmm2, %xmm5              #  1     0     4      OPC=vmovdqu_xmm_xmm          
  vmovupd %xmm1, %xmm10             #  2     0x4   4      OPC=vmovupd_xmm_xmm          
  vmovupd %xmm3, %xmm6              #  3     0x8   4      OPC=vmovupd_xmm_xmm          
  vfmsub231ps %ymm6, %ymm10, %ymm5  #  4     0xc   5      OPC=vfmsub231ps_ymm_ymm_ymm  
  vminpd %ymm5, %ymm5, %ymm1        #  5     0x11  4      OPC=vminpd_ymm_ymm_ymm       
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
