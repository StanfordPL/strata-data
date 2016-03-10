  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm1         #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label           
  movq $0x2, %rbx                   #  3     0xa   10     OPC=movq_r64_imm64        
  orl %r11d, %ebx                   #  4     0x14  3      OPC=orl_r32_r32           
  xchgl %r11d, %ebx                 #  5     0x17  3      OPC=xchgl_r32_r32         
  retq                              #  6     0x1a  1      OPC=retq                  
                                                                                    
.size target, .-target
