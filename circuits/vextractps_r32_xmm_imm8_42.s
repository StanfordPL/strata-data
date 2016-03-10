  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode               
.target:                                          #        0    0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label      
  vmovd %xmm10, %eax                              #  2     0x5  4      OPC=vmovd_r32_xmm    
  xorq %rbx, %rbx                                 #  3     0x9  3      OPC=xorq_r64_r64     
  cmovnbl %eax, %ebx                              #  4     0xc  3      OPC=cmovnbl_r32_r32  
  retq                                            #  5     0xf  1      OPC=retq             
                                                                                            
.size target, .-target
