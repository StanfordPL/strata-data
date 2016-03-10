  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  unpcklpd %xmm2, %xmm2              #  1     0     4      OPC=unpcklpd_xmm_xmm         
  callq .move_128_064_xmm2_r8_r9     #  2     0x4   5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx    #  3     0x9   5      OPC=callq_label              
  vmovq %rbx, %xmm14                 #  4     0xe   5      OPC=vmovq_xmm_r64            
  vpunpcklqdq %xmm14, %xmm14, %xmm1  #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
