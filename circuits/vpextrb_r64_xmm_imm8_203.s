  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  xorq %r9, %r9                       #  1     0     3      OPC=xorq_r64_r64     
  movq $0x3, %rbx                     #  2     0x3   10     OPC=movq_r64_imm64   
  sbbl %ebx, %ebx                     #  3     0xd   2      OPC=sbbl_r32_r32     
  callq .move_byte_11_of_ymm1_to_r9b  #  4     0xf   5      OPC=callq_label      
  cmovaew %r9w, %bx                   #  5     0x14  5      OPC=cmovaew_r16_r16  
  subb %bh, %bh                       #  6     0x19  2      OPC=subb_rh_rh       
  retq                                #  7     0x1b  1      OPC=retq             
                                                                                 
.size target, .-target
