  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminps %xmm2, %xmm1, %xmm3  #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovupd %xmm2, %xmm5        #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vminps %xmm5, %xmm3, %xmm6  #  3     0x8   4      OPC=vminps_xmm_xmm_xmm  
  movdqa %xmm6, %xmm1         #  4     0xc   4      OPC=movdqa_xmm_xmm      
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
