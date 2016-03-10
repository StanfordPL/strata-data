  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  unpckhpd %xmm1, %xmm1             #  1     0     4      OPC=unpckhpd_xmm_xmm         
  vpmovzxwq %xmm1, %xmm3            #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %xmm1, %xmm3, %xmm13  #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq %xmm13, %rbx                 #  4     0xd   5      OPC=movq_r64_xmm             
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
