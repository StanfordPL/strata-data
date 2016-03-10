  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  pxor %xmm1, %xmm1       #  1     0    4      OPC=pxor_xmm_xmm       
  vpmovzxwq %xmm1, %xmm5  #  2     0x4  5      OPC=vpmovzxwq_xmm_xmm  
  movq %xmm5, %xmm1       #  3     0x9  4      OPC=movq_xmm_xmm       
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
