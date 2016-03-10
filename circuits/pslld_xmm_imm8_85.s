  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorpd %xmm3, %xmm3, %xmm3  #  1     0    4      OPC=vxorpd_xmm_xmm_xmm  
  vpmovzxbq %xmm3, %xmm0      #  2     0x4  5      OPC=vpmovzxbq_xmm_xmm   
  movq %xmm0, %xmm1           #  3     0x9  4      OPC=movq_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
