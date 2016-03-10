  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  addsubpd %xmm1, %xmm1         #  1     0     4      OPC=addsubpd_xmm_xmm    
  movapd %xmm1, %xmm6           #  2     0x4   4      OPC=movapd_xmm_xmm      
  pmovzxbq %xmm6, %xmm15        #  3     0x8   6      OPC=pmovzxbq_xmm_xmm    
  vmulpd %xmm15, %xmm15, %xmm0  #  4     0xe   5      OPC=vmulpd_xmm_xmm_xmm  
  vmovapd %xmm0, %xmm2          #  5     0x13  4      OPC=vmovapd_xmm_xmm     
  movddup %xmm2, %xmm1          #  6     0x17  4      OPC=movddup_xmm_xmm     
  retq                          #  7     0x1b  1      OPC=retq                
                                                                              
.size target, .-target
