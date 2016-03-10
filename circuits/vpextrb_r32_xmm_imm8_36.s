  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x24, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  cmpb %bl, %bl                      #  2     0xa   2      OPC=cmpb_r8_r8      
  setnbe %bh                         #  3     0xc   3      OPC=setnbe_rh       
  callq .move_byte_4_of_ymm1_to_r9b  #  4     0xf   5      OPC=callq_label     
  xchgb %r9b, %bl                    #  5     0x14  3      OPC=xchgb_r8_r8     
  retq                               #  6     0x17  1      OPC=retq            
                                                                               
.size target, .-target
