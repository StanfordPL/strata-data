  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0x0, %rbx                 #  1     0     10     OPC=movq_r64_imm64  
  sarb $0x1, %bh                  #  2     0xa   2      OPC=sarb_rh_one     
  callq .move_128_064_xmm1_r8_r9  #  3     0xc   5      OPC=callq_label     
  xaddq %rbx, %r9                 #  4     0x11  4      OPC=xaddq_r64_r64   
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
