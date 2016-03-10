  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movq $0x3, %rbx                     #  1     0     10     OPC=movq_r64_imm64    
  rolw $0x1, %bx                      #  2     0xa   3      OPC=rolw_r16_one      
  addl %ebx, %ebx                     #  3     0xd   2      OPC=addl_r32_r32      
  unpckhpd %xmm1, %xmm1               #  4     0xf   4      OPC=unpckhpd_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r9b   #  5     0x13  5      OPC=callq_label       
  callq .move_byte_14_of_ymm1_to_r8b  #  6     0x18  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  7     0x1d  5      OPC=callq_label       
  retq                                #  8     0x22  1      OPC=retq              
                                                                                  
.size target, .-target
