  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  vmovlhps %xmm11, %xmm5, %xmm0                   #  3     0xa   5      OPC=vmovlhps_xmm_xmm_xmm  
  movq %xmm8, %xmm1                               #  4     0xf   5      OPC=movq_xmm_xmm          
  phaddd %xmm0, %xmm1                             #  5     0x14  5      OPC=phaddd_xmm_xmm        
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
