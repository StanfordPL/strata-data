  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm3, %xmm5                       #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm   
  vmovsldup %xmm9, %xmm1                          #  3     0xa   5      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm5, %xmm3, %xmm9                   #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpcklqdq %xmm9, %xmm1                         #  5     0x13  5      OPC=punpcklqdq_xmm_xmm     
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
