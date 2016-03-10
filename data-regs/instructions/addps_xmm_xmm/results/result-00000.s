  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpand %xmm1, %xmm1, %xmm5   #  1     0    4      OPC=vpand_xmm_xmm_xmm   
  vaddps %xmm2, %xmm5, %xmm2  #  2     0x4  4      OPC=vaddps_xmm_xmm_xmm  
  movdqa %xmm2, %xmm1         #  3     0x8  4      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
