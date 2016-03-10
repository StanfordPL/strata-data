  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  vmovd %ebx, %xmm15    #  1     0    4      OPC=vmovd_xmm_r32   
  movdqu %xmm15, %xmm1  #  2     0x4  5      OPC=movdqu_xmm_xmm  
  retq                  #  3     0x9  1      OPC=retq            
                                                                 
.size target, .-target
