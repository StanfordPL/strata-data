  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  divsd %xmm3, %xmm2            #  1     0    4      OPC=divsd_xmm_xmm       
  movdqu %xmm2, %xmm12          #  2     0x4  5      OPC=movdqu_xmm_xmm      
  vmovsd %xmm12, %xmm12, %xmm1  #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
