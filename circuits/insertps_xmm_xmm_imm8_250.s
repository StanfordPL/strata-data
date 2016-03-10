  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovlhps %xmm1, %xmm13, %xmm8        #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm   
  vunpckhps %xmm1, %xmm8, %xmm6        #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovzxdq %xmm6, %xmm1                #  4     0xd   5      OPC=pmovzxdq_xmm_xmm       
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
