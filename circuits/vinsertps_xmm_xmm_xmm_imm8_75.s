  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vaddsubps %xmm2, %xmm1, %xmm4                   #  2     0x5   4      OPC=vaddsubps_xmm_xmm_xmm  
  movshdup %xmm9, %xmm8                           #  3     0x9   5      OPC=movshdup_xmm_xmm       
  movdqu %xmm8, %xmm4                             #  4     0xe   5      OPC=movdqu_xmm_xmm         
  vmovlhps %xmm10, %xmm2, %xmm14                  #  5     0x13  5      OPC=vmovlhps_xmm_xmm_xmm   
  vunpckhpd %ymm14, %ymm4, %ymm1                  #  6     0x18  5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
