  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  movsd %xmm2, %xmm1    #  1     0    4      OPC=movsd_xmm_xmm   
  movupd %xmm2, %xmm14  #  2     0x4  5      OPC=movupd_xmm_xmm  
  minsd %xmm14, %xmm1   #  3     0x9  5      OPC=minsd_xmm_xmm   
  retq                  #  4     0xe  1      OPC=retq            
                                                                 
.size target, .-target
