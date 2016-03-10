  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64   
  callq .move_128_064_xmm1_r12_r13  #  2     0x3   5      OPC=callq_label    
  movzbq %r13b, %r11                #  3     0x8   4      OPC=movzbq_r64_r8  
  addb %bh, %bh                     #  4     0xc   2      OPC=addb_rh_rh     
  xchgb %r11b, %bl                  #  5     0xe   3      OPC=xchgb_r8_r8    
  retq                              #  6     0x11  1      OPC=retq           
                                                                             
.size target, .-target
