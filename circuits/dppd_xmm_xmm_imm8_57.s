  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm2, %xmm2, %xmm5  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  mulpd %xmm2, %xmm1          #  2     0x4  4      OPC=mulpd_xmm_xmm       
  haddpd %xmm5, %xmm1         #  3     0x8  4      OPC=haddpd_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
