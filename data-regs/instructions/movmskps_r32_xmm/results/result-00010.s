  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  pmovzxbq %xmm1, %xmm2     #  1     0    5      OPC=pmovzxbq_xmm_xmm   
  vpor %xmm2, %xmm1, %xmm2  #  2     0x5  4      OPC=vpor_xmm_xmm_xmm   
  vmovmskps %xmm2, %rbx     #  3     0x9  4      OPC=vmovmskps_r64_xmm  
  retq                      #  4     0xd  1      OPC=retq               
                                                                        
.size target, .-target
