  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  movq %xmm2, %xmm1        #  1     0    4      OPC=movq_xmm_xmm       
  vpmovzxwd %xmm1, %xmm11  #  2     0x4  5      OPC=vpmovzxwd_xmm_xmm  
  movaps %xmm11, %xmm1     #  3     0x9  4      OPC=movaps_xmm_xmm     
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
