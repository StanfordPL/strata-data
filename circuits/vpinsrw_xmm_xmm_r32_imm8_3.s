  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  xorq %rdi, %rdi                    #  1     0     3      OPC=xorq_r64_r64      
  cmovnlel %edi, %ebx                #  2     0x3   3      OPC=cmovnlel_r32_r32  
  vmovupd %xmm2, %xmm1               #  3     0x6   4      OPC=vmovupd_xmm_xmm   
  callq .move_016_008_bx_r8b_r9b     #  4     0xa   5      OPC=callq_label       
  callq .move_r8b_to_byte_6_of_ymm1  #  5     0xf   5      OPC=callq_label       
  callq .move_r9b_to_byte_7_of_ymm1  #  6     0x14  5      OPC=callq_label       
  retq                               #  7     0x19  1      OPC=retq              
                                                                                 
.size target, .-target
