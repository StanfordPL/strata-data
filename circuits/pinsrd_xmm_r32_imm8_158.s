  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  movd %ebx, %xmm3                   #  1     0     4      OPC=movd_xmm_r32        
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  vmovss %xmm3, %xmm9, %xmm11        #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1             #  4     0xd   5      OPC=unpcklpd_xmm_xmm    
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
