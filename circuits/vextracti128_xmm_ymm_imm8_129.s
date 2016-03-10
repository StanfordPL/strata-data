  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovdqa %xmm11, %xmm10                #  2     0x5   5      OPC=vmovdqa_xmm_xmm          
  vmovlhps %xmm10, %xmm10, %xmm6        #  3     0xa   5      OPC=vmovlhps_xmm_xmm_xmm     
  vpunpckhqdq %xmm10, %xmm6, %xmm1      #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                  #  5     0x14  1      OPC=retq                     
                                                                                           
.size target, .-target
