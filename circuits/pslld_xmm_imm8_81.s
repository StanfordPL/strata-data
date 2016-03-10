  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm5, %xmm12               #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  sqrtpd %xmm12, %xmm1                          #  4     0xf   5      OPC=sqrtpd_xmm_xmm         
  retq                                          #  5     0x14  1      OPC=retq                   
                                                                                                 
.size target, .-target
