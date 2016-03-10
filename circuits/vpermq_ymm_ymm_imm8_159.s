  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm13, %xmm8       #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovddup %xmm13, %xmm5                #  3     0xa   5      OPC=vmovddup_xmm_xmm       
  vmovhlps %xmm2, %xmm5, %xmm9          #  4     0xf   4      OPC=vmovhlps_xmm_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x13  5      OPC=callq_label            
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
