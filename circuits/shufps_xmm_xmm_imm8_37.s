  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm2, %ymm3                       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vmovsldup %xmm9, %xmm12                         #  3     0xa   5      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm2, %xmm13                  #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  5     0x13  5      OPC=callq_label            
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
