  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovddup %xmm2, %xmm1             #  1     0    4      OPC=vmovddup_xmm_xmm         
  vpunpckhqdq %xmm1, %xmm2, %xmm11  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movdqa %xmm11, %xmm1              #  3     0x8  5      OPC=movdqa_xmm_xmm           
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
