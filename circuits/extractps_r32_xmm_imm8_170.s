  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm12  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxdq %xmm12, %xmm10           #  2     0x4  6      OPC=pmovzxdq_xmm_xmm         
  movq %xmm10, %rbx                 #  3     0xa  5      OPC=movq_r64_xmm             
  retq                              #  4     0xf  1      OPC=retq                     
                                                                                      
.size target, .-target
