  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm1, %xmm15         #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm   
  vmovddup %xmm8, %xmm11             #  3     0xa   5      OPC=vmovddup_xmm_xmm       
  vunpckhps %xmm11, %xmm15, %xmm12   #  4     0xf   5      OPC=vunpckhps_xmm_xmm_xmm  
  movaps %xmm12, %xmm1               #  5     0x14  4      OPC=movaps_xmm_xmm         
  retq                               #  6     0x18  1      OPC=retq                   
                                                                                      
.size target, .-target
