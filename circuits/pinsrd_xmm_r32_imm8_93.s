  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  orb %bl, %bl                       #  2     0x5   2      OPC=orb_r8_r8         
  movl %ebx, %ebx                    #  3     0x7   2      OPC=movl_r32_r32      
  vmovd %ebx, %xmm6                  #  4     0x9   4      OPC=vmovd_xmm_r32     
  unpcklps %xmm6, %xmm8              #  5     0xd   4      OPC=unpcklps_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x11  5      OPC=callq_label       
  retq                               #  7     0x16  1      OPC=retq              
                                                                                 
.size target, .-target
