  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  unpckhps %xmm1, %xmm1   #  1     0    3      OPC=unpckhps_xmm_xmm   
  vpmovzxbq %xmm1, %xmm1  #  2     0x3  5      OPC=vpmovzxbq_xmm_xmm  
  vmovq %xmm1, %rbx       #  3     0x8  5      OPC=vmovq_r64_xmm      
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
