  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label     
  movq $0x1, %rbx                   #  2     0x5   10     OPC=movq_r64_imm64  
  addb %bh, %bh                     #  3     0xf   2      OPC=addb_rh_rh      
  cmovpq %r11, %rbx                 #  4     0x11  4      OPC=cmovpq_r64_r64  
  retq                              #  5     0x15  1      OPC=retq            
                                                                              
.size target, .-target
