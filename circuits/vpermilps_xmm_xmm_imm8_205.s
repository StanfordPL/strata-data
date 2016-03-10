  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label              
  movshdup %xmm2, %xmm13            #  2     0x5   5      OPC=movshdup_xmm_xmm         
  movq %r13, %xmm5                  #  3     0xa   5      OPC=movq_xmm_r64             
  vmovss %xmm2, %xmm5, %xmm14       #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm       
  vmovss %xmm13, %xmm14, %xmm2      #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm14, %xmm2, %xmm1  #  6     0x18  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  7     0x1d  1      OPC=retq                     
                                                                                       
.size target, .-target
