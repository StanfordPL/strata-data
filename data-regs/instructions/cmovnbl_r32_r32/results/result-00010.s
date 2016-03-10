  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  cmovael %ecx, %ebx                 #  1     0     3      OPC=cmovael_r32_r32     
  vmovd %ebx, %xmm6                  #  2     0x3   4      OPC=vmovd_xmm_r32       
  vdivps %xmm6, %xmm6, %xmm1         #  3     0x7   4      OPC=vdivps_xmm_xmm_xmm  
  callq .move_byte_4_of_ymm1_to_r8b  #  4     0xb   5      OPC=callq_label         
  callq .move_r8b_to_byte_7_of_rbx   #  5     0x10  5      OPC=callq_label         
  retq                               #  6     0x15  1      OPC=retq                
                                                                                   
.size target, .-target
