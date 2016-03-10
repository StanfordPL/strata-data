  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovq %xmm1, %xmm11    #  1     0    4      OPC=vmovq_xmm_xmm    
  movlhps %xmm1, %xmm11  #  2     0x4  4      OPC=movlhps_xmm_xmm  
  vmovq %xmm11, %rbx     #  3     0x8  5      OPC=vmovq_r64_xmm    
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
