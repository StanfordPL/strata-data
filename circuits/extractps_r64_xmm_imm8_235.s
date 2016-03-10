  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x4, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  vmovdqa %xmm1, %xmm3                      #  2     0xa   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0xe   5      OPC=callq_label      
  xaddl %ebx, %r9d                          #  4     0x13  4      OPC=xaddl_r32_r32    
  retq                                      #  5     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
