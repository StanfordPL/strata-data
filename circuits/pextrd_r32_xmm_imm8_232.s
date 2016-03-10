  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movq $0x0, %r8                      #  1     0     10     OPC=movq_r64_imm64   
  vmovaps %xmm1, %xmm1                #  2     0xa   4      OPC=vmovaps_xmm_xmm  
  callq .move_r8b_to_byte_23_of_ymm1  #  3     0xe   5      OPC=callq_label      
  vmovd %xmm1, %ebx                   #  4     0x13  4      OPC=vmovd_r32_xmm    
  retq                                #  5     0x17  1      OPC=retq             
                                                                                 
.size target, .-target
