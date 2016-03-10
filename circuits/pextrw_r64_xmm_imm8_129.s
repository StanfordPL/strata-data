  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpmovzxwq %xmm1, %xmm8            #  1     0    5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %xmm8, %xmm8, %xmm12  #  2     0x5  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq %xmm12, %rbx                 #  3     0xa  5      OPC=movq_r64_xmm             
  retq                              #  4     0xf  1      OPC=retq                     
                                                                                      
.size target, .-target
