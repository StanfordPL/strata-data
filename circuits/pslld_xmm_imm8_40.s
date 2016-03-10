  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vxorps %xmm1, %xmm1, %xmm8      #  1     0     4      OPC=vxorps_xmm_xmm_xmm     
  vmovapd %ymm8, %ymm11           #  2     0x4   5      OPC=vmovapd_ymm_ymm        
  vunpcklpd %xmm11, %xmm8, %xmm6  #  3     0x9   5      OPC=vunpcklpd_xmm_xmm_xmm  
  movapd %xmm6, %xmm1             #  4     0xe   4      OPC=movapd_xmm_xmm         
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
