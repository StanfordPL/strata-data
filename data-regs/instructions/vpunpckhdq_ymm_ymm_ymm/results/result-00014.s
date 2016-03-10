  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  cvtdq2pd %xmm10, %xmm1                          #  2     0x5   5      OPC=cvtdq2pd_xmm_xmm       
  movsd %xmm1, %xmm3                              #  3     0xa   4      OPC=movsd_xmm_xmm          
  vunpckhps %ymm3, %ymm2, %ymm1                   #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm  
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
