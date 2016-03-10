  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vaddps %xmm2, %xmm1, %xmm11  #  1     0    4      OPC=vaddps_xmm_xmm_xmm  
  vmovupd %xmm11, %xmm6        #  2     0x4  5      OPC=vmovupd_xmm_xmm     
  movupd %xmm6, %xmm1          #  3     0x9  4      OPC=movupd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
