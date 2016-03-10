  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vunpcklps %ymm2, %ymm3, %ymm14    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm3, %ymm14, %ymm13  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  movlhps %xmm3, %xmm13             #  3     0x8   4      OPC=movlhps_xmm_xmm         
  vunpckhpd %ymm2, %ymm13, %ymm7    #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovups %ymm7, %ymm5              #  5     0x10  4      OPC=vmovups_ymm_ymm         
  vmovups %ymm5, %ymm1              #  6     0x14  4      OPC=vmovups_ymm_ymm         
  retq                              #  7     0x18  1      OPC=retq                    
                                                                                      
.size target, .-target
