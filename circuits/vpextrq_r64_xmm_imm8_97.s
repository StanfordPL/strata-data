  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpmovsxwq %xmm1, %xmm12        #  1     0     5      OPC=vpmovsxwq_xmm_xmm    
  vphaddd %ymm12, %ymm12, %ymm3  #  2     0x5   5      OPC=vphaddd_ymm_ymm_ymm  
  unpckhpd %xmm3, %xmm1          #  3     0xa   4      OPC=unpckhpd_xmm_xmm     
  movq %xmm1, %rbx               #  4     0xe   5      OPC=movq_r64_xmm         
  retq                           #  5     0x13  1      OPC=retq                 
                                                                                
.size target, .-target
