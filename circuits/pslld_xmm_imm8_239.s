  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vxorpd %xmm14, %xmm14, %xmm7  #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxwq %xmm7, %xmm9         #  2     0x5   6      OPC=pmovzxwq_xmm_xmm    
  vmovddup %xmm9, %xmm10        #  3     0xb   5      OPC=vmovddup_xmm_xmm    
  movupd %xmm10, %xmm1          #  4     0x10  5      OPC=movupd_xmm_xmm      
  retq                          #  5     0x15  1      OPC=retq                
                                                                              
.size target, .-target
