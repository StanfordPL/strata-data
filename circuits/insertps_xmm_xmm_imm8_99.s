  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm13, %xmm2, %xmm3       #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vxorps %ymm11, %ymm11, %ymm5         #  3     0xa   5      OPC=vxorps_ymm_ymm_ymm     
  vsubps %xmm5, %xmm5, %xmm7           #  4     0xf   4      OPC=vsubps_xmm_xmm_xmm     
  vcvtss2sd %xmm7, %xmm3, %xmm7        #  5     0x13  4      OPC=vcvtss2sd_xmm_xmm_xmm  
  movupd %xmm7, %xmm1                  #  6     0x17  4      OPC=movupd_xmm_xmm         
  retq                                 #  7     0x1b  1      OPC=retq                   
                                                                                        
.size target, .-target
