  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode            
.target:                          #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label   
  salq $0x1, %r9                  #  2     0x5   3      OPC=salq_r64_one  
  shlq $0x1, %r8                  #  3     0x8   3      OPC=shlq_r64_one  
  vzeroall                        #  4     0xb   3      OPC=vzeroall      
  salq $0x1, %r8                  #  5     0xe   3      OPC=salq_r64_one  
  salq $0x1, %r9                  #  6     0x11  3      OPC=salq_r64_one  
  callq .move_064_128_r8_r9_xmm1  #  7     0x14  5      OPC=callq_label   
  retq                            #  8     0x19  1      OPC=retq          
                                                                          
.size target, .-target
