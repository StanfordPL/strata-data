  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  movd %ebx, %xmm13    #  1     0    5      OPC=movd_xmm_r32    
  movups %xmm1, %xmm1  #  2     0x5  3      OPC=movups_xmm_xmm  
  movss %xmm13, %xmm1  #  3     0x8  5      OPC=movss_xmm_xmm   
  retq                 #  4     0xd  1      OPC=retq            
                                                                
.size target, .-target
