  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64      
  vaddss %xmm1, %xmm1, %xmm3        #  2     0xa   4      OPC=vaddss_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0xe   5      OPC=callq_label         
  decl %ebx                         #  4     0x13  2      OPC=decl_r32            
  cmovnel %r11d, %ebx               #  5     0x15  4      OPC=cmovnel_r32_r32     
  retq                              #  6     0x19  1      OPC=retq                
                                                                                  
.size target, .-target
