  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x40, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  vmovupd %xmm1, %xmm3                          #  2     0xa   4      OPC=vmovupd_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0xe   5      OPC=callq_label      
  xaddl %ebx, %r13d                             #  4     0x13  4      OPC=xaddl_r32_r32    
  retq                                          #  5     0x17  1      OPC=retq             
                                                                                           
.size target, .-target
