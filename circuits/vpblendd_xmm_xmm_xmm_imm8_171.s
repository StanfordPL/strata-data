  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm3, %xmm2, %xmm12              #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  movq %xmm12, %xmm6                            #  3     0x9   5      OPC=movq_xmm_xmm             
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xe   5      OPC=callq_label              
  vmovups %xmm3, %xmm1                          #  5     0x13  4      OPC=vmovups_xmm_xmm          
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
