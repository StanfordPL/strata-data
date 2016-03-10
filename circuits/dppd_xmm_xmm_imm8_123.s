  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm6  #  1     0    4      OPC=vmulpd_xmm_xmm_xmm  
  haddpd %xmm6, %xmm6         #  2     0x4  4      OPC=haddpd_xmm_xmm      
  movddup %xmm6, %xmm1        #  3     0x8  4      OPC=movddup_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
