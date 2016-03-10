  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxbq %xmm10, %xmm1               #  2     0x5   6      OPC=pmovzxbq_xmm_xmm  
  addsubpd %xmm1, %xmm1                #  3     0xb   4      OPC=addsubpd_xmm_xmm  
  andnpd %xmm1, %xmm1                  #  4     0xf   4      OPC=andnpd_xmm_xmm    
  retq                                 #  5     0x13  1      OPC=retq              
                                                                                   
.size target, .-target
