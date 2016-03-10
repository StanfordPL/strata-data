  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP  Bytes  Opcode               
.target:                                        #        0    0      OPC=<label>          
  vmovd %ecx, %xmm1                             #  1     0    4      OPC=vmovd_xmm_r32    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label      
  cmovpol %r10d, %ebx                           #  3     0x9  4      OPC=cmovpol_r32_r32  
  retq                                          #  4     0xd  1      OPC=retq             
                                                                                          
.size target, .-target
