  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm3                        #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  movq %xmm6, %rbx                              #  3     0xa   5      OPC=movq_r64_xmm       
  andl %ebx, %ebx                               #  4     0xf   2      OPC=andl_r32_r32       
  retq                                          #  5     0x11  1      OPC=retq               
                                                                                             
.size target, .-target
