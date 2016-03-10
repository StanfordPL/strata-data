  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movupd %xmm2, %xmm0    #  1     0    4      OPC=movupd_xmm_xmm    
  vmovddup %xmm3, %xmm1  #  2     0x4  4      OPC=vmovddup_xmm_xmm  
  movhlps %xmm0, %xmm1   #  3     0x8  3      OPC=movhlps_xmm_xmm   
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
