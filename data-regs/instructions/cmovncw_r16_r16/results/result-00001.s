  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movq $0x5, %rbp   #  1     0     10     OPC=movq_r64_imm64   
  cmovaew %bp, %bx  #  2     0xa   4      OPC=cmovaew_r16_r16  
  cmovnbw %cx, %bx  #  3     0xe   4      OPC=cmovnbw_r16_r16  
  retq              #  4     0x12  1      OPC=retq             
                                                               
.size target, .-target
