  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovd %ebx, %xmm6                   #  1     0     4      OPC=vmovd_xmm_r32    
  vmovupd %xmm6, %xmm1                #  2     0x4   4      OPC=vmovupd_xmm_xmm  
  cmovpel %ecx, %ebx                  #  3     0x8   3      OPC=cmovpel_r32_r32  
  callq .move_byte_12_of_ymm1_to_r9b  #  4     0xb   5      OPC=callq_label      
  callq .move_r9b_to_byte_7_of_rbx    #  5     0x10  5      OPC=callq_label      
  retq                                #  6     0x15  1      OPC=retq             
                                                                                 
.size target, .-target
