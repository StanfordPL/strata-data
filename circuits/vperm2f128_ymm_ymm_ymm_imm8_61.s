  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorpd %xmm9, %xmm9     #  1     0    5      OPC=xorpd_xmm_xmm     
  pmovzxwq %xmm9, %xmm3  #  2     0x5  6      OPC=pmovzxwq_xmm_xmm  
  vmovupd %ymm3, %ymm1   #  3     0xb  4      OPC=vmovupd_ymm_ymm   
  retq                   #  4     0xf  1      OPC=retq              
                                                                    
.size target, .-target
