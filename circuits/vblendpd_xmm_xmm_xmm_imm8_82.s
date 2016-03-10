  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label      
  movq $0xfffffffffffffffd, %r9     #  3     0xa   10     OPC=movq_r64_imm64   
  vzeroall                          #  4     0x14  3      OPC=vzeroall         
  shlw $0x1, %r9w                   #  5     0x17  4      OPC=shlw_r16_one     
  cmovngq %r13, %r9                 #  6     0x1b  4      OPC=cmovngq_r64_r64  
  callq .move_064_128_r8_r9_xmm1    #  7     0x1f  5      OPC=callq_label      
  retq                              #  8     0x24  1      OPC=retq             
                                                                               
.size target, .-target
