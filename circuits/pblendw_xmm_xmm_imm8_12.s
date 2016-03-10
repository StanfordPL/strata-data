  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm1, %xmm2, %xmm3  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  movdqu %xmm3, %xmm10        #  2     0x4  5      OPC=movdqu_xmm_xmm      
  movsd %xmm10, %xmm1         #  3     0x9  5      OPC=movsd_xmm_xmm       
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
