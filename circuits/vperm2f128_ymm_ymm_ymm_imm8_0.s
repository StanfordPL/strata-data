  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label        
  vorpd %xmm2, %xmm12, %xmm13           #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm12                 #  3     0x9   4      OPC=vmovdqu_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xd   5      OPC=callq_label        
  retq                                  #  5     0x12  1      OPC=retq               
                                                                                     
.size target, .-target
